# frozen_string_literal: true

module Ovh::Api
  module Api
    class MsServices::UpnSuffix
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/upnSuffix'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(service_name:, suffix:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'suffix is required' if suffix.nil?

        @connection.call(
          :DELETE,
          '/msServices/{serviceName}/upnSuffix/{suffix}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{suffix}', ERB::Util.url_encode(suffix.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, suffix:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'suffix is required' if suffix.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/upnSuffix/{suffix}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{suffix}', ERB::Util.url_encode(suffix.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/upnSuffix'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
