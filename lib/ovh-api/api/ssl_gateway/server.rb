# frozen_string_literal: true

module Ovh::Api
  module Api
    class SslGateway::Server
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, ssl_gateway_service_name_server_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ssl_gateway_service_name_server_post_request is required' if ssl_gateway_service_name_server_post_request.nil?

        @connection.call(
          :POST,
          '/sslGateway/{serviceName}/server'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ssl_gateway_service_name_server_post_request
        )
      end

      def delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sslGateway/{serviceName}/server/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sslGateway/{serviceName}/server/{id}'
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
          '/sslGateway/{serviceName}/server'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(id:, service_name:, ssl_gateway_server:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ssl_gateway_server is required' if ssl_gateway_server.nil?

        @connection.call(
          :PUT,
          '/sslGateway/{serviceName}/server/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ssl_gateway_server
        )
      end
    end
  end
end
