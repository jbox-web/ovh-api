# frozen_string_literal: true

module Ovh::Api
  module Api
    class Dedicated::Server
      def initialize(connection)
        @connection = connection
      end

      def datacenter_availabilities_get(datacenters: nil, exclude_datacenters: nil, gpu: nil, memory: nil, plan_code: nil, server: nil, storage: nil, system_storage: nil)
        @connection.call(
          :GET,
          '/dedicated/server/datacenter/availabilities',
          type: nil,
          auth: [],
          query: { 'datacenters' => datacenters, 'excludeDatacenters' => exclude_datacenters, 'gpu' => gpu, 'memory' => memory, 'planCode' => plan_code, 'server' => server, 'storage' => storage, 'systemStorage' => system_storage }
        )
      end

      def datacenter_availabilities_raw_get(datacenters: nil, exclude_datacenters: nil, gpu: nil, memory: nil, plan_code: nil, server: nil, storage: nil, system_storage: nil)
        @connection.call(
          :GET,
          '/dedicated/server/datacenter/availabilities/raw',
          type: nil,
          auth: [],
          query: { 'datacenters' => datacenters, 'excludeDatacenters' => exclude_datacenters, 'gpu' => gpu, 'memory' => memory, 'planCode' => plan_code, 'server' => server, 'storage' => storage, 'systemStorage' => system_storage }
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/dedicated/server',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def log_get(datacenter: nil, limit: nil, page: nil, server: nil)
        @connection.call(
          :GET,
          '/dedicated/server/log',
          type: nil,
          auth: [],
          query: { 'datacenter' => datacenter, 'limit' => limit, 'page' => page, 'server' => server }
        )
      end

      def os_availabilities_get(hardware:)
        raise ArgumentError, 'hardware is required' if hardware.nil?

        @connection.call(
          :GET,
          '/dedicated/server/osAvailabilities',
          type: nil,
          auth: [],
          query: { 'hardware' => hardware }
        )
      end

      def region_availabilities_get(exclude_regions: nil, gpu: nil, memory: nil, plan_code: nil, regions: nil, server: nil, storage: nil, system_storage: nil)
        @connection.call(
          :GET,
          '/dedicated/server/region/availabilities',
          type: nil,
          auth: [],
          query: { 'excludeRegions' => exclude_regions, 'gpu' => gpu, 'memory' => memory, 'planCode' => plan_code, 'regions' => regions, 'server' => server, 'storage' => storage, 'systemStorage' => system_storage }
        )
      end

      def service_name_authentication_secret_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/authenticationSecret'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_backup_cloud_offer_details_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/backupCloudOfferDetails'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_bios_settings_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/biosSettings'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_bios_settings_sgx_configure_post(service_name:, dedicated_server_service_name_bios_settings_sgx_configure_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/biosSettings/sgx/configure'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_bios_settings_sgx_configure_post_request
        )
      end

      def service_name_bios_settings_sgx_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/biosSettings/sgx'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_boot_boot_id_get(boot_id:, service_name:)
        raise ArgumentError, 'boot_id is required' if boot_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/boot/{bootId}'
            .gsub('{bootId}', ERB::Util.url_encode(boot_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_boot_boot_id_option_get(boot_id:, service_name:)
        raise ArgumentError, 'boot_id is required' if boot_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/boot/{bootId}/option'
            .gsub('{bootId}', ERB::Util.url_encode(boot_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_boot_boot_id_option_option_get(boot_id:, option:, service_name:)
        raise ArgumentError, 'boot_id is required' if boot_id.nil?
        raise ArgumentError, 'option is required' if option.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/boot/{bootId}/option/{option}'
            .gsub('{bootId}', ERB::Util.url_encode(boot_id.to_s))
            .gsub('{option}', ERB::Util.url_encode(option.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_boot_get(service_name:, boot_type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/boot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'bootType' => boot_type }
        )
      end

      def service_name_burst_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/burst'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_burst_put(service_name:, dedicated_server_server_burst:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_server_burst is required' if dedicated_server_server_burst.nil?

        @connection.call(
          :PUT,
          '/dedicated/server/{serviceName}/burst'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_server_burst
        )
      end

      def service_name_change_contact_post(service_name:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def service_name_confirm_termination_post(service_name:, cloud_project_service_name_confirm_termination_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_service_name_confirm_termination_post_request is required' if cloud_project_service_name_confirm_termination_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_service_name_confirm_termination_post_request
        )
      end

      def service_name_features_backup_cloud_delete(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/server/{serviceName}/features/backupCloud'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_cloud_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/backupCloud'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_cloud_password_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/backupCloud/password'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_cloud_post(service_name:, dedicated_server_service_name_features_backup_cloud_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/backupCloud'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_features_backup_cloud_post_request
        )
      end

      def service_name_features_backup_ftp_access_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/backupFTP/access'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_ftp_access_ip_block_delete(ip_block:, service_name:)
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/server/{serviceName}/features/backupFTP/access/{ipBlock}'
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_ftp_access_ip_block_get(ip_block:, service_name:)
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/backupFTP/access/{ipBlock}'
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_ftp_access_ip_block_put(ip_block:, service_name:, dedicated_server_backup_ftp_acl:)
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_backup_ftp_acl is required' if dedicated_server_backup_ftp_acl.nil?

        @connection.call(
          :PUT,
          '/dedicated/server/{serviceName}/features/backupFTP/access/{ipBlock}'
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_backup_ftp_acl
        )
      end

      def service_name_features_backup_ftp_access_post(service_name:, dedicated_housing_service_name_features_backup_ftp_access_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_housing_service_name_features_backup_ftp_access_post_request is required' if dedicated_housing_service_name_features_backup_ftp_access_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/backupFTP/access'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_housing_service_name_features_backup_ftp_access_post_request
        )
      end

      def service_name_features_backup_ftp_authorizable_blocks_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/backupFTP/authorizableBlocks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_ftp_delete(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/server/{serviceName}/features/backupFTP'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_ftp_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/backupFTP'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_ftp_password_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/backupFTP/password'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_backup_ftp_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/backupFTP'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_firewall_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/firewall'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_firewall_put(service_name:, dedicated_server_firewall:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_firewall is required' if dedicated_server_firewall.nil?

        @connection.call(
          :PUT,
          '/dedicated/server/{serviceName}/features/firewall'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_firewall
        )
      end

      def service_name_features_ipmi_access_get(service_name:, type:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/ipmi/access'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def service_name_features_ipmi_access_post(service_name:, dedicated_server_service_name_features_ipmi_access_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_features_ipmi_access_post_request is required' if dedicated_server_service_name_features_ipmi_access_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/ipmi/access'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_features_ipmi_access_post_request
        )
      end

      def service_name_features_ipmi_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/ipmi'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_ipmi_reset_interface_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/ipmi/resetInterface'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_ipmi_reset_sessions_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/ipmi/resetSessions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_features_ipmi_test_get(service_name:, type:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/ipmi/test'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def service_name_features_ipmi_test_post(service_name:, dedicated_server_service_name_features_ipmi_test_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_features_ipmi_test_post_request is required' if dedicated_server_service_name_features_ipmi_test_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/features/ipmi/test'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_features_ipmi_test_post_request
        )
      end

      def service_name_features_kvm_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/features/kvm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_install_compatible_template_partition_schemes_get(service_name:, template_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'template_name is required' if template_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/install/compatibleTemplatePartitionSchemes'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'templateName' => template_name }
        )
      end

      def service_name_install_compatible_templates_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/install/compatibleTemplates'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_install_hardware_raid_profile_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/install/hardwareRaidProfile'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_install_status_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/install/status'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_intervention_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/intervention'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_intervention_intervention_id_get(intervention_id:, service_name:)
        raise ArgumentError, 'intervention_id is required' if intervention_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/intervention/{interventionId}'
            .gsub('{interventionId}', ERB::Util.url_encode(intervention_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ip_block_merge_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/ipBlockMerge'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_ip_can_be_moved_to_get(ip:, service_name:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/ipCanBeMovedTo'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'ip' => ip }
        )
      end

      def service_name_ip_country_available_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/ipCountryAvailable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ip_move_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/ipMove'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_ips_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/ips'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_license_compliant_windows_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/license/compliantWindows'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_license_compliant_windows_sql_server_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/license/compliantWindowsSqlServer'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_license_windows_post(service_name:, dedicated_server_service_name_license_windows_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_license_windows_post_request is required' if dedicated_server_service_name_license_windows_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/license/windows'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_license_windows_post_request
        )
      end

      def service_name_mrtg_get(period:, service_name:, type:)
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/mrtg'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end

      def service_name_network_interface_controller_get(service_name:, link_type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/networkInterfaceController'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'linkType' => link_type }
        )
      end

      def service_name_network_interface_controller_mac_get(mac:, service_name:)
        raise ArgumentError, 'mac is required' if mac.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/networkInterfaceController/{mac}'
            .gsub('{mac}', ERB::Util.url_encode(mac.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_interface_controller_mac_mrtg_get(mac:, period:, service_name:, type:)
        raise ArgumentError, 'mac is required' if mac.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/networkInterfaceController/{mac}/mrtg'
            .gsub('{mac}', ERB::Util.url_encode(mac.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end

      def service_name_networking_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/networking'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ola_aggregation_post(service_name:, dedicated_server_service_name_ola_aggregation_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_ola_aggregation_post_request is required' if dedicated_server_service_name_ola_aggregation_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/ola/aggregation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_ola_aggregation_post_request
        )
      end

      def service_name_ola_group_post(service_name:, dedicated_server_service_name_ola_aggregation_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_ola_aggregation_post_request is required' if dedicated_server_service_name_ola_aggregation_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/ola/group'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_ola_aggregation_post_request
        )
      end

      def service_name_ola_reset_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/ola/reset'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_ola_ungroup_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/ola/ungroup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_ongoing_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/ongoing'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_option_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/option'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_option_option_delete(option:, service_name:)
        raise ArgumentError, 'option is required' if option.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/server/{serviceName}/option/{option}'
            .gsub('{option}', ERB::Util.url_encode(option.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_option_option_get(option:, service_name:)
        raise ArgumentError, 'option is required' if option.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/option/{option}'
            .gsub('{option}', ERB::Util.url_encode(option.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_backup_storage_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/backupStorage'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_bandwidth_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/bandwidth'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_bandwidthv_rack_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/bandwidthvRack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_feature_get(feature:, service_name:)
        raise ArgumentError, 'feature is required' if feature.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/feature'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'feature' => feature }
        )
      end

      def service_name_orderable_ip_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/ip'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_kvm_express_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/kvmExpress'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_kvm_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/kvm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_professional_use_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/professionalUse'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_traffic_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/traffic'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_orderable_usb_key_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/orderable/usbKey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_planned_intervention_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/plannedIntervention'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_planned_intervention_intervention_id_get(intervention_id:, service_name:)
        raise ArgumentError, 'intervention_id is required' if intervention_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/plannedIntervention/{interventionId}'
            .gsub('{interventionId}', ERB::Util.url_encode(intervention_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, dedicated_server_dedicated:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_dedicated is required' if dedicated_server_dedicated.nil?

        @connection.call(
          :PUT,
          '/dedicated/server/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_dedicated
        )
      end

      def service_name_reboot_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/reboot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_reinstall_post(service_name:, dedicated_server_reinstall:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_reinstall is required' if dedicated_server_reinstall.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/reinstall'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_reinstall
        )
      end

      def service_name_secondary_dns_domains_domain_delete(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/server/{serviceName}/secondaryDnsDomains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_secondary_dns_domains_domain_dns_server_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/secondaryDnsDomains/{domain}/dnsServer'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_secondary_dns_domains_domain_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/secondaryDnsDomains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_secondary_dns_domains_domain_put(domain:, service_name:, dedicated_secondary_dns_domain_secondary_dns:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_secondary_dns_domain_secondary_dns is required' if dedicated_secondary_dns_domain_secondary_dns.nil?

        @connection.call(
          :PUT,
          '/dedicated/server/{serviceName}/secondaryDnsDomains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_secondary_dns_domain_secondary_dns
        )
      end

      def service_name_secondary_dns_domains_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/secondaryDnsDomains'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_secondary_dns_domains_post(service_name:, dedicated_server_service_name_secondary_dns_domains_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_secondary_dns_domains_post_request is required' if dedicated_server_service_name_secondary_dns_domains_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/secondaryDnsDomains'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_secondary_dns_domains_post_request
        )
      end

      def service_name_secondary_dns_name_domain_token_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/secondaryDnsNameDomainToken'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end

      def service_name_secondary_dns_name_server_available_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/secondaryDnsNameServerAvailable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/serviceInfos'
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
          '/dedicated/server/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_specifications_hardware_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/specifications/hardware'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_specifications_ip_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/specifications/ip'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_specifications_network_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/specifications/network'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_spla_get(service_name:, status: nil, type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/spla'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'status' => status, 'type' => type }
        )
      end

      def service_name_spla_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/spla/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_spla_id_put(id:, service_name:, dedicated_server_spla:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_spla is required' if dedicated_server_spla.nil?

        @connection.call(
          :PUT,
          '/dedicated/server/{serviceName}/spla/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_spla
        )
      end

      def service_name_spla_id_revoke_post(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/spla/{id}/revoke'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_spla_post(service_name:, dedicated_server_service_name_spla_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_spla_post_request is required' if dedicated_server_service_name_spla_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/spla'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_spla_post_request
        )
      end

      def service_name_support_replace_cooling_post(service_name:, dedicated_server_service_name_support_replace_cooling_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_support_replace_cooling_post_request is required' if dedicated_server_service_name_support_replace_cooling_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/support/replace/cooling'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_support_replace_cooling_post_request
        )
      end

      def service_name_support_replace_hard_disk_drive_post(service_name:, dedicated_server_service_name_support_replace_hard_disk_drive_ph4f709625:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_support_replace_hard_disk_drive_ph4f709625 is required' if dedicated_server_service_name_support_replace_hard_disk_drive_ph4f709625.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/support/replace/hardDiskDrive'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_support_replace_hard_disk_drive_ph4f709625
        )
      end

      def service_name_support_replace_memory_post(service_name:, dedicated_server_service_name_support_replace_memory_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_support_replace_memory_post_request is required' if dedicated_server_service_name_support_replace_memory_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/support/replace/memory'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_support_replace_memory_post_request
        )
      end

      def service_name_task_get(service_name:, function: nil, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status }
        )
      end

      def service_name_task_task_id_available_timeslots_get(period_end:, period_start:, service_name:, task_id:)
        raise ArgumentError, 'period_end is required' if period_end.nil?
        raise ArgumentError, 'period_start is required' if period_start.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/task/{taskId}/availableTimeslots'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          query: { 'periodEnd' => period_end, 'periodStart' => period_start }
        )
      end

      def service_name_task_task_id_cancel_post(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/task/{taskId}/cancel'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_task_task_id_get(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/task/{taskId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_task_task_id_schedule_post(service_name:, task_id:, dedicated_server_service_name_task_task_id_schedule_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'dedicated_server_service_name_task_task_id_schedule_post_request is required' if dedicated_server_service_name_task_task_id_schedule_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/task/{taskId}/schedule'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_task_task_id_schedule_post_request
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_mac_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/virtualMac'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_mac_mac_address_get(mac_address:, service_name:)
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/virtualMac/{macAddress}'
            .gsub('{macAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_mac_mac_address_virtual_address_get(mac_address:, service_name:)
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/virtualMac/{macAddress}/virtualAddress'
            .gsub('{macAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_mac_mac_address_virtual_address_ip_address_delete(ip_address:, mac_address:, service_name:)
        raise ArgumentError, 'ip_address is required' if ip_address.nil?
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/server/{serviceName}/virtualMac/{macAddress}/virtualAddress/{ipAddress}'
            .gsub('{ipAddress}', ERB::Util.url_encode(ip_address.to_s))
            .gsub('{macAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_mac_mac_address_virtual_address_ip_address_get(ip_address:, mac_address:, service_name:)
        raise ArgumentError, 'ip_address is required' if ip_address.nil?
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/virtualMac/{macAddress}/virtualAddress/{ipAddress}'
            .gsub('{ipAddress}', ERB::Util.url_encode(ip_address.to_s))
            .gsub('{macAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_mac_mac_address_virtual_address_post(mac_address:, service_name:, dedicated_server_service_name_virtual_mac_mac_address_virtual_ahe926e4c4:)
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_virtual_mac_mac_address_virtual_ahe926e4c4 is required' if dedicated_server_service_name_virtual_mac_mac_address_virtual_ahe926e4c4.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/virtualMac/{macAddress}/virtualAddress'
            .gsub('{macAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_virtual_mac_mac_address_virtual_ahe926e4c4
        )
      end

      def service_name_virtual_mac_post(service_name:, dedicated_server_service_name_virtual_mac_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_server_service_name_virtual_mac_post_request is required' if dedicated_server_service_name_virtual_mac_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/virtualMac'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_server_service_name_virtual_mac_post_request
        )
      end

      def service_name_virtual_network_interface_get(service_name:, enabled: nil, mode: nil, name: nil, vrack: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/virtualNetworkInterface'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'enabled' => enabled, 'mode' => mode, 'name' => name, 'vrack' => vrack }
        )
      end

      def service_name_virtual_network_interface_uuid_disable_post(service_name:, uuid:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uuid is required' if uuid.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/virtualNetworkInterface/{uuid}/disable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uuid}', ERB::Util.url_encode(uuid.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_network_interface_uuid_enable_post(service_name:, uuid:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uuid is required' if uuid.nil?

        @connection.call(
          :POST,
          '/dedicated/server/{serviceName}/virtualNetworkInterface/{uuid}/enable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uuid}', ERB::Util.url_encode(uuid.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_network_interface_uuid_get(service_name:, uuid:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uuid is required' if uuid.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/virtualNetworkInterface/{uuid}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uuid}', ERB::Util.url_encode(uuid.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_virtual_network_interface_uuid_put(service_name:, uuid:, dedicated_virtual_network_interface_virtual_network_interface:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uuid is required' if uuid.nil?
        raise ArgumentError, 'dedicated_virtual_network_interface_virtual_network_interface is required' if dedicated_virtual_network_interface_virtual_network_interface.nil?

        @connection.call(
          :PUT,
          '/dedicated/server/{serviceName}/virtualNetworkInterface/{uuid}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uuid}', ERB::Util.url_encode(uuid.to_s)),
          type: nil,
          auth: [],
          body: dedicated_virtual_network_interface_virtual_network_interface
        )
      end

      def service_name_vrack_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/vrack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_vrack_vrack_delete(service_name:, vrack:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack is required' if vrack.nil?

        @connection.call(
          :DELETE,
          '/dedicated/server/{serviceName}/vrack/{vrack}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrack}', ERB::Util.url_encode(vrack.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_vrack_vrack_get(service_name:, vrack:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack is required' if vrack.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/vrack/{vrack}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrack}', ERB::Util.url_encode(vrack.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_vrack_vrack_mrtg_get(period:, service_name:, type:, vrack:)
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?
        raise ArgumentError, 'vrack is required' if vrack.nil?

        @connection.call(
          :GET,
          '/dedicated/server/{serviceName}/vrack/{vrack}/mrtg'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vrack}', ERB::Util.url_encode(vrack.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end

      def virtual_network_interface_uuid_get(uuid:)
        raise ArgumentError, 'uuid is required' if uuid.nil?

        @connection.call(
          :GET,
          '/dedicated/server/virtualNetworkInterface/{uuid}'
            .gsub('{uuid}', ERB::Util.url_encode(uuid.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
