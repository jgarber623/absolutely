describe Absolutely::URI do
  let(:base_uri) { 'https://example.com' }
  let(:relative_uri) { '/foo' }

  context 'when base is invalid' do
    it 'raises an ArgumentError when not a String' do
      message = 'base must be a String (given NilClass)'

      expect { described_class.new(base: nil, relative: relative_uri) }.to raise_error(Absolutely::ArgumentError, message)
    end

    it 'raises an InvalidURIError when invalid URI' do
      expect { described_class.new(base: 'http:', relative: relative_uri) }.to raise_error(Absolutely::InvalidURIError)
    end

    it 'raises an ArgumentError when not an absolute URI' do
      message = 'base must be an absolute URL (e.g. https://example.com)'

      expect { described_class.new(base: relative_uri, relative: relative_uri) }.to raise_error(Absolutely::ArgumentError, message)
    end

    it 'raises an ArgumentError when a Git URI' do
      message = 'base must be an absolute URL (e.g. https://example.com)'

      expect { described_class.new(base: 'git@github.com/jgarber623/absolutely', relative: relative_uri) }.to raise_error(Absolutely::ArgumentError, message)
    end
  end

  context 'when relative is invalid' do
    it 'raises an ArgumentError when not a String' do
      message = 'relative must be a String (given NilClass)'

      expect { described_class.new(base: base_uri, relative: nil) }.to raise_error(Absolutely::ArgumentError, message)
    end

    it 'raises an InvalidURIError when invalid URI' do
      expect { described_class.new(base: base_uri, relative: 'http:') }.to raise_error(Absolutely::InvalidURIError)
    end
  end
end
