# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Agreements
      def initialize(connection)
        @connection = connection
      end

      def get(agreed: nil, contract_id: nil)
        @connection.call(
          :GET,
          '/me/agreements',
          type: nil,
          auth: [],
          query: { 'agreed' => agreed, 'contractId' => contract_id }
        )
      end

      def id_accept_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/agreements/{id}/accept'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_contract_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/agreements/{id}/contract'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/agreements/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
