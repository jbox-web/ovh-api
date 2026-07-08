# frozen_string_literal: true

module Ovh::Api
  module Api
    class OverTheBox::Devices
      def initialize(connection)
        @connection = connection
      end

      def post
        @connection.call(
          :POST,
          '/overTheBox/devices',
          type: nil,
          auth: []
        )
      end
    end
  end
end
