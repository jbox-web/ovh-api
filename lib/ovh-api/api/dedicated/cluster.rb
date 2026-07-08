# frozen_string_literal: true

module Ovh::Api
  module Api
    class Dedicated::Cluster
      def initialize(connection)
        @connection = connection
      end

      def availabilities_get(quantity:, memory: nil, plan_code: nil, server: nil, storage: nil, system_storage: nil)
        raise ArgumentError, 'quantity is required' if quantity.nil?

        @connection.call(
          :GET,
          '/dedicated/cluster/availabilities',
          type: nil,
          auth: [],
          query: { 'memory' => memory, 'planCode' => plan_code, 'quantity' => quantity, 'server' => server, 'storage' => storage, 'systemStorage' => system_storage }
        )
      end

      def availabilities_raw_get(quantity:, exclude_regions: nil, memory: nil, plan_code: nil, regions: nil, server: nil, storage: nil, system_storage: nil)
        raise ArgumentError, 'quantity is required' if quantity.nil?

        @connection.call(
          :GET,
          '/dedicated/cluster/availabilities/raw',
          type: nil,
          auth: [],
          query: { 'excludeRegions' => exclude_regions, 'memory' => memory, 'planCode' => plan_code, 'quantity' => quantity, 'regions' => regions, 'server' => server, 'storage' => storage, 'systemStorage' => system_storage }
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/dedicated/cluster',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_change_contact_post(service_name:, services_change_contact:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_change_contact is required' if services_change_contact.nil?

        @connection.call(
          :POST,
          '/dedicated/cluster/{serviceName}/changeContact'
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
          '/dedicated/cluster/{serviceName}/confirmTermination'
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
          '/dedicated/cluster/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/cluster/{serviceName}/serviceInfos'
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
          '/dedicated/cluster/{serviceName}/serviceInfos'
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
          '/dedicated/cluster/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
