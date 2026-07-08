# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::Ipv6
      def initialize(connection)
        @connection = connection
      end

      def bridged_subrange(ipv6:, service_name:)
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ipv6/{ipv6}/bridgedSubrange'
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def bridged_subrange_get(bridged_subrange:, ipv6:, service_name:)
        raise ArgumentError, 'bridged_subrange is required' if bridged_subrange.nil?
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ipv6/{ipv6}/bridgedSubrange/{bridgedSubrange}'
            .gsub('{bridgedSubrange}', ERB::Util.url_encode(bridged_subrange.to_s))
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def bridged_subrange_put(bridged_subrange:, ipv6:, service_name:, vrack_bridged_subrange:)
        raise ArgumentError, 'bridged_subrange is required' if bridged_subrange.nil?
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_bridged_subrange is required' if vrack_bridged_subrange.nil?

        @connection.call(
          :PUT,
          '/vrack/{serviceName}/ipv6/{ipv6}/bridgedSubrange/{bridgedSubrange}'
            .gsub('{bridgedSubrange}', ERB::Util.url_encode(bridged_subrange.to_s))
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vrack_bridged_subrange
        )
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/ipv6'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(ipv6:, service_name:)
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/ipv6/{ipv6}'
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ipv6:, service_name:)
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ipv6/{ipv6}'
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ipv6'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def routed_subrange(ipv6:, service_name:)
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ipv6/{ipv6}/routedSubrange'
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def routed_subrange_delete(ipv6:, routed_subrange:, service_name:)
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'routed_subrange is required' if routed_subrange.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/ipv6/{ipv6}/routedSubrange/{routedSubrange}'
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{routedSubrange}', ERB::Util.url_encode(routed_subrange.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def routed_subrange_get(ipv6:, routed_subrange:, service_name:)
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'routed_subrange is required' if routed_subrange.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ipv6/{ipv6}/routedSubrange/{routedSubrange}'
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{routedSubrange}', ERB::Util.url_encode(routed_subrange.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def routed_subrange_post(ipv6:, service_name:, vrack_service_name_ipv6_ipv6_routed_subrange_post_request:)
        raise ArgumentError, 'ipv6 is required' if ipv6.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_service_name_ipv6_ipv6_routed_subrange_post_request is required' if vrack_service_name_ipv6_ipv6_routed_subrange_post_request.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/ipv6/{ipv6}/routedSubrange'
            .gsub('{ipv6}', ERB::Util.url_encode(ipv6.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vrack_service_name_ipv6_ipv6_routed_subrange_post_request
        )
      end
    end
  end
end
