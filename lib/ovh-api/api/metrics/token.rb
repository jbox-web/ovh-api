# frozen_string_literal: true

module Ovh::Api
  module Api
    class Metrics::Token
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, metrics_token_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'metrics_token_creation is required' if metrics_token_creation.nil?

        @connection.call(
          :POST,
          '/metrics/{serviceName}/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: metrics_token_creation
        )
      end

      def delete(service_name:, token_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'token_id is required' if token_id.nil?

        @connection.call(
          :DELETE,
          '/metrics/{serviceName}/token/{tokenId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{tokenId}', ERB::Util.url_encode(token_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, token_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'token_id is required' if token_id.nil?

        @connection.call(
          :GET,
          '/metrics/{serviceName}/token/{tokenId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{tokenId}', ERB::Util.url_encode(token_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/metrics/{serviceName}/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(service_name:, token_id:, metrics_token_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'token_id is required' if token_id.nil?
        raise ArgumentError, 'metrics_token_update is required' if metrics_token_update.nil?

        @connection.call(
          :PUT,
          '/metrics/{serviceName}/token/{tokenId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{tokenId}', ERB::Util.url_encode(token_id.to_s)),
          type: nil,
          auth: [],
          body: metrics_token_update
        )
      end
    end
  end
end
