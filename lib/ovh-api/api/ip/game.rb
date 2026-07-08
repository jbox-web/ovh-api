# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Game
      def initialize(connection)
        @connection = connection
      end

      def get(ip:, ip_on_game:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_game is required' if ip_on_game.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/game/{ipOnGame}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnGame}', ERB::Util.url_encode(ip_on_game.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/game'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def rule(ip:, ip_on_game:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_game is required' if ip_on_game.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/game/{ipOnGame}/rule'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnGame}', ERB::Util.url_encode(ip_on_game.to_s)),
          type: nil,
          auth: []
        )
      end

      def rule_delete(id:, ip:, ip_on_game:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_game is required' if ip_on_game.nil?

        @connection.call(
          :DELETE,
          '/ip/{ip}/game/{ipOnGame}/rule/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnGame}', ERB::Util.url_encode(ip_on_game.to_s)),
          type: nil,
          auth: []
        )
      end

      def rule_get(id:, ip:, ip_on_game:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_game is required' if ip_on_game.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/game/{ipOnGame}/rule/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnGame}', ERB::Util.url_encode(ip_on_game.to_s)),
          type: nil,
          auth: []
        )
      end

      def rule_post(ip:, ip_on_game:, ip_ip_game_ip_on_game_rule_post_request:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_game is required' if ip_on_game.nil?
        raise ArgumentError, 'ip_ip_game_ip_on_game_rule_post_request is required' if ip_ip_game_ip_on_game_rule_post_request.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/game/{ipOnGame}/rule'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnGame}', ERB::Util.url_encode(ip_on_game.to_s)),
          type: nil,
          auth: [],
          body: ip_ip_game_ip_on_game_rule_post_request
        )
      end

      def update(ip:, ip_on_game:, ip_game_mitigation:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_on_game is required' if ip_on_game.nil?
        raise ArgumentError, 'ip_game_mitigation is required' if ip_game_mitigation.nil?

        @connection.call(
          :PUT,
          '/ip/{ip}/game/{ipOnGame}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{ipOnGame}', ERB::Util.url_encode(ip_on_game.to_s)),
          type: nil,
          auth: [],
          body: ip_game_mitigation
        )
      end
    end
  end
end
