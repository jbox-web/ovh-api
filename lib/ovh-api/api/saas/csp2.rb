# frozen_string_literal: true

module Ovh::Api
  module Api
    class Saas::Csp2
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/saas/csp2',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_billing_period_peaks_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/billingPeriodPeaks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_licenses_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/orderableLicenses'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_licenses_id_get(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/orderableLicenses/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, saas_csp2_office_tenant:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'saas_csp2_office_tenant is required' if saas_csp2_office_tenant.nil?

        @connection.call(
          :PUT,
          '/saas/csp2/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: saas_csp2_office_tenant
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/serviceInfos'
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
          '/saas/csp2/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_subscription_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_subscription_id_addons_subscription_ids_get(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/subscription/{id}/addonsSubscriptionIds'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_subscription_id_available_addon_licenses_get(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/subscription/{id}/availableAddonLicenses'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_subscription_id_change_quantity_post(service_name:, id:, saas_csp2_subscription_change_quantity_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'saas_csp2_subscription_change_quantity_creation is required' if saas_csp2_subscription_change_quantity_creation.nil?

        @connection.call(
          :POST,
          '/saas/csp2/{serviceName}/subscription/{id}/changeQuantity'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: saas_csp2_subscription_change_quantity_creation
        )
      end

      def service_name_subscription_id_delete(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/saas/csp2/{serviceName}/subscription/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_subscription_id_get(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/subscription/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_subscription_id_order_addon_post(service_name:, id:, saas_csp2_subscription_order_addon_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'saas_csp2_subscription_order_addon_creation is required' if saas_csp2_subscription_order_addon_creation.nil?

        @connection.call(
          :POST,
          '/saas/csp2/{serviceName}/subscription/{id}/orderAddon'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: saas_csp2_subscription_order_addon_creation
        )
      end

      def service_name_subscription_post(service_name:, saas_csp2_subscription_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'saas_csp2_subscription_creation is required' if saas_csp2_subscription_creation.nil?

        @connection.call(
          :POST,
          '/saas/csp2/{serviceName}/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: saas_csp2_subscription_creation
        )
      end

      def service_name_task_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_task_id_get(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/task/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_usage_statistics_get(service_name:, time_period:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'time_period is required' if time_period.nil?

        @connection.call(
          :GET,
          '/saas/csp2/{serviceName}/usageStatistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'timePeriod' => time_period }
        )
      end
    end
  end
end
