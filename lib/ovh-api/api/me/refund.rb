# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Refund
      def initialize(connection)
        @connection = connection
      end

      def export_post(me_bill_export_post_request:)
        raise ArgumentError, 'me_bill_export_post_request is required' if me_bill_export_post_request.nil?

        @connection.call(
          :POST,
          '/me/refund/export',
          type: nil,
          auth: [],
          body: me_bill_export_post_request
        )
      end

      def get(date_from: nil, date_to: nil, order_id: nil)
        @connection.call(
          :GET,
          '/me/refund',
          type: nil,
          auth: [],
          query: { 'date.from' => date_from, 'date.to' => date_to, 'orderId' => order_id }
        )
      end

      def refund_id_details_get(refund_id:)
        raise ArgumentError, 'refund_id is required' if refund_id.nil?

        @connection.call(
          :GET,
          '/me/refund/{refundId}/details'
            .gsub('{refundId}', ERB::Util.url_encode(refund_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def refund_id_details_refund_detail_id_get(refund_detail_id:, refund_id:)
        raise ArgumentError, 'refund_detail_id is required' if refund_detail_id.nil?
        raise ArgumentError, 'refund_id is required' if refund_id.nil?

        @connection.call(
          :GET,
          '/me/refund/{refundId}/details/{refundDetailId}'
            .gsub('{refundDetailId}', ERB::Util.url_encode(refund_detail_id.to_s))
            .gsub('{refundId}', ERB::Util.url_encode(refund_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def refund_id_get(refund_id:)
        raise ArgumentError, 'refund_id is required' if refund_id.nil?

        @connection.call(
          :GET,
          '/me/refund/{refundId}'
            .gsub('{refundId}', ERB::Util.url_encode(refund_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def refund_id_payment_get(refund_id:)
        raise ArgumentError, 'refund_id is required' if refund_id.nil?

        @connection.call(
          :GET,
          '/me/refund/{refundId}/payment'
            .gsub('{refundId}', ERB::Util.url_encode(refund_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
