# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Ddi
      def initialize(connection)
        @connection = connection
      end

      def change_destination(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/ddi/{serviceName}/changeDestination'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ddi/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/ddi'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(billing_account:, service_name:, telephony_ddi:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_ddi is required' if telephony_ddi.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/ddi/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_ddi
        )
      end
    end
  end
end
