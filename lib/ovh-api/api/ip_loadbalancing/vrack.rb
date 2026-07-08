# frozen_string_literal: true

module Ovh::Api
  module Api
    class IpLoadbalancing::Vrack
      def initialize(connection)
        @connection = connection
      end

      def network(service_name:, subnet: nil, vlan: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/vrack/network'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'subnet' => subnet, 'vlan' => vlan }
        )
      end

      def network_creation_rules(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/vrack/networkCreationRules'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def network_delete(service_name:, vrack_network_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_network_id is required' if vrack_network_id.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/vrack/network/{vrackNetworkId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrackNetworkId}', ERB::Util.url_encode(vrack_network_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def network_get(service_name:, vrack_network_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_network_id is required' if vrack_network_id.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/vrack/network/{vrackNetworkId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrackNetworkId}', ERB::Util.url_encode(vrack_network_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def network_post(service_name:, ip_loadbalancing_service_name_vrack_network_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_vrack_network_post_request is required' if ip_loadbalancing_service_name_vrack_network_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/vrack/network'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_vrack_network_post_request
        )
      end

      def network_put(service_name:, vrack_network_id:, ip_loadbalancing_vrack_network_vrack_network:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_network_id is required' if vrack_network_id.nil?
        raise ArgumentError, 'ip_loadbalancing_vrack_network_vrack_network is required' if ip_loadbalancing_vrack_network_vrack_network.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/vrack/network/{vrackNetworkId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrackNetworkId}', ERB::Util.url_encode(vrack_network_id.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_vrack_network_vrack_network
        )
      end

      def network_update_farm_id(service_name:, vrack_network_id:, request_body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_network_id is required' if vrack_network_id.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/vrack/network/{vrackNetworkId}/updateFarmId'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrackNetworkId}', ERB::Util.url_encode(vrack_network_id.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def status(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/vrack/status'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
