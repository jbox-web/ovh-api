# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Dedicated
      def initialize(connection)
        @connection = connection
      end

      def housing_get
        @connection.call(
          :GET,
          '/order/dedicated/housing',
          type: nil,
          auth: []
        )
      end

      def housing_service_name_apc_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/housing/{serviceName}/APC/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def housing_service_name_apc_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/dedicated/housing/{serviceName}/APC/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def housing_service_name_apc_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/housing/{serviceName}/APC'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def housing_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/housing/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_get
        @connection.call(
          :GET,
          '/order/dedicated/server',
          type: nil,
          auth: []
        )
      end

      def server_service_name_backup_storage_duration_get(capacity:, duration:, service_name:)
        raise ArgumentError, 'capacity is required' if capacity.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/backupStorage/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'capacity' => capacity }
        )
      end

      def server_service_name_backup_storage_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/backupStorage/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def server_service_name_backup_storage_get(capacity:, service_name:)
        raise ArgumentError, 'capacity is required' if capacity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/backupStorage'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'capacity' => capacity }
        )
      end

      def server_service_name_bandwidth_duration_get(bandwidth:, duration:, service_name:, type:)
        raise ArgumentError, 'bandwidth is required' if bandwidth.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/bandwidth/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'bandwidth' => bandwidth, 'type' => type }
        )
      end

      def server_service_name_bandwidth_duration_post(duration:, service_name:, order_dedicated_server_service_name_bandwidth_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_dedicated_server_service_name_bandwidth_duration_post_request is required' if order_dedicated_server_service_name_bandwidth_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/bandwidth/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_dedicated_server_service_name_bandwidth_duration_post_request
        )
      end

      def server_service_name_bandwidth_get(bandwidth:, service_name:, type:)
        raise ArgumentError, 'bandwidth is required' if bandwidth.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/bandwidth'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'bandwidth' => bandwidth, 'type' => type }
        )
      end

      def server_service_name_bandwidthv_rack_duration_get(bandwidth:, duration:, service_name:)
        raise ArgumentError, 'bandwidth is required' if bandwidth.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/bandwidthvRack/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'bandwidth' => bandwidth }
        )
      end

      def server_service_name_bandwidthv_rack_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/bandwidthvRack/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def server_service_name_bandwidthv_rack_get(bandwidth:, service_name:)
        raise ArgumentError, 'bandwidth is required' if bandwidth.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/bandwidthvRack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'bandwidth' => bandwidth }
        )
      end

      def server_service_name_feature_duration_get(duration:, feature:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'feature is required' if feature.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/feature/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'feature' => feature }
        )
      end

      def server_service_name_feature_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/feature/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def server_service_name_feature_get(feature:, service_name:)
        raise ArgumentError, 'feature is required' if feature.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/feature'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'feature' => feature }
        )
      end

      def server_service_name_firewall_duration_get(duration:, firewall_model:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'firewall_model is required' if firewall_model.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/firewall/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'firewallModel' => firewall_model }
        )
      end

      def server_service_name_firewall_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/firewall/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def server_service_name_firewall_get(firewall_model:, service_name:)
        raise ArgumentError, 'firewall_model is required' if firewall_model.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/firewall'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'firewallModel' => firewall_model }
        )
      end

      def server_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_ip_migration_duration_get(duration:, ip:, service_name:, token:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'token is required' if token.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/ipMigration/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'token' => token }
        )
      end

      def server_service_name_ip_migration_duration_post(duration:, service_name:, order_dedicated_server_service_name_ip_migration_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_dedicated_server_service_name_ip_migration_duration_post_request is required' if order_dedicated_server_service_name_ip_migration_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/ipMigration/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_dedicated_server_service_name_ip_migration_duration_post_request
        )
      end

      def server_service_name_ip_migration_get(ip:, service_name:, token:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'token is required' if token.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/ipMigration'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'token' => token }
        )
      end

      def server_service_name_kvm_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/kvm/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_kvm_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/kvm/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_kvm_express_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/kvmExpress/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_kvm_express_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/kvmExpress/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_kvm_express_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/kvmExpress'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_kvm_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/kvm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_professional_use_duration_get(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/professionalUse/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_professional_use_duration_post(duration:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/professionalUse/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_professional_use_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/professionalUse'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_service_name_traffic_duration_get(duration:, service_name:, traffic:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'traffic is required' if traffic.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/traffic/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'traffic' => traffic }
        )
      end

      def server_service_name_traffic_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/traffic/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def server_service_name_traffic_get(service_name:, traffic:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'traffic is required' if traffic.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/traffic'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'traffic' => traffic }
        )
      end

      def server_service_name_usb_key_duration_get(capacity:, duration:, service_name:)
        raise ArgumentError, 'capacity is required' if capacity.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/usbKey/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'capacity' => capacity }
        )
      end

      def server_service_name_usb_key_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/dedicated/server/{serviceName}/usbKey/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def server_service_name_usb_key_get(capacity:, service_name:)
        raise ArgumentError, 'capacity is required' if capacity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/dedicated/server/{serviceName}/usbKey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'capacity' => capacity }
        )
      end
    end
  end
end
