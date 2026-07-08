# frozen_string_literal: true

module Ovh::Api
  module Api
    class Auth
      def initialize(connection)
        @connection = connection
      end

      def current_credential_get
        @connection.call(
          :GET,
          '/auth/currentCredential',
          type: nil,
          auth: []
        )
      end

      def logout_post
        @connection.call(
          :POST,
          '/auth/logout',
          type: nil,
          auth: []
        )
      end

      def time_get
        @connection.call(
          :GET,
          '/auth/time',
          type: nil,
          auth: []
        )
      end
    end
  end
end
