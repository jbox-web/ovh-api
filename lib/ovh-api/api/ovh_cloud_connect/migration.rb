# frozen_string_literal: true

module Ovh::Api
  module Api
    class OvhCloudConnect::Migration
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/migration'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/migration'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
