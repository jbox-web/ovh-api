# frozen_string_literal: true

module Ovh::Api
  module Api
    class Domain::DsRecord
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, dnssec_update_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dnssec_update_payload is required' if dnssec_update_payload.nil?

        @connection.call(
          :POST,
          '/domain/{serviceName}/dsRecord'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dnssec_update_payload
        )
      end

      def get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/dsRecord/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, flags: nil, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/dsRecord'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'flags' => flags, 'status' => status }
        )
      end
    end
  end
end
