# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::OvhAccount
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/me/ovhAccount',
          type: nil,
          auth: []
        )
      end

      def ovh_account_id_credit_order_post(ovh_account_id:, body:)
        raise ArgumentError, 'ovh_account_id is required' if ovh_account_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/ovhAccount/{ovhAccountId}/creditOrder'
            .gsub('{ovhAccountId}', ERB::Util.url_encode(ovh_account_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def ovh_account_id_get(ovh_account_id:)
        raise ArgumentError, 'ovh_account_id is required' if ovh_account_id.nil?

        @connection.call(
          :GET,
          '/me/ovhAccount/{ovhAccountId}'
            .gsub('{ovhAccountId}', ERB::Util.url_encode(ovh_account_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def ovh_account_id_movements_get(ovh_account_id:, date_from: nil, date_to: nil)
        raise ArgumentError, 'ovh_account_id is required' if ovh_account_id.nil?

        @connection.call(
          :GET,
          '/me/ovhAccount/{ovhAccountId}/movements'
            .gsub('{ovhAccountId}', ERB::Util.url_encode(ovh_account_id.to_s)),
          type: nil,
          auth: [],
          query: { 'date.from' => date_from, 'date.to' => date_to }
        )
      end

      def ovh_account_id_movements_movement_id_get(movement_id:, ovh_account_id:)
        raise ArgumentError, 'movement_id is required' if movement_id.nil?
        raise ArgumentError, 'ovh_account_id is required' if ovh_account_id.nil?

        @connection.call(
          :GET,
          '/me/ovhAccount/{ovhAccountId}/movements/{movementId}'
            .gsub('{movementId}', ERB::Util.url_encode(movement_id.to_s))
            .gsub('{ovhAccountId}', ERB::Util.url_encode(ovh_account_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def ovh_account_id_movements_movement_id_request_refund_post(movement_id:, ovh_account_id:, body:)
        raise ArgumentError, 'movement_id is required' if movement_id.nil?
        raise ArgumentError, 'ovh_account_id is required' if ovh_account_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/ovhAccount/{ovhAccountId}/movements/{movementId}/requestRefund'
            .gsub('{movementId}', ERB::Util.url_encode(movement_id.to_s))
            .gsub('{ovhAccountId}', ERB::Util.url_encode(ovh_account_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def ovh_account_id_put(ovh_account_id:, billing_ovh_account:)
        raise ArgumentError, 'ovh_account_id is required' if ovh_account_id.nil?
        raise ArgumentError, 'billing_ovh_account is required' if billing_ovh_account.nil?

        @connection.call(
          :PUT,
          '/me/ovhAccount/{ovhAccountId}'
            .gsub('{ovhAccountId}', ERB::Util.url_encode(ovh_account_id.to_s)),
          type: nil,
          auth: [],
          body: billing_ovh_account
        )
      end

      def ovh_account_id_retrieve_money_post(ovh_account_id:, me_ovh_account_ovh_account_id_retrieve_money_post_request:)
        raise ArgumentError, 'ovh_account_id is required' if ovh_account_id.nil?
        raise ArgumentError, 'me_ovh_account_ovh_account_id_retrieve_money_post_request is required' if me_ovh_account_ovh_account_id_retrieve_money_post_request.nil?

        @connection.call(
          :POST,
          '/me/ovhAccount/{ovhAccountId}/retrieveMoney'
            .gsub('{ovhAccountId}', ERB::Util.url_encode(ovh_account_id.to_s)),
          type: nil,
          auth: [],
          body: me_ovh_account_ovh_account_id_retrieve_money_post_request
        )
      end
    end
  end
end
