# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::Datacenter
      def initialize(connection)
        @connection = connection
      end

      def backup(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def backup_batch_restore(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_backup_bhe3dbdf93:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_backup_bhe3dbdf93 is required' if dedicated_cloud_service_name_datacenter_datacenter_id_backup_bhe3dbdf93.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup/batchRestore'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_backup_bhe3dbdf93
        )
      end

      def backup_can_optimize_proxies(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup/canOptimizeProxies'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def backup_change_properties(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_backup_ch699f37ea:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_backup_ch699f37ea is required' if dedicated_cloud_service_name_datacenter_datacenter_id_backup_ch699f37ea.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup/changeProperties'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_backup_ch699f37ea
        )
      end

      def backup_disable(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup/disable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def backup_enable(datacenter_id:, service_name:, body: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup/enable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def backup_generate_report(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup/generateReport'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def backup_offer_capabilities(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup/offerCapabilities'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def backup_optimize_proxies(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backup/optimizeProxies'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def backup_repository(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backupRepository'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def backup_repository_get(datacenter_id:, repository_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'repository_id is required' if repository_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/backupRepository/{repositoryId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{repositoryId}', ERB::Util.url_encode(repository_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def check_backup_jobs(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/checkBackupJobs'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cluster(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/cluster'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cluster_get(cluster_id:, datacenter_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/cluster/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cluster_nsxt(cluster_id:, datacenter_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :PUT,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/cluster/{clusterId}/nsxt'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cluster_nsxt_delete(cluster_id:, datacenter_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/cluster/{clusterId}/nsxt'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cluster_nsxt_post(cluster_id:, datacenter_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/cluster/{clusterId}/nsxt'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def create(service_name:, dedicated_cloud_service_name_datacenter_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_post_request is required' if dedicated_cloud_service_name_datacenter_post_request.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_post_request
        )
      end

      def delete(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_disable(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h86a9529b:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h86a9529b is required' if dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h86a9529b.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/disable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h86a9529b
        )
      end

      def disaster_recovery_zerto_enable(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h089803c6:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h089803c6 is required' if dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h089803c6.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/enable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h089803c6
        )
      end

      def disaster_recovery_zerto_end_migration(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/endMigration'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_endpoint_public_ip(datacenter_id:, service_name:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/endpointPublicIp'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def disaster_recovery_zerto_remote_sites(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/remoteSites'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_remote_sites_delete(datacenter_id:, id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/remoteSites'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'id' => id }
        )
      end

      def disaster_recovery_zerto_remote_sites_post(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h7f75001d:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h7f75001d is required' if dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h7f75001d.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/remoteSites'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h7f75001d
        )
      end

      def disaster_recovery_zerto_request_health_check(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/requestHealthCheck'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_single_configure_vpn(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_disaster_hf0523897:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_disaster_hf0523897 is required' if dedicated_cloud_service_name_datacenter_datacenter_id_disaster_hf0523897.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/configureVpn'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_disaster_hf0523897
        )
      end

      def disaster_recovery_zerto_single_default_local_vra_network(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/defaultLocalVraNetwork'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_single_disable(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/disable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_single_enable(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h483d653a:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h483d653a is required' if dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h483d653a.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/enable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h483d653a
        )
      end

      def disaster_recovery_zerto_single_endpoint_public_ip(datacenter_id:, service_name:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/endpointPublicIp'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def disaster_recovery_zerto_single_remote_sites(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/remoteSites'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_single_remote_sites_delete(datacenter_id:, id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/remoteSites'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'id' => id }
        )
      end

      def disaster_recovery_zerto_single_remote_sites_post(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h7f75001d:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h7f75001d is required' if dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h7f75001d.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/remoteSites'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h7f75001d
        )
      end

      def disaster_recovery_zerto_single_request_pairing_token(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/requestPairingToken'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_single_vra_resources(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/vraResources'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_single_vra_resources_post(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h4aca9df3:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h4aca9df3 is required' if dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h4aca9df3.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zertoSingle/vraResources'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h4aca9df3
        )
      end

      def disaster_recovery_zerto_start_migration(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/startMigration'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_status(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/status'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_usage_report(datacenter_id:, month:, service_name:, year:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'month is required' if month.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'year is required' if year.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/usageReport'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'month' => month, 'year' => year }
        )
      end

      def disaster_recovery_zerto_vra_resources(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/vraResources'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def disaster_recovery_zerto_vra_resources_post(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h4aca9df3:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h4aca9df3 is required' if dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h4aca9df3.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/disasterRecovery/zerto/vraResources'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_disaster_h4aca9df3
        )
      end

      def filer(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def filer_check_global_compatible(datacenter_id:, filer_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/checkGlobalCompatible'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def filer_convert_to_global(datacenter_id:, filer_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/convertToGlobal'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def filer_get(datacenter_id:, filer_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def filer_hourly_consumption(datacenter_id:, filer_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/hourlyConsumption'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def filer_location(datacenter_id:, filer_id:, service_name:, node: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/location'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'node' => node }
        )
      end

      def filer_remove(datacenter_id:, filer_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/remove'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def filer_task(datacenter_id:, filer_id:, service_name:, name: nil, state: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/task'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'state' => state }
        )
      end

      def filer_task_change_maintenance_execution_date(datacenter_id:, filer_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/task/{taskId}/changeMaintenanceExecutionDate'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def filer_task_get(datacenter_id:, filer_id:, service_name:, task_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/task/{taskId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def filer_task_reset_task_state(datacenter_id:, filer_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/filer/{filerId}/task/{taskId}/resetTaskState'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def get(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_add_host_spare(datacenter_id:, host_id:, service_name:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/addHostSpare'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def host_get(datacenter_id:, host_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_hourly_consumption(datacenter_id:, host_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/hourlyConsumption'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_location(datacenter_id:, host_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/location'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_remove(datacenter_id:, host_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/remove'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_resilience(datacenter_id:, host_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/resilience'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_resilience_can_be_enabled(datacenter_id:, host_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/resilience/canBeEnabled'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_resilience_disable(datacenter_id:, host_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/resilience/disable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_resilience_enable(datacenter_id:, host_id:, service_name:, body: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/resilience/enable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def host_task(datacenter_id:, host_id:, service_name:, name: nil, state: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/task'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'state' => state }
        )
      end

      def host_task_change_maintenance_execution_date(datacenter_id:, host_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/task/{taskId}/changeMaintenanceExecutionDate'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def host_task_get(datacenter_id:, host_id:, service_name:, task_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/task/{taskId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_task_reset_task_state(datacenter_id:, host_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'host_id is required' if host_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/host/{hostId}/task/{taskId}/resetTaskState'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{hostId}', ERB::Util.url_encode(host_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edge(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edge_delete(datacenter_id:, nsxt_edge_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'nsxt_edge_id is required' if nsxt_edge_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge/{nsxtEdgeId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{nsxtEdgeId}', ERB::Util.url_encode(nsxt_edge_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edge_get(datacenter_id:, nsxt_edge_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'nsxt_edge_id is required' if nsxt_edge_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge/{nsxtEdgeId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{nsxtEdgeId}', ERB::Util.url_encode(nsxt_edge_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edge_post(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edge_relocate_edge(datacenter_id:, nsxt_edge_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_nsxt_edg_ha889924e: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'nsxt_edge_id is required' if nsxt_edge_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge/{nsxtEdgeId}/relocateEdge'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{nsxtEdgeId}', ERB::Util.url_encode(nsxt_edge_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_nsxt_edg_ha889924e
        )
      end

      def nsxt_edge_resilience(datacenter_id:, nsxt_edge_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'nsxt_edge_id is required' if nsxt_edge_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge/{nsxtEdgeId}/resilience'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{nsxtEdgeId}', ERB::Util.url_encode(nsxt_edge_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edge_resilience_can_be_enabled(datacenter_id:, nsxt_edge_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'nsxt_edge_id is required' if nsxt_edge_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge/{nsxtEdgeId}/resilience/canBeEnabled'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{nsxtEdgeId}', ERB::Util.url_encode(nsxt_edge_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edge_resilience_disable(datacenter_id:, nsxt_edge_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'nsxt_edge_id is required' if nsxt_edge_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge/{nsxtEdgeId}/resilience/disable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{nsxtEdgeId}', ERB::Util.url_encode(nsxt_edge_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edge_resilience_enable(datacenter_id:, nsxt_edge_id:, service_name:, body: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'nsxt_edge_id is required' if nsxt_edge_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdge/{nsxtEdgeId}/resilience/enable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{nsxtEdgeId}', ERB::Util.url_encode(nsxt_edge_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def nsxt_edges_resizing_capabilities(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdgesResizingCapabilities'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def nsxt_edges_scaling_capabilities(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/nsxtEdgesScalingCapabilities'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def order_new_filer_hourly(datacenter_id:, service_name:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/orderNewFilerHourly'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def order_new_host_hourly(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_order_ne_hd963640c:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_order_ne_hd963640c is required' if dedicated_cloud_service_name_datacenter_datacenter_id_order_ne_hd963640c.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/orderNewHostHourly'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_order_ne_hd963640c
        )
      end

      def orderable_filer_profiles(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/orderableFilerProfiles'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def orderable_host_profiles(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/orderableHostProfiles'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def private_gateway(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/privateGateway'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def private_gateway_disable(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/privateGateway/disable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def private_gateway_enable(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_private_gh7f7b6e87:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_private_gh7f7b6e87 is required' if dedicated_cloud_service_name_datacenter_datacenter_id_private_gh7f7b6e87.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/privateGateway/enable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_private_gh7f7b6e87
        )
      end

      def private_gateway_reconfigure(datacenter_id:, service_name:, dedicated_cloud_service_name_datacenter_datacenter_id_private_gh244e69e1: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/privateGateway/reconfigure'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_private_gh244e69e1
        )
      end

      def resize_nsxt_edge_cluster(datacenter_id:, service_name:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/resizeNsxtEdgeCluster'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def task(datacenter_id:, service_name:, name: nil, state: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/task'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'state' => state }
        )
      end

      def task_change_maintenance_execution_date(datacenter_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/task/{taskId}/changeMaintenanceExecutionDate'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def task_get(datacenter_id:, service_name:, task_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/task/{taskId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def task_reset_task_state(datacenter_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/task/{taskId}/resetTaskState'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def update(datacenter_id:, service_name:, dedicated_cloud_datacenter:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_datacenter is required' if dedicated_cloud_datacenter.nil?

        @connection.call(
          :PUT,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_datacenter
        )
      end

      def vm(datacenter_id:, service_name:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def vm_backup_job(datacenter_id:, service_name:, vm_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/backupJob'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def vm_backup_job_disable(datacenter_id:, service_name:, vm_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/backupJob/disable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def vm_backup_job_enable(datacenter_id:, service_name:, vm_id:, dedicated_cloud_backup_backup_days_enum:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'dedicated_cloud_backup_backup_days_enum is required' if dedicated_cloud_backup_backup_days_enum.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/backupJob/enable'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_backup_backup_days_enum
        )
      end

      def vm_backup_job_post(datacenter_id:, service_name:, vm_id:, dedicated_cloud_backup_backup_days_enum:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'dedicated_cloud_backup_backup_days_enum is required' if dedicated_cloud_backup_backup_days_enum.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/backupJob'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_backup_backup_days_enum
        )
      end

      def vm_backup_job_restore_points(datacenter_id:, service_name:, vm_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/backupJob/restorePoints'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def vm_backup_job_restore_points_get(datacenter_id:, restore_point_id:, service_name:, vm_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'restore_point_id is required' if restore_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/backupJob/restorePoints/{restorePointId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{restorePointId}', ERB::Util.url_encode(restore_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def vm_backup_job_restore_points_restore(datacenter_id:, restore_point_id:, service_name:, vm_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'restore_point_id is required' if restore_point_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/backupJob/restorePoints/{restorePointId}/restore'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{restorePointId}', ERB::Util.url_encode(restore_point_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def vm_disable_backup(datacenter_id:, service_name:, vm_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/disableBackup'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def vm_disable_carp(datacenter_id:, service_name:, vm_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/disableCarp'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def vm_edit_backup(datacenter_id:, service_name:, vm_id:, dedicated_cloud_backup_backup_days_enum:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'dedicated_cloud_backup_backup_days_enum is required' if dedicated_cloud_backup_backup_days_enum.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/editBackup'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_backup_backup_days_enum
        )
      end

      def vm_enable_backup(datacenter_id:, service_name:, vm_id:, dedicated_cloud_backup_backup_days_enum:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'dedicated_cloud_backup_backup_days_enum is required' if dedicated_cloud_backup_backup_days_enum.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/enableBackup'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_backup_backup_days_enum
        )
      end

      def vm_enable_carp(datacenter_id:, service_name:, vm_id:, body:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/enableCarp'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def vm_get(datacenter_id:, service_name:, vm_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def vm_licensed(datacenter_id:, service_name:, kms_license: nil)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vmLicensed'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kmsLicense' => kms_license }
        )
      end

      def vm_remove_license(datacenter_id:, service_name:, vm_id:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/removeLicense'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def vm_restore_backup(datacenter_id:, service_name:, vm_id:, dedicated_cloud_service_name_datacenter_datacenter_id_vm_vm_id_hde378552:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_vm_vm_id_hde378552 is required' if dedicated_cloud_service_name_datacenter_datacenter_id_vm_vm_id_hde378552.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/restoreBackup'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_vm_vm_id_hde378552
        )
      end

      def vm_set_license(datacenter_id:, service_name:, vm_id:, dedicated_cloud_service_name_datacenter_datacenter_id_vm_vm_id_ha375f45d:)
        raise ArgumentError, 'datacenter_id is required' if datacenter_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vm_id is required' if vm_id.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_datacenter_datacenter_id_vm_vm_id_ha375f45d is required' if dedicated_cloud_service_name_datacenter_datacenter_id_vm_vm_id_ha375f45d.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/datacenter/{datacenterId}/vm/{vmId}/setLicense'
            .gsub('{datacenterId}', ERB::Util.url_encode(datacenter_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{vmId}', ERB::Util.url_encode(vm_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_datacenter_datacenter_id_vm_vm_id_ha375f45d
        )
      end
    end
  end
end
