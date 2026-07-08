# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Telephony
      def initialize(connection)
        @connection = connection
      end

      def default_ip_restriction_get
        @connection.call(
          :GET,
          '/me/telephony/defaultIpRestriction',
          type: nil,
          auth: []
        )
      end

      def default_ip_restriction_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/telephony/defaultIpRestriction/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def default_ip_restriction_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/telephony/defaultIpRestriction/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def default_ip_restriction_post(me_telephony_default_ip_restriction_post_request:)
        raise ArgumentError, 'me_telephony_default_ip_restriction_post_request is required' if me_telephony_default_ip_restriction_post_request.nil?

        @connection.call(
          :POST,
          '/me/telephony/defaultIpRestriction',
          type: nil,
          auth: [],
          body: me_telephony_default_ip_restriction_post_request
        )
      end

      def settings_get
        @connection.call(
          :GET,
          '/me/telephony/settings',
          type: nil,
          auth: []
        )
      end

      def settings_post(telephony_settings:)
        raise ArgumentError, 'telephony_settings is required' if telephony_settings.nil?

        @connection.call(
          :POST,
          '/me/telephony/settings',
          type: nil,
          auth: [],
          body: telephony_settings
        )
      end
    end
  end
end
