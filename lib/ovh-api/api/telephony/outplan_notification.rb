# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::OutplanNotification
      def initialize(connection)
        @connection = connection
      end

      def create(billing_account:, telephony_billing_account_outplan_notification_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'telephony_billing_account_outplan_notification_post_request is required' if telephony_billing_account_outplan_notification_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/outplanNotification'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_outplan_notification_post_request
        )
      end

      def delete(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/outplanNotification/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/outplanNotification/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/outplanNotification'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
