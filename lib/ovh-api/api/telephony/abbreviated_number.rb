# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::AbbreviatedNumber
      def initialize(connection)
        @connection = connection
      end

      def create(billing_account:, telephony_billing_account_abbreviated_number_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'telephony_billing_account_abbreviated_number_post_request is required' if telephony_billing_account_abbreviated_number_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/abbreviatedNumber'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_abbreviated_number_post_request
        )
      end

      def delete(abbreviated_number:, billing_account:)
        raise ArgumentError, 'abbreviated_number is required' if abbreviated_number.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/abbreviatedNumber/{abbreviatedNumber}'
            .gsub('{abbreviatedNumber}', ERB::Util.url_encode(abbreviated_number.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(abbreviated_number:, billing_account:)
        raise ArgumentError, 'abbreviated_number is required' if abbreviated_number.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/abbreviatedNumber/{abbreviatedNumber}'
            .gsub('{abbreviatedNumber}', ERB::Util.url_encode(abbreviated_number.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/abbreviatedNumber'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(abbreviated_number:, billing_account:, telephony_abbreviated_number_group:)
        raise ArgumentError, 'abbreviated_number is required' if abbreviated_number.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'telephony_abbreviated_number_group is required' if telephony_abbreviated_number_group.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/abbreviatedNumber/{abbreviatedNumber}'
            .gsub('{abbreviatedNumber}', ERB::Util.url_encode(abbreviated_number.to_s))
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: telephony_abbreviated_number_group
        )
      end
    end
  end
end
