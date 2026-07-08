# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Account
      def initialize(connection)
        @connection = connection
      end

      def post(reseller_nichandle:)
        raise ArgumentError, 'reseller_nichandle is required' if reseller_nichandle.nil?

        @connection.call(
          :POST,
          '/me/account',
          type: nil,
          auth: [],
          body: reseller_nichandle
        )
      end
    end
  end
end
