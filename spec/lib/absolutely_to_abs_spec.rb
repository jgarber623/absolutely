describe Absolutely, :to_abs do
  ExampleURIs::URI_TESTS.each do |base, relative, result|
    context "when base is #{base} and relative is #{relative}" do
      it 'returns a String' do
        expect(described_class.to_abs(base: base, relative: relative)).to eq(result)
      end
    end
  end
end
