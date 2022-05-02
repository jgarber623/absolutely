# frozen_string_literal: true

RSpec.describe Absolutely::URI, :inspect do
  let(:options) do
    {
      base: 'https://example.com',
      relative: '/foo'
    }
  end

  it 'returns a String' do
    expect(described_class.new(**options).inspect).to match(/^#<Absolutely::URI:.* base: ".*", relative: ".*">$/)
  end
end
