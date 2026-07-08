# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Bill
      def initialize(connection)
        @connection = connection
      end

      def bill_id_debt_get(bill_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?

        @connection.call(
          :GET,
          '/me/bill/{billId}/debt'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def bill_id_debt_operation_get(bill_id:, deposit_order_id: nil)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?

        @connection.call(
          :GET,
          '/me/bill/{billId}/debt/operation'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s)),
          type: nil,
          auth: [],
          query: { 'depositOrderId' => deposit_order_id }
        )
      end

      def bill_id_debt_operation_operation_id_associated_object_get(bill_id:, operation_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/bill/{billId}/debt/operation/{operationId}/associatedObject'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def bill_id_debt_operation_operation_id_get(bill_id:, operation_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/bill/{billId}/debt/operation/{operationId}'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def bill_id_debt_pay_post(bill_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?

        @connection.call(
          :POST,
          '/me/bill/{billId}/debt/pay'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def bill_id_details_bill_detail_id_get(bill_detail_id:, bill_id:)
        raise ArgumentError, 'bill_detail_id is required' if bill_detail_id.nil?
        raise ArgumentError, 'bill_id is required' if bill_id.nil?

        @connection.call(
          :GET,
          '/me/bill/{billId}/details/{billDetailId}'
            .gsub('{billDetailId}', ERB::Util.url_encode(bill_detail_id.to_s))
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def bill_id_details_get(bill_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?

        @connection.call(
          :GET,
          '/me/bill/{billId}/details'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def bill_id_get(bill_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?

        @connection.call(
          :GET,
          '/me/bill/{billId}'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def bill_id_payment_get(bill_id:)
        raise ArgumentError, 'bill_id is required' if bill_id.nil?

        @connection.call(
          :GET,
          '/me/bill/{billId}/payment'
            .gsub('{billId}', ERB::Util.url_encode(bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def export_post(me_bill_export_post_request:)
        raise ArgumentError, 'me_bill_export_post_request is required' if me_bill_export_post_request.nil?

        @connection.call(
          :POST,
          '/me/bill/export',
          type: nil,
          auth: [],
          body: me_bill_export_post_request
        )
      end

      def get(category: nil, date_from: nil, date_to: nil, order_id: nil)
        @connection.call(
          :GET,
          '/me/bill',
          type: nil,
          auth: [],
          query: { 'category' => category, 'date.from' => date_from, 'date.to' => date_to, 'orderId' => order_id }
        )
      end
    end
  end
end
