# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::LegacyVrack
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/legacyVrack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(legacy_vrack:, service_name:)
        raise ArgumentError, 'legacy_vrack is required' if legacy_vrack.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/legacyVrack/{legacyVrack}'
            .gsub('{legacyVrack}', ERB::Util.url_encode(legacy_vrack.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(legacy_vrack:, service_name:)
        raise ArgumentError, 'legacy_vrack is required' if legacy_vrack.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/legacyVrack/{legacyVrack}'
            .gsub('{legacyVrack}', ERB::Util.url_encode(legacy_vrack.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/legacyVrack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
