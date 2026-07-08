# frozen_string_literal: true

module Ovh::Api
  module Api
    class Cloud
      def initialize(connection)
        @connection = connection
      end

      def eligibility_get(voucher: nil)
        @connection.call(
          :GET,
          '/cloud/eligibility',
          type: nil,
          auth: [],
          query: { 'voucher' => voucher }
        )
      end
    end
  end
end
