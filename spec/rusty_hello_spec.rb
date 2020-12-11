# frozen_string_literal: true

RSpec.describe RustyHello do
  it "has a version number" do
    expect(RustyHello::VERSION).not_to be nil
  end

  describe ".[]" do
    it "returns proper fib number" do
      expect(described_class[7]).to eq 13
    end
  end
end
