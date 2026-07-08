# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Delegation
      def initialize(connection)
        @connection = connection
      end

      def create(ip:, body:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/delegation'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(ip:, target:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'target is required' if target.nil?

        @connection.call(
          :DELETE,
          '/ip/{ip}/delegation/{target}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{target}', ERB::Util.url_encode(target.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ip:, target:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'target is required' if target.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/delegation/{target}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{target}', ERB::Util.url_encode(target.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/delegation'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
