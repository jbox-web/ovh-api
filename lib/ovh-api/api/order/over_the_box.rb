# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::OverTheBox
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/order/overTheBox',
          type: nil,
          auth: []
        )
      end

      def new_duration_get(duration:, offer:, device_id: nil, voucher: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/order/overTheBox/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'deviceId' => device_id, 'offer' => offer, 'voucher' => voucher }
        )
      end

      def new_duration_post(duration:, order_over_the_box_new_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'order_over_the_box_new_duration_post_request is required' if order_over_the_box_new_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/overTheBox/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: order_over_the_box_new_duration_post_request
        )
      end

      def new_get(offer:, device_id: nil, voucher: nil)
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/order/overTheBox/new',
          type: nil,
          auth: [],
          query: { 'deviceId' => device_id, 'offer' => offer, 'voucher' => voucher }
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/overTheBox/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_migrate_get(hardware:, offer:, service_name:, shipping_contact_id: nil, shipping_method: nil, shipping_relay_id: nil)
        raise ArgumentError, 'hardware is required' if hardware.nil?
        raise ArgumentError, 'offer is required' if offer.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/overTheBox/{serviceName}/migrate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'hardware' => hardware, 'offer' => offer, 'shippingContactID' => shipping_contact_id, 'shippingMethod' => shipping_method, 'shippingRelayID' => shipping_relay_id }
        )
      end

      def service_name_migrate_post(service_name:, order_over_the_box_service_name_migrate_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_over_the_box_service_name_migrate_post_request is required' if order_over_the_box_service_name_migrate_post_request.nil?

        @connection.call(
          :POST,
          '/order/overTheBox/{serviceName}/migrate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_over_the_box_service_name_migrate_post_request
        )
      end
    end
  end
end
