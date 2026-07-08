# frozen_string_literal: true

module Ovh::Api
  module Api
    class Startup
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/startup',
          type: nil,
          auth: []
        )
      end

      def post(startup_startup:)
        raise ArgumentError, 'startup_startup is required' if startup_startup.nil?

        @connection.call(
          :POST,
          '/startup',
          type: nil,
          auth: [],
          body: startup_startup
        )
      end
    end
  end
end
