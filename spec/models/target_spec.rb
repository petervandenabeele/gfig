require 'spec_helper'

describe Target do
  it 'can be instantiated' do
    described_class.new
  end

  it"should read target data" do
    subject.read_target
  end
end
