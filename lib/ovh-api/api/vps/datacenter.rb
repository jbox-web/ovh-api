# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vps::Datacenter
      def initialize(connection)
        @connection = connection
      end

      def get(country: nil)
        @connection.call(
          :GET,
          '/vps/datacenter',
          type: nil,
          auth: [],
          query: { 'country' => country }
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/datacenter'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
