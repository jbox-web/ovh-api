# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Deposit
      def initialize(connection)
        @connection = connection
      end

      def deposit_id_details_deposit_detail_id_get(deposit_detail_id:, deposit_id:)
        raise ArgumentError, 'deposit_detail_id is required' if deposit_detail_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/details/{depositDetailId}'
            .gsub('{depositDetailId}', ERB::Util.url_encode(deposit_detail_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_details_get(deposit_id:)
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/details'
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_get(deposit_id:)
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}'
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_bill_id_debt_get(bill_id:, deposit_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills/{billId}/debt'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_bill_id_debt_operation_get(bill_id:, deposit_id:, deposit_order_id: nil)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills/{billId}/debt/operation'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: [],
          query: { 'depositOrderId' => deposit_order_id }
        )
      end

      def deposit_id_paid_bills_bill_id_debt_operation_operation_id_associated_object_get(bill_id:, deposit_id:, operation_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills/{billId}/debt/operation/{operationId}/associatedObject'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_bill_id_debt_operation_operation_id_get(bill_id:, deposit_id:, operation_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills/{billId}/debt/operation/{operationId}'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_bill_id_debt_pay_post(bill_id:, deposit_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :POST,
          '/me/deposit/{depositId}/paidBills/{billId}/debt/pay'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_bill_id_details_bill_detail_id_get(bill_detail_id:, bill_id:, deposit_id:)
        raise ArgumentError, 'bill_detail_id is required' if bill_detail_id.nil?
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills/{billId}/details/{billDetailId}'
            .gsub('{billDetailId}', ERB::Util.url_encode(bill_detail_id.to_s))
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_bill_id_details_get(bill_id:, deposit_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills/{billId}/details'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_bill_id_get(bill_id:, deposit_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills/{billId}'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_bill_id_payment_get(bill_id:, deposit_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills/{billId}/payment'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_paid_bills_get(deposit_id:)
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/paidBills'
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def deposit_id_payment_get(deposit_id:)
        raise ArgumentError, 'deposit_id is required' if deposit_id.nil?

        @connection.call(
          :GET,
          '/me/deposit/{depositId}/payment'
            .gsub('{depositId}', ERB::Util.url_encode(deposit_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(date_from: nil, date_to: nil, order_id: nil)
        @connection.call(
          :GET,
          '/me/deposit',
          type: nil,
          auth: [],
          query: { 'date.from' => date_from, 'date.to' => date_to, 'orderId' => order_id }
        )
      end
    end
  end
end
