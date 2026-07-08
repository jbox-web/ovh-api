# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::License
      def initialize(connection)
        @connection = connection
      end

      def cloud_linux(ip:, ip_address: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/license/cloudLinux'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipAddress' => ip_address }
        )
      end

      def cpanel(ip:, ip_address: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/license/cpanel'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipAddress' => ip_address }
        )
      end

      def directadmin(ip:, ip_address: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/license/directadmin'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipAddress' => ip_address }
        )
      end

      def plesk(ip:, ip_address: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/license/plesk'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipAddress' => ip_address }
        )
      end

      def sqlserver(ip:, ip_address: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/license/sqlserver'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipAddress' => ip_address }
        )
      end

      def virtuozzo(ip:, ip_address: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/license/virtuozzo'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipAddress' => ip_address }
        )
      end

      def windows(ip:, ip_address: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/license/windows'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipAddress' => ip_address }
        )
      end

      def worklight(ip:, ip_address: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/license/worklight'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipAddress' => ip_address }
        )
      end
    end
  end
end
