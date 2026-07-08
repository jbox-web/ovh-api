# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Reverse
      def initialize(connection)
        @connection = connection
      end

      def create(ip:, ip_ip_reverse_post_request:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_ip_reverse_post_request is required' if ip_ip_reverse_post_request.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/reverse'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: ip_ip_reverse_post_request
        )
      end

      def delete(ip:, ip_reverse:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_reverse is required' if ip_reverse.nil?

        @connection.call(
          :DELETE,
          '/ip/{ip}/reverse/{ipReverse}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipReverse}', ERB::Util.url_encode(ip_reverse.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ip:, ip_reverse:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_reverse is required' if ip_reverse.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/reverse/{ipReverse}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipReverse}', ERB::Util.url_encode(ip_reverse.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/reverse'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
