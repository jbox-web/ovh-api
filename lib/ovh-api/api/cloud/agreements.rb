# frozen_string_literal: true

module Ovh::Api
  module Api
    class Cloud::Agreements
      def initialize(connection)
        @connection = connection
      end

      def get(product:)
        raise ArgumentError, 'product is required' if product.nil?

        @connection.call(
          :GET,
          '/cloud/agreements',
          type: nil,
          auth: [],
          query: { 'product' => product }
        )
      end
    end
  end
end
