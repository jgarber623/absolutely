describe Absolutely, '.to_absolute_uri' do
  examples = [
    ['https://example.com', '/foo', 'https://example.com/foo'],
    ['https://example.com/', '/foo', 'https://example.com/foo'],
    ['https://example.com/foo', 'bar', 'https://example.com/bar'],
    ['https://example.com/foo/', 'bar', 'https://example.com/foo/bar'],
    ['https://example.com/foo/bar', '../biz', 'https://example.com/biz'],
    ['https://example.com/foo/bar', '../../../../biz', 'https://example.com/biz'],
    ['https://example.com', '/foo?query=bar', 'https://example.com/foo?query=bar'],
    ['https://example.com', '?query=bar', 'https://example.com?query=bar'],
    ['https://🔥💀.com', '/🚜', 'https://🔥💀.com/🚜']
  ]

  examples.each do |base, relative, result|
    context "when base is #{base} and relative is #{relative}" do
      it 'returns a string' do
        expect(Absolutely.to_absolute_uri(base: base, relative: relative)).to eq(result)
      end
    end
  end
end
