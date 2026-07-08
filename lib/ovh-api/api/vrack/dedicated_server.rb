# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::DedicatedServer
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/dedicatedServer'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(dedicated_server:, service_name:)
        raise ArgumentError, 'dedicated_server is required' if dedicated_server.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/dedicatedServer/{dedicatedServer}'
            .gsub('{dedicatedServer}', ERB::Util.url_encode(dedicated_server.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(dedicated_server:, service_name:)
        raise ArgumentError, 'dedicated_server is required' if dedicated_server.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedServer/{dedicatedServer}'
            .gsub('{dedicatedServer}', ERB::Util.url_encode(dedicated_server.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedServer'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def mrtg(dedicated_server:, period:, service_name:, type:)
        raise ArgumentError, 'dedicated_server is required' if dedicated_server.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedServer/{dedicatedServer}/mrtg'
            .gsub('{dedicatedServer}', ERB::Util.url_encode(dedicated_server.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end
    end
  end
end
