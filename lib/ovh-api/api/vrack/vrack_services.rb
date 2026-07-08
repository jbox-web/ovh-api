# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::VrackServices
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/vrackServices'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(service_name:, vrack_services:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_services is required' if vrack_services.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/vrackServices/{vrackServices}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrackServices}', ERB::Util.url_encode(vrack_services.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, vrack_services:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_services is required' if vrack_services.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/vrackServices/{vrackServices}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrackServices}', ERB::Util.url_encode(vrack_services.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/vrackServices'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
