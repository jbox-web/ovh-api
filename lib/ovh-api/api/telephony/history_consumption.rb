# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::HistoryConsumption
      def initialize(connection)
        @connection = connection
      end

      def file(billing_account:, date:, extension:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'date is required' if date.nil?
        raise ArgumentError, 'extension is required' if extension.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/historyConsumption/{date}/file'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{date}', ERB::Util.url_encode(date.to_s)),
          type: nil,
          auth: [],
          query: { 'extension' => extension }
        )
      end

      def get(billing_account:, date:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'date is required' if date.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/historyConsumption/{date}'
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
          '/telephony/{billingAccount}/historyConsumption'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
