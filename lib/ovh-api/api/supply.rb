# frozen_string_literal: true

module Ovh::Api
  module Api
    class Supply
      def initialize(connection)
        @connection = connection
      end

      def mondial_relay_post(supply_mondial_relay_post_request:)
        raise ArgumentError, 'supply_mondial_relay_post_request is required' if supply_mondial_relay_post_request.nil?

        @connection.call(
          :POST,
          '/supply/mondialRelay',
          type: nil,
          auth: [],
          body: supply_mondial_relay_post_request
        )
      end
    end
  end
end
