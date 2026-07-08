# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::DownPaymentInvoice
      def initialize(connection)
        @connection = connection
      end

      def down_payment_invoice_id_debt_get(down_payment_invoice_id:)
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}/debt'
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def down_payment_invoice_id_debt_operation_get(down_payment_invoice_id:, deposit_order_id: nil)
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}/debt/operation'
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s)),
          type: nil,
          auth: [],
          query: { 'depositOrderId' => deposit_order_id }
        )
      end

      def down_payment_invoice_id_debt_operation_operation_id_associated_object_get(down_payment_invoice_id:, operation_id:)
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}/debt/operation/{operationId}/associatedObject'
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def down_payment_invoice_id_debt_operation_operation_id_get(down_payment_invoice_id:, operation_id:)
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}/debt/operation/{operationId}'
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def down_payment_invoice_id_debt_pay_post(down_payment_invoice_id:)
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?

        @connection.call(
          :POST,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}/debt/pay'
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def down_payment_invoice_id_details_down_payment_invoice_detail_id_get(down_payment_invoice_detail_id:, down_payment_invoice_id:)
        raise ArgumentError, 'down_payment_invoice_detail_id is required' if down_payment_invoice_detail_id.nil?
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}/details/{downPaymentInvoiceDetailId}'
            .gsub('{downPaymentInvoiceDetailId}', ERB::Util.url_encode(down_payment_invoice_detail_id.to_s))
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def down_payment_invoice_id_details_get(down_payment_invoice_id:)
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}/details'
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def down_payment_invoice_id_get(down_payment_invoice_id:)
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}'
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def down_payment_invoice_id_payment_get(down_payment_invoice_id:)
        raise ArgumentError, 'down_payment_invoice_id is required' if down_payment_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/downPaymentInvoice/{downPaymentInvoiceId}/payment'
            .gsub('{downPaymentInvoiceId}', ERB::Util.url_encode(down_payment_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(category: nil, date_from: nil, date_to: nil, order_id: nil)
        @connection.call(
          :GET,
          '/me/downPaymentInvoice',
          type: nil,
          auth: [],
          query: { 'category' => category, 'date.from' => date_from, 'date.to' => date_to, 'orderId' => order_id }
        )
      end
    end
  end
end
