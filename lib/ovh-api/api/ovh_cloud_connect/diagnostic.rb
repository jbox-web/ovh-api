# frozen_string_literal: true

module Ovh::Api
  module Api
    class OvhCloudConnect::Diagnostic
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, ovhcloudconnect_diagnostic_configuration:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ovhcloudconnect_diagnostic_configuration is required' if ovhcloudconnect_diagnostic_configuration.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/diagnostic'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ovhcloudconnect_diagnostic_configuration
        )
      end

      def get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/diagnostic/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/diagnostic'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
