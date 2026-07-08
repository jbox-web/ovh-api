# frozen_string_literal: true

module Ovh::Api
  module Api
    class IpLoadbalancing::Ssl
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, ip_loadbalancing_service_name_ssl_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_ssl_post_request is required' if ip_loadbalancing_service_name_ssl_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/ssl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_ssl_post_request
        )
      end

      def delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/ssl/{id}'
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
          '/ipLoadbalancing/{serviceName}/ssl/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, expire_date: nil, fingerprint: nil, serial: nil, type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/ssl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'expireDate' => expire_date, 'fingerprint' => fingerprint, 'serial' => serial, 'type' => type }
        )
      end

      def update(id:, service_name:, ip_loadbalancing_ssl_ssl:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_ssl_ssl is required' if ip_loadbalancing_ssl_ssl.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/ssl/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_ssl_ssl
        )
      end
    end
  end
end
