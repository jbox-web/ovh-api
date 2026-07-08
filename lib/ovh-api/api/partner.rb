# frozen_string_literal: true

module Ovh::Api
  module Api
    class Partner
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/partner',
          type: nil,
          auth: []
        )
      end

      def post(partner2_partner:)
        raise ArgumentError, 'partner2_partner is required' if partner2_partner.nil?

        @connection.call(
          :POST,
          '/partner',
          type: nil,
          auth: [],
          body: partner2_partner
        )
      end
    end
  end
end
