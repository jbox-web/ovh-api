# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Spam
      def initialize(connection)
        @connection = connection
      end

      def get(ip:, ip_spamming:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_spamming is required' if ip_spamming.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/spam/{ipSpamming}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipSpamming}', ERB::Util.url_encode(ip_spamming.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:, state: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/spam'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end

      def stats(from:, ip:, ip_spamming:, to:)
        raise ArgumentError, 'from is required' if from.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_spamming is required' if ip_spamming.nil?
        raise ArgumentError, 'to is required' if to.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/spam/{ipSpamming}/stats'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipSpamming}', ERB::Util.url_encode(ip_spamming.to_s)),
          type: nil,
          auth: [],
          query: { 'from' => from, 'to' => to }
        )
      end

      def unblock(ip:, ip_spamming:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_spamming is required' if ip_spamming.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/spam/{ipSpamming}/unblock'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipSpamming}', ERB::Util.url_encode(ip_spamming.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
