# frozen_string_literal: true

module Ovh::Api
  module Api
    class OvhCloudConnect
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/ovhCloudConnect',
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
          '/ovhCloudConnect/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def service_name_config_pop_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/config/pop'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_datacenter_datacenter_id_delete(datacenter_id:, pop_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/datacenter/{datacenterId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_datacenter_datacenter_id_extra_extra_id_delete(datacenter_id:, extra_id:, pop_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'extra_id is required' if extra_id.nil?
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/datacenter/{datacenterId}/extra/{extraId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{extraId}', ERB::Util.url_encode(extra_id.to_s))
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_datacenter_datacenter_id_extra_extra_id_get(datacenter_id:, extra_id:, pop_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'extra_id is required' if extra_id.nil?
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/datacenter/{datacenterId}/extra/{extraId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{extraId}', ERB::Util.url_encode(extra_id.to_s))
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_datacenter_datacenter_id_extra_get(datacenter_id:, pop_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/datacenter/{datacenterId}/extra'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_datacenter_datacenter_id_extra_post(datacenter_id:, pop_id:, service_name:, ovhcloudconnect_datacenter_extra_config:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ovhcloudconnect_datacenter_extra_config is required' if ovhcloudconnect_datacenter_extra_config.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/datacenter/{datacenterId}/extra'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ovhcloudconnect_datacenter_extra_config
        )
      end

      def service_name_config_pop_pop_id_datacenter_datacenter_id_get(datacenter_id:, pop_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/datacenter/{datacenterId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_datacenter_get(pop_id:, service_name:)
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/datacenter'
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_datacenter_post(pop_id:, service_name:, ovhcloudconnect_datacenter_config:)
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ovhcloudconnect_datacenter_config is required' if ovhcloudconnect_datacenter_config.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/datacenter'
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ovhcloudconnect_datacenter_config
        )
      end

      def service_name_config_pop_pop_id_delete(pop_id:, service_name:)
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}'
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_get(pop_id:, service_name:)
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}'
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_pop_id_statistics_get(period:, pop_id:, service_name:, type:)
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/statistics'
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end

      def service_name_config_pop_pop_id_status_get(pop_id:, service_name:)
        raise ArgumentError, 'pop_id is required' if pop_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/config/pop/{popId}/status'
            .gsub('{popId}', ERB::Util.url_encode(pop_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_pop_post(service_name:, ovhcloudconnect_pop_config:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ovhcloudconnect_pop_config is required' if ovhcloudconnect_pop_config.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/config/pop'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ovhcloudconnect_pop_config
        )
      end

      def service_name_confirm_termination_post(service_name:, services_confirm_termination:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_confirm_termination is required' if services_confirm_termination.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/confirmTermination'
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
          '/ovhCloudConnect/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loa_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/loa'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_kind_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/log/kind'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_kind_name_get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_subscription_get(service_name:, kind: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/log/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_log_subscription_post(service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/log/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_log_subscription_subscription_id_delete(service_name:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/ovhCloudConnect/{serviceName}/log/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_subscription_subscription_id_get(service_name:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/log/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_url_post(service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/log/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_monitoring_delete(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ovhCloudConnect/{serviceName}/monitoring'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_monitoring_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/monitoring'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_monitoring_post(service_name:, ovhcloudconnect_subscriptions:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ovhcloudconnect_subscriptions is required' if ovhcloudconnect_subscriptions.nil?

        @connection.call(
          :POST,
          '/ovhCloudConnect/{serviceName}/monitoring'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ovhcloudconnect_subscriptions
        )
      end

      def service_name_put(service_name:, ovhcloudconnect_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ovhcloudconnect_update is required' if ovhcloudconnect_update.nil?

        @connection.call(
          :PUT,
          '/ovhCloudConnect/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ovhcloudconnect_update
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ovhCloudConnect/{serviceName}/serviceInfos'
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
          '/ovhCloudConnect/{serviceName}/serviceInfos'
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
          '/ovhCloudConnect/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
