# frozen_string_literal: true

module Ovh::Api
  module Api
    class Auth::Credential
      def initialize(connection)
        @connection = connection
      end

      def post(auth_api_credential_request_params:)
        raise ArgumentError, 'auth_api_credential_request_params is required' if auth_api_credential_request_params.nil?

        @connection.call(
          :POST,
          '/auth/credential',
          type: nil,
          auth: [],
          body: auth_api_credential_request_params
        )
      end
    end
  end
end
