# frozen_string_literal: true

module Ovh::Api
  module Api
    class HorizonView::CustomerNetwork
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, horizon_view_service_name_customer_network_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_customer_network_post_request is required' if horizon_view_service_name_customer_network_post_request.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/customerNetwork'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_customer_network_post_request
        )
      end

      def delete(customer_network_id:, service_name:)
        raise ArgumentError, 'customer_network_id is required' if customer_network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/horizonView/{serviceName}/customerNetwork/{customerNetworkId}'
            .gsub('{customerNetworkId}', ERB::Util.url_encode(customer_network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(customer_network_id:, service_name:)
        raise ArgumentError, 'customer_network_id is required' if customer_network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/customerNetwork/{customerNetworkId}'
            .gsub('{customerNetworkId}', ERB::Util.url_encode(customer_network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/customerNetwork'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
