# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::OvhCloudConnect
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/ovhCloudConnect'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(ovh_cloud_connect:, service_name:)
        raise ArgumentError, 'ovh_cloud_connect is required' if ovh_cloud_connect.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/ovhCloudConnect/{ovhCloudConnect}'
            .gsub('{ovhCloudConnect}', ERB::Util.url_encode(ovh_cloud_connect.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ovh_cloud_connect:, service_name:)
        raise ArgumentError, 'ovh_cloud_connect is required' if ovh_cloud_connect.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ovhCloudConnect/{ovhCloudConnect}'
            .gsub('{ovhCloudConnect}', ERB::Util.url_encode(ovh_cloud_connect.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ovhCloudConnect'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
