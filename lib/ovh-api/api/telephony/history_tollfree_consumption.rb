# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::HistoryTollfreeConsumption
      def initialize(connection)
        @connection = connection
      end

      def document(billing_account:, date:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'date is required' if date.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/historyTollfreeConsumption/{date}/document'
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
          '/telephony/{billingAccount}/historyTollfreeConsumption/{date}'
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
          '/telephony/{billingAccount}/historyTollfreeConsumption'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
