require 'spec_helper'

describe Target do
  it 'can be instantiated' do
    described_class.new
  end

  it"should read target data" do
    subject.read_target
  end

  it"read target returns Green, Orange or Red" do
    expect(%w(Green Orange Red).include?(subject.read_target)).to eq true
  end

end
