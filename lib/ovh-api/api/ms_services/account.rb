# frozen_string_literal: true

module Ovh::Api
  module Api
    class MsServices::Account
      def initialize(connection)
        @connection = connection
      end

      def change_password(service_name:, user_principal_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def exchange(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/account/{userPrincipalName}/exchange'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def exchange_configure(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/exchange/configure'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def exchange_put(service_name:, user_principal_name:, ms_services_exchange_information:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?
        raise ArgumentError, 'ms_services_exchange_information is required' if ms_services_exchange_information.nil?

        @connection.call(
          :PUT,
          '/msServices/{serviceName}/account/{userPrincipalName}/exchange'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: [],
          body: ms_services_exchange_information
        )
      end

      def get(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/account/{userPrincipalName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, company: nil, id: nil, user_principal_name: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/account'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'company' => company, 'id' => id, 'userPrincipalName' => user_principal_name }
        )
      end

      def mfa(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/account/{userPrincipalName}/mfa'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def mfa_delete(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :DELETE,
          '/msServices/{serviceName}/account/{userPrincipalName}/mfa'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def mfa_disable(service_name:, user_principal_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/mfa/disable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def mfa_enable(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/mfa/enable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def mfa_post(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/mfa'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def mfa_reset(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/mfa/reset'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sharepoint(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/account/{userPrincipalName}/sharepoint'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sharepoint_clear_space(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/sharepoint/clearSpace'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sharepoint_configure(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/sharepoint/configure'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sharepoint_put(service_name:, user_principal_name:, ms_services_sharepoint_information:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?
        raise ArgumentError, 'ms_services_sharepoint_information is required' if ms_services_sharepoint_information.nil?

        @connection.call(
          :PUT,
          '/msServices/{serviceName}/account/{userPrincipalName}/sharepoint'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: [],
          body: ms_services_sharepoint_information
        )
      end

      def sync(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/account/{userPrincipalName}/sync'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sync_configure(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/sync/configure'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sync_delete(service_name:, user_principal_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?

        @connection.call(
          :DELETE,
          '/msServices/{serviceName}/account/{userPrincipalName}/sync'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sync_post(service_name:, user_principal_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/msServices/{serviceName}/account/{userPrincipalName}/sync'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def update(service_name:, user_principal_name:, ms_services_account:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_principal_name is required' if user_principal_name.nil?
        raise ArgumentError, 'ms_services_account is required' if ms_services_account.nil?

        @connection.call(
          :PUT,
          '/msServices/{serviceName}/account/{userPrincipalName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userPrincipalName}', ERB::Util.url_encode(user_principal_name.to_s)),
          type: nil,
          auth: [],
          body: ms_services_account
        )
      end
    end
  end
end
