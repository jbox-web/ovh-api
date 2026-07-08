# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Credit
      def initialize(connection)
        @connection = connection
      end

      def balance_balance_name_get(balance_name:)
        raise ArgumentError, 'balance_name is required' if balance_name.nil?

        @connection.call(
          :GET,
          '/me/credit/balance/{balanceName}'
            .gsub('{balanceName}', ERB::Util.url_encode(balance_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def balance_balance_name_movement_get(balance_name:)
        raise ArgumentError, 'balance_name is required' if balance_name.nil?

        @connection.call(
          :GET,
          '/me/credit/balance/{balanceName}/movement'
            .gsub('{balanceName}', ERB::Util.url_encode(balance_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def balance_balance_name_movement_movement_id_get(balance_name:, movement_id:)
        raise ArgumentError, 'balance_name is required' if balance_name.nil?
        raise ArgumentError, 'movement_id is required' if movement_id.nil?

        @connection.call(
          :GET,
          '/me/credit/balance/{balanceName}/movement/{movementId}'
            .gsub('{balanceName}', ERB::Util.url_encode(balance_name.to_s))
            .gsub('{movementId}', ERB::Util.url_encode(movement_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def balance_get(type: nil)
        @connection.call(
          :GET,
          '/me/credit/balance',
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def code_post(me_credit_code_redeem:)
        raise ArgumentError, 'me_credit_code_redeem is required' if me_credit_code_redeem.nil?

        @connection.call(
          :POST,
          '/me/credit/code',
          type: nil,
          auth: [],
          body: me_credit_code_redeem
        )
      end
    end
  end
end
