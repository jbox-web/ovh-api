# frozen_string_literal: true

module Ovh::Api
  module Api
    class Hosting::PrivateDatabase
      def initialize(connection)
        @connection = connection
      end

      def available_order_capacities_get(offer:)
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/availableOrderCapacities',
          type: nil,
          auth: [],
          query: { 'offer' => offer }
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/hosting/privateDatabase',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_available_versions_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/availableVersions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_change_contact_post(service_name:, services_change_contact:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_change_contact is required' if services_change_contact.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def service_name_change_ftp_password_post(service_name:, hosting_private_database_change_ftp_password_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_change_ftp_password_payload is required' if hosting_private_database_change_ftp_password_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/changeFtpPassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_change_ftp_password_payload
        )
      end

      def service_name_change_version_post(service_name:, hosting_private_database_change_version_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_change_version_payload is required' if hosting_private_database_change_version_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/changeVersion'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_change_version_payload
        )
      end

      def service_name_config_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/config'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_config_update_post(service_name:, hosting_private_database_config_update_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_config_update_payload is required' if hosting_private_database_config_update_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/config/update'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_config_update_payload
        )
      end

      def service_name_confirm_termination_post(service_name:, services_confirm_termination:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_confirm_termination is required' if services_confirm_termination.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_confirm_termination
        )
      end

      def service_name_cpu_throttle_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/cpuThrottle'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_copy_get(database_name:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/copy'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_copy_id_delete(database_name:, id:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/copy/{id}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_copy_id_get(database_name:, id:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/copy/{id}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_copy_post(database_name:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/copy'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_copy_restore_post(database_name:, service_name:, hosting_private_database_database_copy_restore_payload:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_database_copy_restore_payload is required' if hosting_private_database_database_copy_restore_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/copyRestore'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_database_copy_restore_payload
        )
      end

      def service_name_database_database_name_delete(database_name:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_dump_get(database_name:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/dump'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_dump_id_delete(database_name:, id:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/dump/{id}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_dump_id_get(database_name:, id:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/dump/{id}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_dump_id_restore_post(database_name:, id:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/dump/{id}/restore'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_dump_post(database_name:, service_name:, hosting_private_database_database_create_dump:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_database_create_dump is required' if hosting_private_database_database_create_dump.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/dump'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_database_create_dump
        )
      end

      def service_name_database_database_name_extension_extension_name_disable_post(database_name:, extension_name:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'extension_name is required' if extension_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/extension/{extensionName}/disable'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{extensionName}', ERB::Util.url_encode(extension_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_extension_extension_name_enable_post(database_name:, extension_name:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'extension_name is required' if extension_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/extension/{extensionName}/enable'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{extensionName}', ERB::Util.url_encode(extension_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_extension_extension_name_get(database_name:, extension_name:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'extension_name is required' if extension_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/extension/{extensionName}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{extensionName}', ERB::Util.url_encode(extension_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_extension_get(database_name:, service_name:, extension_name: nil, status: nil)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/extension'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extensionName' => extension_name, 'status' => status }
        )
      end

      def service_name_database_database_name_get(database_name:, service_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_database_name_import_post(database_name:, service_name:, hosting_private_database_database_import_payload:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_database_import_payload is required' if hosting_private_database_database_import_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/database/{databaseName}/import'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_database_import_payload
        )
      end

      def service_name_database_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/database'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_post(service_name:, hosting_private_database_database_create_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_database_create_payload is required' if hosting_private_database_database_create_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/database'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_database_create_payload
        )
      end

      def service_name_database_wizard_post(service_name:, hosting_private_database_database_wizard_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_database_wizard_payload is required' if hosting_private_database_database_wizard_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/databaseWizard'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_database_wizard_payload
        )
      end

      def service_name_dump_dump_id_delete(dump_id:, service_name:)
        raise ArgumentError, 'dump_id is required' if dump_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/privateDatabase/{serviceName}/dump/{dumpId}'
            .gsub('{dumpId}', ERB::Util.url_encode(dump_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dump_dump_id_get(dump_id:, service_name:)
        raise ArgumentError, 'dump_id is required' if dump_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/dump/{dumpId}'
            .gsub('{dumpId}', ERB::Util.url_encode(dump_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dump_dump_id_restore_post(dump_id:, service_name:, hosting_private_database_dump_restore:)
        raise ArgumentError, 'dump_id is required' if dump_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_dump_restore is required' if hosting_private_database_dump_restore.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/dump/{dumpId}/restore'
            .gsub('{dumpId}', ERB::Util.url_encode(dump_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_dump_restore
        )
      end

      def service_name_dump_get(service_name:, database_name: nil, orphan: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/dump'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'databaseName' => database_name, 'orphan' => orphan }
        )
      end

      def service_name_generate_temporary_logs_link_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/generateTemporaryLogsLink'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_kind_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/log/kind'
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
          '/hosting/privateDatabase/{serviceName}/log/kind/{name}'
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
          '/hosting/privateDatabase/{serviceName}/log/subscription'
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
          '/hosting/privateDatabase/{serviceName}/log/subscription'
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
          '/hosting/privateDatabase/{serviceName}/log/subscription/{subscriptionId}'
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
          '/hosting/privateDatabase/{serviceName}/log/subscription/{subscriptionId}'
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
          '/hosting/privateDatabase/{serviceName}/log/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_metrics_token_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/metricsToken'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_oom_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/oom'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, hosting_private_database_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_service is required' if hosting_private_database_service.nil?

        @connection.call(
          :PUT,
          '/hosting/privateDatabase/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_service
        )
      end

      def service_name_quota_refresh_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/quotaRefresh'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_restart_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/restart'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/serviceInfos'
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
          '/hosting/privateDatabase/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_tasks_get(service_name:, function: nil, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/tasks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status }
        )
      end

      def service_name_tasks_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/tasks/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_post(service_name:, hosting_private_database_user_create_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_user_create_payload is required' if hosting_private_database_user_create_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_user_create_payload
        )
      end

      def service_name_user_user_name_change_password_post(service_name:, user_name:, hosting_private_database_user_change_password_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?
        raise ArgumentError, 'hosting_private_database_user_change_password_payload is required' if hosting_private_database_user_change_password_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/user/{userName}/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_user_change_password_payload
        )
      end

      def service_name_user_user_name_delete(service_name:, user_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/privateDatabase/{serviceName}/user/{userName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_name_get(service_name:, user_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/user/{userName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_name_grant_database_name_delete(database_name:, service_name:, user_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/privateDatabase/{serviceName}/user/{userName}/grant/{databaseName}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_name_grant_database_name_get(database_name:, service_name:, user_name:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/user/{userName}/grant/{databaseName}'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_name_grant_database_name_update_post(database_name:, service_name:, user_name:, hosting_private_database_user_grant_update:)
        raise ArgumentError, 'database_name is required' if database_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?
        raise ArgumentError, 'hosting_private_database_user_grant_update is required' if hosting_private_database_user_grant_update.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/user/{userName}/grant/{databaseName}/update'
            .gsub('{databaseName}', ERB::Util.url_encode(database_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_user_grant_update
        )
      end

      def service_name_user_user_name_grant_get(service_name:, user_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/user/{userName}/grant'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_name_grant_post(service_name:, user_name:, hosting_private_database_user_grant_create:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?
        raise ArgumentError, 'hosting_private_database_user_grant_create is required' if hosting_private_database_user_grant_create.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/user/{userName}/grant'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_user_grant_create
        )
      end

      def service_name_webhosting_network_delete(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/privateDatabase/{serviceName}/webhostingNetwork'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_webhosting_network_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/webhostingNetwork'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_webhosting_network_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/webhostingNetwork'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_webs_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/webs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_whitelist_get(service_name:, ip: nil, service: nil, sftp: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/whitelist'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'service' => service, 'sftp' => sftp }
        )
      end

      def service_name_whitelist_ip_delete(ip:, service_name:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/privateDatabase/{serviceName}/whitelist/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_whitelist_ip_get(ip:, service_name:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/privateDatabase/{serviceName}/whitelist/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_whitelist_ip_put(ip:, service_name:, hosting_private_database_whitelist:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_whitelist is required' if hosting_private_database_whitelist.nil?

        @connection.call(
          :PUT,
          '/hosting/privateDatabase/{serviceName}/whitelist/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_whitelist
        )
      end

      def service_name_whitelist_post(service_name:, hosting_private_database_whitelist_create_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_private_database_whitelist_create_payload is required' if hosting_private_database_whitelist_create_payload.nil?

        @connection.call(
          :POST,
          '/hosting/privateDatabase/{serviceName}/whitelist'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_private_database_whitelist_create_payload
        )
      end
    end
  end
end
