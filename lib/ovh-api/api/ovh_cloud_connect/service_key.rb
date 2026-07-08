# frozen_string_literal: true

module Ovh::Api
  module Api
    class OvhCloudConnect::ServiceKey
      def initialize(connection)
        @connection = connection
      end

      def get(service_key_id:, service_name:)
        raise ArgumentError, 'service_key_id is required' if service_key_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/serviceKey/{serviceKeyId}'
            .gsub('{serviceKeyId}', ERB::Util.url_encode(service_key_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/serviceKey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def regenerate(service_key_id:, service_name:)
        raise ArgumentError, 'service_key_id is required' if service_key_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/serviceKey/{serviceKeyId}/regenerate'
            .gsub('{serviceKeyId}', ERB::Util.url_encode(service_key_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def send(service_key_id:, service_name:, ovhcloudconnect_to:)
        raise ArgumentError, 'service_key_id is required' if service_key_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ovhcloudconnect_to is required' if ovhcloudconnect_to.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/serviceKey/{serviceKeyId}/send'
            .gsub('{serviceKeyId}', ERB::Util.url_encode(service_key_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ovhcloudconnect_to
        )
      end
    end
  end
end
