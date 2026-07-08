# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Voicemail
      def initialize(connection)
        @connection = connection
      end

      def directories(billing_account:, service_name:, dir: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/directories'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'dir' => dir }
        )
      end

      def directories_delete(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/voicemail/{serviceName}/directories/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def directories_download(billing_account:, id:, service_name:, format: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/directories/{id}/download'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'format' => format }
        )
      end

      def directories_get(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/directories/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def directories_move(billing_account:, id:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/voicemail/{serviceName}/directories/{id}/move'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def directories_transcript(billing_account:, format:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'format is required' if format.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/directories/{id}/transcript'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'format' => format }
        )
      end

      def get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def greetings(billing_account:, service_name:, dir: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/greetings'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'dir' => dir }
        )
      end

      def greetings_delete(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/voicemail/{serviceName}/greetings/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def greetings_download(billing_account:, id:, service_name:, format: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/greetings/{id}/download'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'format' => format }
        )
      end

      def greetings_get(billing_account:, id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/greetings/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def greetings_move(billing_account:, id:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/voicemail/{serviceName}/greetings/{id}/move'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def greetings_post(billing_account:, service_name:, telephony_billing_account_voicemail_service_name_greetings_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_voicemail_service_name_greetings_post_request is required' if telephony_billing_account_voicemail_service_name_greetings_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/voicemail/{serviceName}/greetings'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_voicemail_service_name_greetings_post_request
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def migrate_on_new_version(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/voicemail/{serviceName}/migrateOnNewVersion'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def settings(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/settings'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def settings_change_password(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/voicemail/{serviceName}/settings/changePassword'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def settings_change_routing(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/voicemail/{serviceName}/settings/changeRouting'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def settings_put(billing_account:, service_name:, telephony_voicemail_properties:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_voicemail_properties is required' if telephony_voicemail_properties.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/voicemail/{serviceName}/settings'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_voicemail_properties
        )
      end

      def settings_routing(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/settings/routing'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def settings_voicemail_numbers(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/voicemail/{serviceName}/settings/voicemailNumbers'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(billing_account:, service_name:, telephony_voicemail:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_voicemail is required' if telephony_voicemail.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/voicemail/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_voicemail
        )
      end
    end
  end
end
