# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Ovh::Api::Api::Me::Deposit do
  let(:client) { Ovh::Api::Client.new(base_url: 'https://api.ovh.com/1.0') }

  it 'is reachable and shares the client connection' do
    api = described_class.new(client.connection)
    expect(api).to be_a(described_class)
  end
end
