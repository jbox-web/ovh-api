# frozen_string_literal: true

module Ovh::Api
  module Api
    class Auth::Details
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/auth/details',
          type: nil,
          auth: []
        )
      end
    end
  end
end
