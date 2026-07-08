# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vps::Ips
      def initialize(connection)
        @connection = connection
      end

      def delete(ip_address:, service_name:)
        raise ArgumentError, 'ip_address is required' if ip_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vps/{serviceName}/ips/{ipAddress}'
            .gsub('{ipAddress}', ERB::Util.url_encode(ip_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ip_address:, service_name:)
        raise ArgumentError, 'ip_address is required' if ip_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/ips/{ipAddress}'
            .gsub('{ipAddress}', ERB::Util.url_encode(ip_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/ips'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(ip_address:, service_name:, vps_ip:)
        raise ArgumentError, 'ip_address is required' if ip_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_ip is required' if vps_ip.nil?

        @connection.call(
          :PUT,
          '/vps/{serviceName}/ips/{ipAddress}'
            .gsub('{ipAddress}', ERB::Util.url_encode(ip_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_ip
        )
      end
    end
  end
end
