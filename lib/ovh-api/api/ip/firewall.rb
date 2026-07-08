# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Firewall
      def initialize(connection)
        @connection = connection
      end

      def create(ip:, body:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/firewall'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(ip:, ip_on_firewall:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_firewall is required' if ip_on_firewall.nil?

        @connection.call(
          :DELETE,
          '/ip/{ip}/firewall/{ipOnFirewall}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnFirewall}', ERB::Util.url_encode(ip_on_firewall.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ip:, ip_on_firewall:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_firewall is required' if ip_on_firewall.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/firewall/{ipOnFirewall}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnFirewall}', ERB::Util.url_encode(ip_on_firewall.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:, enabled: nil, state: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/firewall'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'enabled' => enabled, 'state' => state }
        )
      end

      def rule(ip:, ip_on_firewall:, state: nil)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_firewall is required' if ip_on_firewall.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/firewall/{ipOnFirewall}/rule'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnFirewall}', ERB::Util.url_encode(ip_on_firewall.to_s)),
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end

      def rule_delete(ip:, ip_on_firewall:, sequence:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_firewall is required' if ip_on_firewall.nil?
        raise ArgumentError, 'sequence is required' if sequence.nil?

        @connection.call(
          :DELETE,
          '/ip/{ip}/firewall/{ipOnFirewall}/rule/{sequence}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnFirewall}', ERB::Util.url_encode(ip_on_firewall.to_s))
            .gsub('{sequence}', ERB::Util.url_encode(sequence.to_s)),
          type: nil,
          auth: []
        )
      end

      def rule_get(ip:, ip_on_firewall:, sequence:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_firewall is required' if ip_on_firewall.nil?
        raise ArgumentError, 'sequence is required' if sequence.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/firewall/{ipOnFirewall}/rule/{sequence}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnFirewall}', ERB::Util.url_encode(ip_on_firewall.to_s))
            .gsub('{sequence}', ERB::Util.url_encode(sequence.to_s)),
          type: nil,
          auth: []
        )
      end

      def rule_post(ip:, ip_on_firewall:, ip_ip_firewall_ip_on_firewall_rule_post_request:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_firewall is required' if ip_on_firewall.nil?
        raise ArgumentError, 'ip_ip_firewall_ip_on_firewall_rule_post_request is required' if ip_ip_firewall_ip_on_firewall_rule_post_request.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/firewall/{ipOnFirewall}/rule'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnFirewall}', ERB::Util.url_encode(ip_on_firewall.to_s)),
          type: nil,
          auth: [],
          body: ip_ip_firewall_ip_on_firewall_rule_post_request
        )
      end

      def update(ip:, ip_on_firewall:, ip_firewall_ip:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_firewall is required' if ip_on_firewall.nil?
        raise ArgumentError, 'ip_firewall_ip is required' if ip_firewall_ip.nil?

        @connection.call(
          :PUT,
          '/ip/{ip}/firewall/{ipOnFirewall}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnFirewall}', ERB::Util.url_encode(ip_on_firewall.to_s)),
          type: nil,
          auth: [],
          body: ip_firewall_ip
        )
      end
    end
  end
end
