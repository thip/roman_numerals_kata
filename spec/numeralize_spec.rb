require './numeralize'

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

  context 'given 5' do
    let(:number) { 5 }

    it 'outputs V' do
      expect(subject).to eq('V')
    end
  end

  context 'given 10' do
    let(:number) { 10 }

    it 'outputs X' do
      expect(subject).to eq('X')
    end
  end

  context 'given 6' do
    let(:number) { 6 }

    it 'outputs VI' do
      expect(subject).to eq('VI')
    end
  end

  context 'given 7' do
    let(:number) { 7 }

    it 'outputs VII' do
      expect(subject).to eq('VII')
    end
  end

  context 'given 11' do
    let(:number) { 11 }

    it 'outputs XI' do
      expect(subject).to eq('XI')
    end
  end

  context 'given 19' do
    let(:number) { 19 }

    it 'outputs XIX' do
      expect(subject).to eq('XIX')
    end
  end

  context 'given 50' do
    let(:number) { 50 }

    it 'outputs L' do
      expect(subject).to eq('L')
    end
  end

  context 'given 100' do
    let(:number) { 100 }

    it 'outputs C' do
      expect(subject).to eq('C')
    end
  end

  context 'given 500' do
    let(:number) { 500 }

    it 'outputs D' do
      expect(subject).to eq('D')
    end
  end

  context 'given 1000' do
    let(:number) { 1000 }

    it 'outputs M' do
      expect(subject).to eq('M')
    end
  end

  context 'given 1944' do
    let(:number) { 1944 }

    it 'outputs MCMXLIV' do
      expect(subject).to eq('MCMXLIV')
    end
  end
end
