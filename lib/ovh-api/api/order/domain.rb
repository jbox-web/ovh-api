# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Domain
      def initialize(connection)
        @connection = connection
      end

      def zone_get
        @connection.call(
          :GET,
          '/order/domain/zone',
          type: nil,
          auth: []
        )
      end

      def zone_new_get(zone_name:, minimized: nil)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/order/domain/zone/new',
          type: nil,
          auth: [],
          query: { 'minimized' => minimized, 'zoneName' => zone_name }
        )
      end

      def zone_new_post(order_domain_zone_new_post_request:)
        raise ArgumentError, 'order_domain_zone_new_post_request is required' if order_domain_zone_new_post_request.nil?

        @connection.call(
          :POST,
          '/order/domain/zone/new',
          type: nil,
          auth: [],
          body: order_domain_zone_new_post_request
        )
      end

      def zone_zone_name_dns_anycast_duration_get(duration:, zone_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/order/domain/zone/{zoneName}/dnsAnycast/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_zone_name_dns_anycast_duration_post(duration:, zone_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :POST,
          '/order/domain/zone/{zoneName}/dnsAnycast/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_zone_name_dns_anycast_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/order/domain/zone/{zoneName}/dnsAnycast'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zone_zone_name_get(zone_name:)
        raise ArgumentError, 'zone_name is required' if zone_name.nil?

        @connection.call(
          :GET,
          '/order/domain/zone/{zoneName}'
            .gsub('{zoneName}', ERB::Util.url_encode(zone_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
