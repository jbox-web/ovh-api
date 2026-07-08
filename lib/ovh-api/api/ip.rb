# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip
      def initialize(connection)
        @connection = connection
      end

      def campus_get
        @connection.call(
          :GET,
          '/ip/campus',
          type: nil,
          auth: []
        )
      end

      def get(campus: nil, description: nil, iam_tags: nil, ip: nil, is_additional_ip: nil, routed_to_service_name: nil, type: nil, version: nil)
        @connection.call(
          :GET,
          '/ip',
          type: nil,
          auth: [],
          query: { 'campus' => campus, 'description' => description, 'iamTags' => iam_tags, 'ip' => ip, 'isAdditionalIp' => is_additional_ip, 'routedTo.serviceName' => routed_to_service_name, 'type' => type, 'version' => version }
        )
      end

      def ip_bring_your_own_ip_aggregate_get(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/bringYourOwnIp/aggregate'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def ip_bring_your_own_ip_aggregate_post(ip:, body:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/bringYourOwnIp/aggregate'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def ip_bring_your_own_ip_slice_get(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/bringYourOwnIp/slice'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def ip_bring_your_own_ip_slice_post(ip:, body:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/bringYourOwnIp/slice'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def ip_change_org_post(ip:, body:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/changeOrg'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def ip_get(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def ip_migration_token_get(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/migrationToken'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def ip_migration_token_post(ip:, body:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/migrationToken'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def ip_move_get(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/move'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def ip_move_post(ip:, ip_ip_move_post_request:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_ip_move_post_request is required' if ip_ip_move_post_request.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/move'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: ip_ip_move_post_request
        )
      end

      def ip_park_post(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/park'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def ip_put(ip:, ip_ip:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_ip is required' if ip_ip.nil?

        @connection.call(
          :PUT,
          '/ip/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: ip_ip
        )
      end

      def ip_ripe_get(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/ripe'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def ip_ripe_put(ip:, ip_ripe_infos:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'ip_ripe_infos is required' if ip_ripe_infos.nil?

        @connection.call(
          :PUT,
          '/ip/{ip}/ripe'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          body: ip_ripe_infos
        )
      end

      def ip_terminate_post(ip:)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :POST,
          '/ip/{ip}/terminate'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
