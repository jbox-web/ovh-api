# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/vrack',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def public_routing_region_get(region: nil)
        @connection.call(
          :GET,
          '/vrack/publicRoutingRegion',
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_allowed_services_get(service_name:, service_family: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/allowedServices'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'serviceFamily' => service_family }
        )
      end

      def service_name_confirm_termination_post(service_name:, cloud_project_service_name_confirm_termination_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_service_name_confirm_termination_post_request is required' if cloud_project_service_name_confirm_termination_post_request.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_service_name_confirm_termination_post_request
        )
      end

      def service_name_dedicated_server_interface_details_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedServerInterfaceDetails'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_eligible_services_get(service_name:, service_family: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/eligibleServices'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'serviceFamily' => service_family }
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_public_routing_bandwidth_limit_get(service_name:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/publicRoutingBandwidthLimit'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_put(service_name:, vrack_vrack:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_vrack is required' if vrack_vrack.nil?

        @connection.call(
          :PUT,
          '/vrack/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vrack_vrack
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
