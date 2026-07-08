# frozen_string_literal: true

module Ovh::Api
  module Api
    class HorizonView::AccessPoint
      def initialize(connection)
        @connection = connection
      end

      def change_session_timeout(access_point_id:, service_name:, horizon_view_service_name_access_point_access_point_id_change_sha53a4a2c:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_access_point_access_point_id_change_sha53a4a2c is required' if horizon_view_service_name_access_point_access_point_id_change_sha53a4a2c.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/changeSessionTimeout'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_access_point_access_point_id_change_sha53a4a2c
        )
      end

      def create(service_name:, horizon_view_service_name_access_point_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_access_point_post_request is required' if horizon_view_service_name_access_point_post_request.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/accessPoint'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_access_point_post_request
        )
      end

      def customer_network(access_point_id:, service_name:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/customerNetwork'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def customer_network_delete(access_point_id:, customer_network_id:, service_name:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'customer_network_id is required' if customer_network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/customerNetwork/{customerNetworkId}'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{customerNetworkId}', ERB::Util.url_encode(customer_network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def customer_network_get(access_point_id:, customer_network_id:, service_name:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'customer_network_id is required' if customer_network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/customerNetwork/{customerNetworkId}'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{customerNetworkId}', ERB::Util.url_encode(customer_network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def customer_network_post(access_point_id:, service_name:, body:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/customerNetwork'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(access_point_id:, service_name:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disable_two_fa(access_point_id:, service_name:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/disableTwoFA'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disable_windows_username_option(access_point_id:, service_name:, body: nil)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/disableWindowsUsernameOption'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def enable_two_fa(access_point_id:, service_name:, horizon_view_service_name_access_point_access_point_id_enable_thb5a87373:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_access_point_access_point_id_enable_thb5a87373 is required' if horizon_view_service_name_access_point_access_point_id_enable_thb5a87373.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/enableTwoFA'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_access_point_access_point_id_enable_thb5a87373
        )
      end

      def enable_windows_username_option(access_point_id:, service_name:, body: nil)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}/enableWindowsUsernameOption'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def get(access_point_id:, service_name:)
        raise ArgumentError, 'access_point_id is required' if access_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/accessPoint/{accessPointId}'
            .gsub('{accessPointId}', ERB::Util.url_encode(access_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/accessPoint'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
