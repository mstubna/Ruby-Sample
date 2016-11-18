require './sentence_utilities'

RSpec.describe SetenceUtilities, '#reverse' do
  def subject(string)
    utilities = SetenceUtilities.new
    utilities.reverse string
  end

  context 'with nil argument' do
    it 'returns nil' do
      expect(subject(nil)).to be_nil
    end
  end

  context 'with empty string' do
    it 'returns empty string' do
      expect(subject('')).to eq('')
    end
  end

  context 'with one word' do
    it 'returns the word' do
      expect(subject('word')).to eq('word')
    end
  end

  context 'with one word and period' do
    it 'returns the word and then a period' do
      expect(subject('word.')).to eq('word.')
    end
  end

  context 'with two words' do
    it 'returns the words in reverse order' do
      expect(subject('word anotherword')).to eq('anotherword word')
    end
  end

  context 'with two words and a question mark' do
    it 'returns the words in reverse order and a question mark' do
      expect(subject('word anotherword?')).to eq('anotherword word?')
    end
  end

  context "with the sentence 'the big black cat.'" do
    it "returns 'cat black big the.'" do
      expect(subject('the big black cat.')).to eq('cat black big the.')
    end
  end
end
