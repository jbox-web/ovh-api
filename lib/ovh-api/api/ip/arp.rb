# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Arp
      def initialize(connection)
        @connection = connection
      end

      def get(ip:, ip_blocked:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_blocked is required' if ip_blocked.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/arp/{ipBlocked}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipBlocked}', ERB::Util.url_encode(ip_blocked.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:, state: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/arp'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end

      def unblock(ip:, ip_blocked:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_blocked is required' if ip_blocked.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/arp/{ipBlocked}/unblock'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipBlocked}', ERB::Util.url_encode(ip_blocked.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
