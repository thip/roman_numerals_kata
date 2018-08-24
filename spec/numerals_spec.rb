require './numeral'

describe 'numeralize' do 

  subject {numeralize(number)}


  context 'given 1' do
    let(:number) { 1 }

    it 'outputs I' do
      expect(subject).to eq('I')
    end
  end

  context 'given 2' do
    let(:number) { 2 }

    it 'outputs II' do
      expect(subject).to eq('II')
    end
  end

  it 'outputs V given 5' do
    subject = numeralize(5)

    expect(subject).to eq('V')
  end

  it 'outputs X given 10' do
    subject = numeralize(10)

    expect(subject).to eq('X')
  end

  it 'outputs VI given 6' do
    subject = numeralize(6)

    expect(subject).to eq('VI')
  end

  it 'outputs VII given 7' do
    subject = numeralize(7)

    expect(subject).to eq('VII')
  end

  it 'outputs XI given 11' do
    subject = numeralize(11)

    expect(subject).to eq('XI')
  end
end

xdescribe 'extract_numeral' do
  it 'returns a string given a numeral, value and number' do
    numeral = 'V'
    value = 5
    number = 10

    subject = extract_numeral(numeral, value, number)

    expect(subject).to be_a(String)
  end

  it 'returns a string containing the numeral given a number larger than the value' do
    numeral = 'V'
    value = 5
    number = 10

    subject = extract_numeral(numeral, value, number)

    expect(subject).to include(numeral)
  end
end
