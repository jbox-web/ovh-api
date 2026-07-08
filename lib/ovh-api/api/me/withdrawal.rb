# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Withdrawal
      def initialize(connection)
        @connection = connection
      end

      def get(date_from: nil, date_to: nil, order_id: nil)
        @connection.call(
          :GET,
          '/me/withdrawal',
          type: nil,
          auth: [],
          query: { 'date.from' => date_from, 'date.to' => date_to, 'orderId' => order_id }
        )
      end

      def withdrawal_id_details_get(withdrawal_id:)
        raise ArgumentError, 'withdrawal_id is required' if withdrawal_id.nil?

        @connection.call(
          :GET,
          '/me/withdrawal/{withdrawalId}/details'
            .gsub('{withdrawalId}', ERB::Util.url_encode(withdrawal_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def withdrawal_id_details_withdrawal_detail_id_get(withdrawal_detail_id:, withdrawal_id:)
        raise ArgumentError, 'withdrawal_detail_id is required' if withdrawal_detail_id.nil?
        raise ArgumentError, 'withdrawal_id is required' if withdrawal_id.nil?

        @connection.call(
          :GET,
          '/me/withdrawal/{withdrawalId}/details/{withdrawalDetailId}'
            .gsub('{withdrawalDetailId}', ERB::Util.url_encode(withdrawal_detail_id.to_s))
            .gsub('{withdrawalId}', ERB::Util.url_encode(withdrawal_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def withdrawal_id_get(withdrawal_id:)
        raise ArgumentError, 'withdrawal_id is required' if withdrawal_id.nil?

        @connection.call(
          :GET,
          '/me/withdrawal/{withdrawalId}'
            .gsub('{withdrawalId}', ERB::Util.url_encode(withdrawal_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def withdrawal_id_payment_get(withdrawal_id:)
        raise ArgumentError, 'withdrawal_id is required' if withdrawal_id.nil?

        @connection.call(
          :GET,
          '/me/withdrawal/{withdrawalId}/payment'
            .gsub('{withdrawalId}', ERB::Util.url_encode(withdrawal_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
