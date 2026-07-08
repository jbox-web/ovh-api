# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::Vrack
      def initialize(connection)
        @connection = connection
      end

      def delete(service_name:, vrack:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack is required' if vrack.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/vrack/{vrack}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrack}', ERB::Util.url_encode(vrack.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, vrack:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack is required' if vrack.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/vrack/{vrack}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrack}', ERB::Util.url_encode(vrack.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/vrack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
