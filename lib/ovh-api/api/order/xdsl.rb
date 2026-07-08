# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Xdsl
      def initialize(connection)
        @connection = connection
      end

      def spare_new_get(brand:, quantity:, shipping_contact_id:, mondial_relay_id: nil)
        raise ArgumentError, 'brand is required' if brand.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'shipping_contact_id is required' if shipping_contact_id.nil?

        @connection.call(
          :GET,
          '/order/xdsl/spare/new',
          type: nil,
          auth: [],
          query: { 'brand' => brand, 'mondialRelayId' => mondial_relay_id, 'quantity' => quantity, 'shippingContactId' => shipping_contact_id }
        )
      end

      def spare_new_post(order_telephony_spare_new_post_request:)
        raise ArgumentError, 'order_telephony_spare_new_post_request is required' if order_telephony_spare_new_post_request.nil?

        @connection.call(
          :POST,
          '/order/xdsl/spare/new',
          type: nil,
          auth: [],
          body: order_telephony_spare_new_post_request
        )
      end
    end
  end
end
