# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Freefax
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/order/freefax',
          type: nil,
          auth: []
        )
      end

      def new_get(quantity:)
        raise ArgumentError, 'quantity is required' if quantity.nil?

        @connection.call(
          :GET,
          '/order/freefax/new',
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def new_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/freefax/new',
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_convert_to_voicefax_get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/freefax/{serviceName}/convertToVoicefax'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'billingAccount' => billing_account }
        )
      end

      def service_name_convert_to_voicefax_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/freefax/{serviceName}/convertToVoicefax'
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
          '/order/freefax/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
