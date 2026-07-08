# frozen_string_literal: true

module Ovh::Api
  module Api
    class License::Office
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/license/office',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_domain_domain_name_get(domain_name:, service_name:)
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}/domain/{domainName}'
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domain_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}/domain'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_pending_task_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}/pendingTask'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_pending_task_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}/pendingTask/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, license_office_office_tenant_native:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_office_office_tenant_native is required' if license_office_office_tenant_native.nil?

        @connection.call(
          :PUT,
          '/license/office/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_office_office_tenant_native
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}/serviceInfos'
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
          '/license/office/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_usage_statistics_get(service_name:, from: nil, to: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}/usageStatistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'from' => from, 'to' => to }
        )
      end

      def service_name_user_activation_email_change_password_post(activation_email:, service_name:, license_office_office_tenant_post_change_password:)
        raise ArgumentError, 'activation_email is required' if activation_email.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_office_office_tenant_post_change_password is required' if license_office_office_tenant_post_change_password.nil?

        @connection.call(
          :POST,
          '/license/office/{serviceName}/user/{activationEmail}/changePassword'
            .gsub('{activationEmail}', ERB::Util.url_encode(activation_email.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_office_office_tenant_post_change_password
        )
      end

      def service_name_user_activation_email_delete(activation_email:, service_name:)
        raise ArgumentError, 'activation_email is required' if activation_email.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/license/office/{serviceName}/user/{activationEmail}'
            .gsub('{activationEmail}', ERB::Util.url_encode(activation_email.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_activation_email_get(activation_email:, service_name:)
        raise ArgumentError, 'activation_email is required' if activation_email.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}/user/{activationEmail}'
            .gsub('{activationEmail}', ERB::Util.url_encode(activation_email.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_activation_email_put(activation_email:, service_name:, license_office_office_user_native_update:)
        raise ArgumentError, 'activation_email is required' if activation_email.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_office_office_user_native_update is required' if license_office_office_user_native_update.nil?

        @connection.call(
          :PUT,
          '/license/office/{serviceName}/user/{activationEmail}'
            .gsub('{activationEmail}', ERB::Util.url_encode(activation_email.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_office_office_user_native_update
        )
      end

      def service_name_user_get(service_name:, activation_email: nil, first_name: nil, last_name: nil, licences: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/license/office/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'activationEmail' => activation_email, 'firstName' => first_name, 'lastName' => last_name, 'licences' => licences }
        )
      end

      def service_name_user_post(service_name:, license_office_post_user_native:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'license_office_post_user_native is required' if license_office_post_user_native.nil?

        @connection.call(
          :POST,
          '/license/office/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: license_office_post_user_native
        )
      end
    end
  end
end
