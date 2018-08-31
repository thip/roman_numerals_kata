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

  it 'outputs XIX given 19' do
    subject = numeralize(19)

    expect(subject).to eq('XIX')
  end

  it 'outputs L given 50' do
    subject = numeralize(50)

    expect(subject).to eq('L')
  end

  it 'outputs C given 100' do
    subject = numeralize(100)

    expect(subject).to eq('C')
  end

  it 'outputs D given 500' do
    subject = numeralize(500)

    expect(subject).to eq('D')
  end

  it 'outputs M given 1000' do
    subject = numeralize(1000)

    expect(subject).to eq('M')
  end

  it 'outputs MCMXLIV given 1944' do
    subject = numeralize(1944)

    expect(subject).to eq('MCMXLIV')
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
