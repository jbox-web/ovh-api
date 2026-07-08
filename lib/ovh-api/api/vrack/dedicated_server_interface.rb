# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::DedicatedServerInterface
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/dedicatedServerInterface'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(dedicated_server_interface:, service_name:)
        raise ArgumentError, 'dedicated_server_interface is required' if dedicated_server_interface.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/dedicatedServerInterface/{dedicatedServerInterface}'
            .gsub('{dedicatedServerInterface}', ERB::Util.url_encode(dedicated_server_interface.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(dedicated_server_interface:, service_name:)
        raise ArgumentError, 'dedicated_server_interface is required' if dedicated_server_interface.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedServerInterface/{dedicatedServerInterface}'
            .gsub('{dedicatedServerInterface}', ERB::Util.url_encode(dedicated_server_interface.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedServerInterface'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
