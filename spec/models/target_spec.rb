require 'spec_helper'

describe Target do
  it 'can be instantiated' do
    described_class.new
  end

  it "should read target data" do
    subject.read_target
  end

  it "read target returns Green, Orange or Red" do
    expect(%w(Green Orange Red).include?(subject.read_target)).to eq true
  end

  it 'reads air_quality' do
    expect(subject.read_air_quality).to be_present
  end

  it 'reads fijnstof 2.5 um' do
    expect(subject.read_fijnstof_2_5pm.to_i).to be > 0
  end

  it 'reads wind_speed' do
    expect(subject.read_wind_speed.to_i).to be > 0
  end

  # This test will fail at zero degrees C  ... Duh
  it 'reads temperature' do
    expect(subject.read_temperature.to_i).to be > 0
  end

end
