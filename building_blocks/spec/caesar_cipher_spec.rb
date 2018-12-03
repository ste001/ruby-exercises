require '../caesar_cipher'

describe "#caesar_cipher" do
  it "return a shifted string in a normal case" do
    expect(caesar_cipher('dog in a cat', 2)).to eql('fqi kp c ecv')
  end
  it "return the same string with shift 0" do
    expect(caesar_cipher('What a monster', 0)).to eql('What a monster')
  end
  it "works with every type of punctuation" do
    expect(caesar_cipher('I was, so close- and then it happened.', 3)).to eql\
    ('L zdv, vr forvh- dqg wkhq lw kdsshqhg.')
  end
  it "wraps around the alphabet" do
    expect(caesar_cipher('Tuna is saucy', 10)).to eql('Dexk sc ckemi')
  end
  it "letterless strings return the same, even with an high shift" do
    expect(caesar_cipher('???.../"!"', 100)).to eql('???.../"!"')
  end
  it "numbers are ignored" do
    expect(caesar_cipher('Number 39510 dog', 2)).to eql('Pwodgt 39510 fqi')
  end
  it "wraps around the alphabet multiple times" do
    expect(caesar_cipher("What a day", 63)).to eql('Hsle l olj')
  end
end