# frozen_string_literal: true

module Ovh::Api
  module Api
    class Freefax::Voicemail
      def initialize(connection)
        @connection = connection
      end

      def bulk_update(service_name:, telephony_voicemail_properties:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_voicemail_properties is required' if telephony_voicemail_properties.nil?

        @connection.call(
          :PUT,
          '/freefax/{serviceName}/voicemail'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_voicemail_properties
        )
      end

      def change_password(service_name:, telephony_voicemail_change_password:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_voicemail_change_password is required' if telephony_voicemail_change_password.nil?

        @connection.call(
          :POST,
          '/freefax/{serviceName}/voicemail/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_voicemail_change_password
        )
      end

      def change_routing(service_name:, telephony_voicemail_change_routing:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_voicemail_change_routing is required' if telephony_voicemail_change_routing.nil?

        @connection.call(
          :POST,
          '/freefax/{serviceName}/voicemail/changeRouting'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_voicemail_change_routing
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}/voicemail'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def routing(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}/voicemail/routing'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def voicemail_numbers(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/freefax/{serviceName}/voicemail/voicemailNumbers'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
