require 'spec_helper'

describe Vcr do

let(:vcr1) { Vcr.new("hello") }
let(:vcr2) { Vcr.new(7) }

  it 'length check' do
    expect(vcr1.length).to eq 5
  end

  it 'strip check' do
    expect(vcr1.strip_value(" ")).to eq ("hello")
  end    

  it 'playback check' do
    expect(vcr1.length).to eq 5
    expect(vcr1.strip_value(" ")).to eq ("hello")
    expect(vcr1.length).to eq 5
    expect(vcr1.playback).to eq ([5, "hello", 5])
  end    

end