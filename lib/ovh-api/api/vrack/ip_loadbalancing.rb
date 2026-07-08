# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::IpLoadbalancing
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/ipLoadbalancing'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(ip_loadbalancing:, service_name:)
        raise ArgumentError, 'ip_loadbalancing is required' if ip_loadbalancing.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/ipLoadbalancing/{ipLoadbalancing}'
            .gsub('{ipLoadbalancing}', ERB::Util.url_encode(ip_loadbalancing.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ip_loadbalancing:, service_name:)
        raise ArgumentError, 'ip_loadbalancing is required' if ip_loadbalancing.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ipLoadbalancing/{ipLoadbalancing}'
            .gsub('{ipLoadbalancing}', ERB::Util.url_encode(ip_loadbalancing.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ipLoadbalancing'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
