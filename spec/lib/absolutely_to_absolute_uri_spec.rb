describe Absolutely, '.to_absolute_uri' do
  ExampleURIs::URI_TESTS.each do |base, relative, result|
    context "when base is #{base} and relative is #{relative}" do
      it 'returns a string' do
        expect(Absolutely.to_absolute_uri(base: base, relative: relative)).to eq(result)
      end
    end
  end
end
