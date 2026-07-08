# frozen_string_literal: true

module Ovh::Api
  module Api
    class IpLoadbalancing::Quota
      def initialize(connection)
        @connection = connection
      end

      def get(service_name:, zone:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'zone is required' if zone.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/quota/{zone}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{zone}', ERB::Util.url_encode(zone.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/quota'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(service_name:, zone:, ip_loadbalancing_quota_quota:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'zone is required' if zone.nil?
        raise ArgumentError, 'ip_loadbalancing_quota_quota is required' if ip_loadbalancing_quota_quota.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/quota/{zone}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{zone}', ERB::Util.url_encode(zone.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_quota_quota
        )
      end
    end
  end
end
