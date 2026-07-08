# frozen_string_literal: true

module Ovh::Api
  module Api
    class Auth::Token
      def initialize(connection)
        @connection = connection
      end

      def post
        @connection.call(
          :POST,
          '/auth/token',
          type: nil,
          auth: []
        )
      end
    end
  end
end
