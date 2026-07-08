# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::OfferTask
      def initialize(connection)
        @connection = connection
      end

      def get(billing_account:, task_id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/offerTask/{taskId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:, action: nil, status: nil, type: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/offerTask'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'action' => action, 'status' => status, 'type' => type }
        )
      end

      def update(billing_account:, task_id:, telephony_offer_task:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'telephony_offer_task is required' if telephony_offer_task.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/offerTask/{taskId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: telephony_offer_task
        )
      end
    end
  end
end
