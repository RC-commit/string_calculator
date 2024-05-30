require_relative '../calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add("5, 2")).to eq(7)
    end

    it 'returns 0 if string is empty' do
      calculator = Calculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number itself if only numbers are present in string' do
      calculator = Calculator.new
      expect(calculator.add('123')).to eq(123)
    end

    it 'returns sum of numbers if multiple number are present delimited by comma or new line' do
      calculator = Calculator.new
      expect(calculator.add('1,2,3')).to eq(6)
      expect(calculator.add("1, 2\n3")).to eq(6)
    end

    it 'returns sum of numbers when delimiter is changed' do
      calculator = Calculator.new
      expect(calculator.add('\\n1;2;3')).to eq(6)
    end

    it 'should raise an exception for negative numbers' do
      calculator = Calculator.new
      expect { calculator.add("-1,2,3") }.to raise_error StandardError
    end
  end
end
