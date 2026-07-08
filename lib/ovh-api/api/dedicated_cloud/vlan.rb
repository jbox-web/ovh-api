# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::Vlan
      def initialize(connection)
        @connection = connection
      end

      def get(service_name:, vlan_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vlan_id is required' if vlan_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/vlan/{vlanId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vlanId}', ERB::Util.url_encode(vlan_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/vlan'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
