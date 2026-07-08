# frozen_string_literal: true

module Ovh::Api
  module Api
    class Secret
      def initialize(connection)
        @connection = connection
      end

      def retrieve_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/secret/retrieve',
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
