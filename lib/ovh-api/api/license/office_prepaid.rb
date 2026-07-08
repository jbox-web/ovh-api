# frozen_string_literal: true

module Ovh::Api
  module Api
    class License::OfficePrepaid
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/license/officePrepaid',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_change_password_post(service_name:, license_office_prepaid_office_tenant_post_change_password:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_office_prepaid_office_tenant_post_change_password is required' if license_office_prepaid_office_tenant_post_change_password.nil?

        @connection.call(
          :POST,
          '/license/officePrepaid/{serviceName}/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_office_prepaid_office_tenant_post_change_password
        )
      end

      def service_name_confirm_termination_post(service_name:, cloud_project_service_name_confirm_termination_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_service_name_confirm_termination_post_request is required' if cloud_project_service_name_confirm_termination_post_request.nil?

        @connection.call(
          :POST,
          '/license/officePrepaid/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_service_name_confirm_termination_post_request
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/officePrepaid/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_parent_tenant_accept_agreement_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/license/officePrepaid/{serviceName}/parentTenant/acceptAgreement'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_parent_tenant_create_attestation_post(service_name:, license_office_prepaid_create_attestation_post_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_office_prepaid_create_attestation_post_payload is required' if license_office_prepaid_create_attestation_post_payload.nil?

        @connection.call(
          :POST,
          '/license/officePrepaid/{serviceName}/parentTenant/createAttestation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_office_prepaid_create_attestation_post_payload
        )
      end

      def service_name_parent_tenant_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/officePrepaid/{serviceName}/parentTenant'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_parent_tenant_put(service_name:, license_office_prepaid_office_tenant_put_parent_tenant:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_office_prepaid_office_tenant_put_parent_tenant is required' if license_office_prepaid_office_tenant_put_parent_tenant.nil?

        @connection.call(
          :PUT,
          '/license/officePrepaid/{serviceName}/parentTenant'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_office_prepaid_office_tenant_put_parent_tenant
        )
      end

      def service_name_put(service_name:, license_office_prepaid_put_office_user_native:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_office_prepaid_put_office_user_native is required' if license_office_prepaid_put_office_user_native.nil?

        @connection.call(
          :PUT,
          '/license/officePrepaid/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_office_prepaid_put_office_user_native
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/officePrepaid/{serviceName}/serviceInfos'
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
          '/license/officePrepaid/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_tenant_pending_task_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/officePrepaid/{serviceName}/tenantPendingTask'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tenant_pending_task_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/officePrepaid/{serviceName}/tenantPendingTask/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tenant_usage_statistics_get(service_name:, from: nil, to: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/officePrepaid/{serviceName}/tenantUsageStatistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'from' => from, 'to' => to }
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/license/officePrepaid/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_unconfigure_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/license/officePrepaid/{serviceName}/unconfigure'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
