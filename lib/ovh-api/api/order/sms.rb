# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Sms
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/order/sms',
          type: nil,
          auth: []
        )
      end

      def new_get(quantity:, channel: nil, smpp: nil)
        raise ArgumentError, 'quantity is required' if quantity.nil?

        @connection.call(
          :GET,
          '/order/sms/new',
          type: nil,
          auth: [],
          query: { 'channel' => channel, 'quantity' => quantity, 'smpp' => smpp }
        )
      end

      def new_post(order_sms_new_post_request:)
        raise ArgumentError, 'order_sms_new_post_request is required' if order_sms_new_post_request.nil?

        @connection.call(
          :POST,
          '/order/sms/new',
          type: nil,
          auth: [],
          body: order_sms_new_post_request
        )
      end

      def service_name_credits_get(quantity:, service_name:)
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/sms/{serviceName}/credits'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def service_name_credits_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/sms/{serviceName}/credits'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/sms/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
