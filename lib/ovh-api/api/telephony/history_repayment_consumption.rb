# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::HistoryRepaymentConsumption
      def initialize(connection)
        @connection = connection
      end

      def create(billing_account:, body: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/historyRepaymentConsumption'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def document(billing_account:, date:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'date is required' if date.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/historyRepaymentConsumption/{date}/document'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{date}', ERB::Util.url_encode(date.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(billing_account:, date:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'date is required' if date.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/historyRepaymentConsumption/{date}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{date}', ERB::Util.url_encode(date.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/historyRepaymentConsumption'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
