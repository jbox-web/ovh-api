# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Task
      def initialize(connection)
        @connection = connection
      end

      def get(billing_account:, task_id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/task/{taskId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:, action: nil, service_type: nil, status: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/task'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'action' => action, 'serviceType' => service_type, 'status' => status }
        )
      end
    end
  end
end
