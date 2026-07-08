# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::ReverseBill
      def initialize(connection)
        @connection = connection
      end

      def get(date_from: nil, date_to: nil, order_id: nil)
        @connection.call(
          :GET,
          '/me/reverseBill',
          type: nil,
          auth: [],
          query: { 'date.from' => date_from, 'date.to' => date_to, 'orderId' => order_id }
        )
      end

      def reverse_bill_id_details_get(reverse_bill_id:)
        raise ArgumentError, 'reverse_bill_id is required' if reverse_bill_id.nil?

        @connection.call(
          :GET,
          '/me/reverseBill/{reverseBillId}/details'
            .gsub('{reverseBillId}', ERB::Util.url_encode(reverse_bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def reverse_bill_id_details_reverse_bill_detail_id_get(reverse_bill_detail_id:, reverse_bill_id:)
        raise ArgumentError, 'reverse_bill_detail_id is required' if reverse_bill_detail_id.nil?
        raise ArgumentError, 'reverse_bill_id is required' if reverse_bill_id.nil?

        @connection.call(
          :GET,
          '/me/reverseBill/{reverseBillId}/details/{reverseBillDetailId}'
            .gsub('{reverseBillDetailId}', ERB::Util.url_encode(reverse_bill_detail_id.to_s))
            .gsub('{reverseBillId}', ERB::Util.url_encode(reverse_bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def reverse_bill_id_get(reverse_bill_id:)
        raise ArgumentError, 'reverse_bill_id is required' if reverse_bill_id.nil?

        @connection.call(
          :GET,
          '/me/reverseBill/{reverseBillId}'
            .gsub('{reverseBillId}', ERB::Util.url_encode(reverse_bill_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def reverse_bill_id_payment_get(reverse_bill_id:)
        raise ArgumentError, 'reverse_bill_id is required' if reverse_bill_id.nil?

        @connection.call(
          :GET,
          '/me/reverseBill/{reverseBillId}/payment'
            .gsub('{reverseBillId}', ERB::Util.url_encode(reverse_bill_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
