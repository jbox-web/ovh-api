# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Mitigation
      def initialize(connection)
        @connection = connection
      end

      def create(ip:, body:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/mitigation'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(ip:, ip_on_mitigation:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_mitigation is required' if ip_on_mitigation.nil?

        @connection.call(
          :DELETE,
          '/ip/{ip}/mitigation/{ipOnMitigation}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnMitigation}', ERB::Util.url_encode(ip_on_mitigation.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ip:, ip_on_mitigation:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_mitigation is required' if ip_on_mitigation.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/mitigation/{ipOnMitigation}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnMitigation}', ERB::Util.url_encode(ip_on_mitigation.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:, auto: nil, state: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/mitigation'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'auto' => auto, 'state' => state }
        )
      end

      def update(ip:, ip_on_mitigation:, ip_mitigation_ip:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_mitigation is required' if ip_on_mitigation.nil?
        raise ArgumentError, 'ip_mitigation_ip is required' if ip_mitigation_ip.nil?

        @connection.call(
          :PUT,
          '/ip/{ip}/mitigation/{ipOnMitigation}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnMitigation}', ERB::Util.url_encode(ip_on_mitigation.to_s)),
          type: nil,
          auth: [],
          body: ip_mitigation_ip
        )
      end
    end
  end
end
