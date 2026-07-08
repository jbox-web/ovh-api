# frozen_string_literal: true

module Ovh::Api
  module Api
    class Metrics::Consumption
      def initialize(connection)
        @connection = connection
      end

      def list(service_name:, duration: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/metrics/{serviceName}/consumption'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'duration' => duration }
        )
      end
    end
  end
end
