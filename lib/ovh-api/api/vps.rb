# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vps
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/vps',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_abort_snapshot_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/abortSnapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_active_options_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/activeOptions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_available_upgrade_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/availableUpgrade'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_backupftp_access_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/backupftp/access'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_backupftp_access_ip_block_delete(ip_block:, service_name:)
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vps/{serviceName}/backupftp/access/{ipBlock}'
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_backupftp_access_ip_block_get(ip_block:, service_name:)
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/backupftp/access/{ipBlock}'
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_backupftp_access_ip_block_put(ip_block:, service_name:, dedicated_server_backup_ftp_acl:)
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_backup_ftp_acl is required' if dedicated_server_backup_ftp_acl.nil?

        @connection.call(
          :PUT,
          '/vps/{serviceName}/backupftp/access/{ipBlock}'
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_backup_ftp_acl
        )
      end

      def service_name_backupftp_access_post(service_name:, vps_backupftp_access_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_backupftp_access_post is required' if vps_backupftp_access_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/backupftp/access'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_backupftp_access_post
        )
      end

      def service_name_backupftp_authorizable_blocks_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/backupftp/authorizableBlocks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_backupftp_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/backupftp'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_backupftp_password_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/backupftp/password'
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
          '/vps/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def service_name_confirm_termination_post(service_name:, services_confirm_termination:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_confirm_termination is required' if services_confirm_termination.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_confirm_termination
        )
      end

      def service_name_create_snapshot_post(service_name:, vps_create_snapshot_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_create_snapshot_post is required' if vps_create_snapshot_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/createSnapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_create_snapshot_post
        )
      end

      def service_name_distribution_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/distribution'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_distribution_software_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/distribution/software'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_distribution_software_software_id_get(service_name:, software_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'software_id is required' if software_id.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/distribution/software/{softwareId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{softwareId}', ERB::Util.url_encode(software_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get_console_url_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/getConsoleUrl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_images_available_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/images/available'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_images_available_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/images/available/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_images_current_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/images/current'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ip_country_available_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/ipCountryAvailable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_migration2016_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/migration2016'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_migration2016_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/migration2016'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_migration2018_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/migration2018'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_migration2018_post(service_name:, vps_migration2018_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_migration2018_post is required' if vps_migration2018_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/migration2018'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_migration2018_post
        )
      end

      def service_name_migration2020_delete(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vps/{serviceName}/migration2020'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_migration2020_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/migration2020'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_migration2020_post(service_name:, vps_migration_vps2020to2025_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_migration_vps2020to2025_post is required' if vps_migration_vps2020to2025_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/migration2020'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_migration_vps2020to2025_post
        )
      end

      def service_name_migration2020_put(service_name:, vps_migration_vps2020to2025_put:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_migration_vps2020to2025_put is required' if vps_migration_vps2020to2025_put.nil?

        @connection.call(
          :PUT,
          '/vps/{serviceName}/migration2020'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_migration_vps2020to2025_put
        )
      end

      def service_name_models_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/models'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_monitoring_get(period:, service_name:, type:)
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/monitoring'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end

      def service_name_open_console_access_post(service_name:, vps_open_console_access_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_open_console_access_post is required' if vps_open_console_access_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/openConsoleAccess'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_open_console_access_post
        )
      end

      def service_name_put(service_name:, vps_vps:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_vps is required' if vps_vps.nil?

        @connection.call(
          :PUT,
          '/vps/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_vps
        )
      end

      def service_name_reboot_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/reboot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_rebuild_post(service_name:, vps_rebuild_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_rebuild_post is required' if vps_rebuild_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/rebuild'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_rebuild_post
        )
      end

      def service_name_reinstall_post(service_name:, vps_reinstall_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_reinstall_post is required' if vps_reinstall_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/reinstall'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_reinstall_post
        )
      end

      def service_name_secondary_dns_name_server_available_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/secondaryDnsNameServerAvailable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/serviceInfos'
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
          '/vps/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_set_password_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/setPassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_start_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/start'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_statistics_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/statistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_status_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/status'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_stop_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/stop'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_use_get(service_name:, type:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/use'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end
    end
  end
end
