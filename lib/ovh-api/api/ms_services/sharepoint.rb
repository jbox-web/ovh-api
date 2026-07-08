# frozen_string_literal: true

module Ovh::Api
  module Api
    class MsServices::Sharepoint
      def initialize(connection)
        @connection = connection
      end

      def billing_migrated(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/sharepoint/billingMigrated'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def bulk_update(service_name:, ms_services_sharepoint_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ms_services_sharepoint_service is required' if ms_services_sharepoint_service.nil?

        @connection.call(
          :PUT,
          '/msServices/{serviceName}/sharepoint'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ms_services_sharepoint_service
        )
      end

      def domain_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/msServices/sharepoint/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_service_infos_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/msServices/sharepoint/{domain}/serviceInfos'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_service_infos_put(domain:, services_service:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/msServices/sharepoint/{domain}/serviceInfos'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/msServices/sharepoint',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def license(period:, service_name:, license: nil)
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/sharepoint/license'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'license' => license, 'period' => period }
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/sharepoint'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def restore_admin_rights(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/sharepoint/restoreAdminRights'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def task(service_name:, function: nil, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/sharepoint/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status }
        )
      end

      def task_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/sharepoint/task/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
