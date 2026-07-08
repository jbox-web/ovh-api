# frozen_string_literal: true

module Ovh::Api
  module Api
    class OverTheBox
      def initialize(connection)
        @connection = connection
      end

      def available_offers_get
        @connection.call(
          :GET,
          '/overTheBox/availableOffers',
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/overTheBox',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_auto_mtu_put(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :PUT,
          '/overTheBox/{serviceName}/autoMTU'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_available_release_channels_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/availableReleaseChannels'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cancel_resiliation_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/overTheBox/{serviceName}/cancelResiliation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_change_contact_post(service_name:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/overTheBox/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def service_name_delete(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/overTheBox/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_link_device_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/overTheBox/{serviceName}/linkDevice'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_link_hardware_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/overTheBox/{serviceName}/linkHardware'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_log_kind_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/log/kind'
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
          '/overTheBox/{serviceName}/log/kind/{name}'
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
          '/overTheBox/{serviceName}/log/subscription'
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
          '/overTheBox/{serviceName}/log/subscription'
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
          '/overTheBox/{serviceName}/log/subscription/{subscriptionId}'
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
          '/overTheBox/{serviceName}/log/subscription/{subscriptionId}'
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
          '/overTheBox/{serviceName}/log/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_put(service_name:, over_the_box_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'over_the_box_service is required' if over_the_box_service.nil?

        @connection.call(
          :PUT,
          '/overTheBox/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: over_the_box_service
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/serviceInfos'
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
          '/overTheBox/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_statistics_get(metrics_type:, service_name:, period: nil)
        raise ArgumentError, 'metrics_type is required' if metrics_type.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/statistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'metricsType' => metrics_type, 'period' => period }
        )
      end
    end
  end
end
