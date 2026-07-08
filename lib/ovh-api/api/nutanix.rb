# frozen_string_literal: true

module Ovh::Api
  module Api
    class Nutanix
      def initialize(connection)
        @connection = connection
      end

      def availabilities_get(quantity:, erasure_coding: nil, memory: nil, plan_code: nil, rack_awareness: nil, redundancy_factor: nil, server: nil, storage: nil, system_storage: nil)
        raise ArgumentError, 'quantity is required' if quantity.nil?

        @connection.call(
          :GET,
          '/nutanix/availabilities',
          type: nil,
          auth: [],
          query: { 'erasureCoding' => erasure_coding, 'memory' => memory, 'planCode' => plan_code, 'quantity' => quantity, 'rackAwareness' => rack_awareness, 'redundancyFactor' => redundancy_factor, 'server' => server, 'storage' => storage, 'systemStorage' => system_storage }
        )
      end

      def availabilities_raw_get(quantity:, datacenters: nil, deployment_type: nil, erasure_coding: nil, exclude_datacenters: nil, exclude_regions: nil, memory: nil, plan_code: nil, redundancy_factor: nil, regions: nil, server: nil, storage: nil, system_storage: nil)
        raise ArgumentError, 'quantity is required' if quantity.nil?

        @connection.call(
          :GET,
          '/nutanix/availabilities/raw',
          type: nil,
          auth: [],
          query: { 'datacenters' => datacenters, 'deploymentType' => deployment_type, 'erasureCoding' => erasure_coding, 'excludeDatacenters' => exclude_datacenters, 'excludeRegions' => exclude_regions, 'memory' => memory, 'planCode' => plan_code, 'quantity' => quantity, 'redundancyFactor' => redundancy_factor, 'regions' => regions, 'server' => server, 'storage' => storage, 'systemStorage' => system_storage }
        )
      end

      def available_versions_get(fqn: nil)
        @connection.call(
          :GET,
          '/nutanix/availableVersions',
          type: nil,
          auth: [],
          query: { 'fqn' => fqn }
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/nutanix',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def requirements_get(erasure_coding:, rack_awareness:, redundancy_factor:)
        raise ArgumentError, 'erasure_coding is required' if erasure_coding.nil?
        raise ArgumentError, 'rack_awareness is required' if rack_awareness.nil?
        raise ArgumentError, 'redundancy_factor is required' if redundancy_factor.nil?

        @connection.call(
          :GET,
          '/nutanix/requirements',
          type: nil,
          auth: [],
          query: { 'erasureCoding' => erasure_coding, 'rackAwareness' => rack_awareness, 'redundancyFactor' => redundancy_factor }
        )
      end

      def service_name_change_contact_post(service_name:, services_change_contact:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_change_contact is required' if services_change_contact.nil?

        @connection.call(
          :POST,
          '/nutanix/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def service_name_confirm_termination_post(service_name:, services_confirm_termination:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_confirm_termination is required' if services_confirm_termination.nil?

        @connection.call(
          :POST,
          '/nutanix/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_confirm_termination
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/nutanix/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, nutanix_cluster:, redeploycluster: nil, scale_out: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'nutanix_cluster is required' if nutanix_cluster.nil?

        @connection.call(
          :PUT,
          '/nutanix/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'redeploycluster' => redeploycluster, 'scaleOut' => scale_out },
          body: nutanix_cluster
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/nutanix/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_put(service_name:, services_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/nutanix/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/nutanix/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
