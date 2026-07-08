# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::DedicatedCloud
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/order/dedicatedCloud',
          type: nil,
          auth: []
        )
      end

      def service_name_additional_bandwidth_duration_get(bandwidth:, duration:, service_name:)
        raise ArgumentError, 'bandwidth is required' if bandwidth.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/additionalBandwidth/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'bandwidth' => bandwidth }
        )
      end

      def service_name_additional_bandwidth_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/dedicatedCloud/{serviceName}/additionalBandwidth/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_additional_bandwidth_get(bandwidth:, service_name:)
        raise ArgumentError, 'bandwidth is required' if bandwidth.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/additionalBandwidth'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'bandwidth' => bandwidth }
        )
      end

      def service_name_filer_duration_get(duration:, name:, service_name:, datacenter_id: nil, quantity: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/filer/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'datacenterId' => datacenter_id, 'name' => name, 'quantity' => quantity }
        )
      end

      def service_name_filer_duration_post(duration:, service_name:, order_dedicated_cloud_service_name_filer_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_dedicated_cloud_service_name_filer_duration_post_request is required' if order_dedicated_cloud_service_name_filer_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/dedicatedCloud/{serviceName}/filer/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_dedicated_cloud_service_name_filer_duration_post_request
        )
      end

      def service_name_filer_get(name:, service_name:, datacenter_id: nil, quantity: nil)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/filer'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'datacenterId' => datacenter_id, 'name' => name, 'quantity' => quantity }
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_host_duration_get(datacenter_id:, duration:, name:, service_name:, quantity: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/host/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'datacenterId' => datacenter_id, 'name' => name, 'quantity' => quantity }
        )
      end

      def service_name_host_duration_post(duration:, service_name:, order_dedicated_cloud_service_name_host_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_dedicated_cloud_service_name_host_duration_post_request is required' if order_dedicated_cloud_service_name_host_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/dedicatedCloud/{serviceName}/host/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_dedicated_cloud_service_name_host_duration_post_request
        )
      end

      def service_name_host_get(datacenter_id:, name:, service_name:, quantity: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/host'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'datacenterId' => datacenter_id, 'name' => name, 'quantity' => quantity }
        )
      end

      def service_name_ip_duration_get(country:, description:, duration:, estimated_clients_number:, network_name:, service_name:, size:, usage:)
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'description is required' if description.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'estimated_clients_number is required' if estimated_clients_number.nil?
        raise ArgumentError, 'network_name is required' if network_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'size is required' if size.nil?
        raise ArgumentError, 'usage is required' if usage.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/ip/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'country' => country, 'description' => description, 'estimatedClientsNumber' => estimated_clients_number, 'networkName' => network_name, 'size' => size, 'usage' => usage }
        )
      end

      def service_name_ip_duration_post(duration:, service_name:, order_dedicated_cloud_service_name_ip_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_dedicated_cloud_service_name_ip_duration_post_request is required' if order_dedicated_cloud_service_name_ip_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/dedicatedCloud/{serviceName}/ip/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_dedicated_cloud_service_name_ip_duration_post_request
        )
      end

      def service_name_ip_get(country:, description:, estimated_clients_number:, network_name:, service_name:, size:, usage:)
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'description is required' if description.nil?
        raise ArgumentError, 'estimated_clients_number is required' if estimated_clients_number.nil?
        raise ArgumentError, 'network_name is required' if network_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'size is required' if size.nil?
        raise ArgumentError, 'usage is required' if usage.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/ip'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'country' => country, 'description' => description, 'estimatedClientsNumber' => estimated_clients_number, 'networkName' => network_name, 'size' => size, 'usage' => usage }
        )
      end

      def service_name_spla_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/spla'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_spla_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/dedicatedCloud/{serviceName}/spla'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_upgrade_ressource_duration_get(duration:, service_name:, upgrade_type:, upgraded_ressource_type:, upgraded_ressource_id: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'upgrade_type is required' if upgrade_type.nil?
        raise ArgumentError, 'upgraded_ressource_type is required' if upgraded_ressource_type.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/upgradeRessource/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'upgradeType' => upgrade_type, 'upgradedRessourceId' => upgraded_ressource_id, 'upgradedRessourceType' => upgraded_ressource_type }
        )
      end

      def service_name_upgrade_ressource_duration_post(duration:, service_name:, order_dedicated_cloud_service_name_upgrade_ressource_duration_ph6034b34b:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_dedicated_cloud_service_name_upgrade_ressource_duration_ph6034b34b is required' if order_dedicated_cloud_service_name_upgrade_ressource_duration_ph6034b34b.nil?

        @connection.call(
          :POST,
          '/order/dedicatedCloud/{serviceName}/upgradeRessource/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_dedicated_cloud_service_name_upgrade_ressource_duration_ph6034b34b
        )
      end

      def service_name_upgrade_ressource_get(service_name:, upgrade_type:, upgraded_ressource_type:, upgraded_ressource_id: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'upgrade_type is required' if upgrade_type.nil?
        raise ArgumentError, 'upgraded_ressource_type is required' if upgraded_ressource_type.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/upgradeRessource'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'upgradeType' => upgrade_type, 'upgradedRessourceId' => upgraded_ressource_id, 'upgradedRessourceType' => upgraded_ressource_type }
        )
      end

      def service_name_vdi_get(datacenter_id:, first_public_ip_address:, second_public_ip_address:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'first_public_ip_address is required' if first_public_ip_address.nil?
        raise ArgumentError, 'second_public_ip_address is required' if second_public_ip_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicatedCloud/{serviceName}/vdi'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'datacenterId' => datacenter_id, 'firstPublicIpAddress' => first_public_ip_address, 'secondPublicIpAddress' => second_public_ip_address }
        )
      end

      def service_name_vdi_post(service_name:, order_dedicated_cloud_service_name_vdi_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_dedicated_cloud_service_name_vdi_post_request is required' if order_dedicated_cloud_service_name_vdi_post_request.nil?

        @connection.call(
          :POST,
          '/order/dedicatedCloud/{serviceName}/vdi'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_dedicated_cloud_service_name_vdi_post_request
        )
      end
    end
  end
end
