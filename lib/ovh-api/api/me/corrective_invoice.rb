# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::CorrectiveInvoice
      def initialize(connection)
        @connection = connection
      end

      def corrective_invoice_id_debt_get(corrective_invoice_id:)
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/correctiveInvoice/{correctiveInvoiceId}/debt'
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def corrective_invoice_id_debt_operation_get(corrective_invoice_id:, deposit_order_id: nil)
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/correctiveInvoice/{correctiveInvoiceId}/debt/operation'
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s)),
          type: nil,
          auth: [],
          query: { 'depositOrderId' => deposit_order_id }
        )
      end

      def corrective_invoice_id_debt_operation_operation_id_associated_object_get(corrective_invoice_id:, operation_id:)
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/correctiveInvoice/{correctiveInvoiceId}/debt/operation/{operationId}/associatedObject'
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def corrective_invoice_id_debt_operation_operation_id_get(corrective_invoice_id:, operation_id:)
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?
        raise ArgumentError, 'operation_id is required' if operation_id.nil?

        @connection.call(
          :GET,
          '/me/correctiveInvoice/{correctiveInvoiceId}/debt/operation/{operationId}'
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s))
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def corrective_invoice_id_debt_pay_post(corrective_invoice_id:)
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?

        @connection.call(
          :POST,
          '/me/correctiveInvoice/{correctiveInvoiceId}/debt/pay'
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def corrective_invoice_id_details_corrective_invoice_detail_id_get(corrective_invoice_detail_id:, corrective_invoice_id:)
        raise ArgumentError, 'corrective_invoice_detail_id is required' if corrective_invoice_detail_id.nil?
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/correctiveInvoice/{correctiveInvoiceId}/details/{correctiveInvoiceDetailId}'
            .gsub('{correctiveInvoiceDetailId}', ERB::Util.url_encode(corrective_invoice_detail_id.to_s))
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def corrective_invoice_id_details_get(corrective_invoice_id:)
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/correctiveInvoice/{correctiveInvoiceId}/details'
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def corrective_invoice_id_get(corrective_invoice_id:)
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/correctiveInvoice/{correctiveInvoiceId}'
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def corrective_invoice_id_payment_get(corrective_invoice_id:)
        raise ArgumentError, 'corrective_invoice_id is required' if corrective_invoice_id.nil?

        @connection.call(
          :GET,
          '/me/correctiveInvoice/{correctiveInvoiceId}/payment'
            .gsub('{correctiveInvoiceId}', ERB::Util.url_encode(corrective_invoice_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(category: nil, date_from: nil, date_to: nil, order_id: nil)
        @connection.call(
          :GET,
          '/me/correctiveInvoice',
          type: nil,
          auth: [],
          query: { 'category' => category, 'date.from' => date_from, 'date.to' => date_to, 'orderId' => order_id }
        )
      end
    end
  end
end
