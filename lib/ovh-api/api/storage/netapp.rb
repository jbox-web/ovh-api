# frozen_string_literal: true

module Ovh::Api
  module Api
    class Storage::Netapp
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/storage/netapp',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_change_contact_post(service_name:, services_change_contact:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_change_contact is required' if services_change_contact.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/changeContact'
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
          '/storage/netapp/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_confirm_termination
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_metrics_token_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/metricsToken'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_get(service_name:, detail: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/network'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'detail' => detail }
        )
      end

      def service_name_network_network_id_get(network_id:, service_name:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/network/{networkId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, storage_net_app_service_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'storage_net_app_service_update is required' if storage_net_app_service_update.nil?

        @connection.call(
          :PUT,
          '/storage/netapp/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_service_update
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/serviceInfos'
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
          '/storage/netapp/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_share_get(service_name:, detail: nil, mount_point_name: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'detail' => detail, 'mountPointName' => mount_point_name }
        )
      end

      def service_name_share_post(service_name:, storage_net_app_share:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'storage_net_app_share is required' if storage_net_app_share.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/share'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share
        )
      end

      def service_name_share_replication_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/shareReplication'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_replication_post(service_name:, storage_net_app_share_replication_create:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'storage_net_app_share_replication_create is required' if storage_net_app_share_replication_create.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/shareReplication'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_replication_create
        )
      end

      def service_name_share_replication_services_compatibility_get(service_name:, compatible_only: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/shareReplicationServicesCompatibility'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'compatibleOnly' => compatible_only }
        )
      end

      def service_name_share_replication_share_replication_id_accept_post(service_name:, share_replication_id:, storage_net_app_share_replication_accept:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_replication_id is required' if share_replication_id.nil?
        raise ArgumentError, 'storage_net_app_share_replication_accept is required' if storage_net_app_share_replication_accept.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/shareReplication/{shareReplicationId}/accept'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareReplicationId}', ERB::Util.url_encode(share_replication_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_replication_accept
        )
      end

      def service_name_share_replication_share_replication_id_cutover_post(service_name:, share_replication_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_replication_id is required' if share_replication_id.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/shareReplication/{shareReplicationId}/cutover'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareReplicationId}', ERB::Util.url_encode(share_replication_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_replication_share_replication_id_delete(service_name:, share_replication_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_replication_id is required' if share_replication_id.nil?

        @connection.call(
          :DELETE,
          '/storage/netapp/{serviceName}/shareReplication/{shareReplicationId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareReplicationId}', ERB::Util.url_encode(share_replication_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_replication_share_replication_id_get(service_name:, share_replication_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_replication_id is required' if share_replication_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/shareReplication/{shareReplicationId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareReplicationId}', ERB::Util.url_encode(share_replication_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_access_path_access_path_id_get(access_path_id:, service_name:, share_id:)
        raise ArgumentError, 'access_path_id is required' if access_path_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}/accessPath/{accessPathId}'
            .gsub('{accessPathId}', ERB::Util.url_encode(access_path_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_access_path_get(service_name:, share_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}/accessPath'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_acl_acl_rule_id_delete(acl_rule_id:, service_name:, share_id:)
        raise ArgumentError, 'acl_rule_id is required' if acl_rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :DELETE,
          '/storage/netapp/{serviceName}/share/{shareId}/acl/{aclRuleId}'
            .gsub('{aclRuleId}', ERB::Util.url_encode(acl_rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_acl_acl_rule_id_get(acl_rule_id:, service_name:, share_id:)
        raise ArgumentError, 'acl_rule_id is required' if acl_rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}/acl/{aclRuleId}'
            .gsub('{aclRuleId}', ERB::Util.url_encode(acl_rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_acl_get(service_name:, share_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}/acl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_acl_post(service_name:, share_id:, storage_net_app_share_acl_rule:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'storage_net_app_share_acl_rule is required' if storage_net_app_share_acl_rule.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/share/{shareId}/acl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_acl_rule
        )
      end

      def service_name_share_share_id_delete(service_name:, share_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :DELETE,
          '/storage/netapp/{serviceName}/share/{shareId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_extend_post(service_name:, share_id:, storage_net_app_share_extend_or_shrink:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'storage_net_app_share_extend_or_shrink is required' if storage_net_app_share_extend_or_shrink.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/share/{shareId}/extend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_extend_or_shrink
        )
      end

      def service_name_share_share_id_get(service_name:, share_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_put(service_name:, share_id:, storage_net_app_share_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'storage_net_app_share_update is required' if storage_net_app_share_update.nil?

        @connection.call(
          :PUT,
          '/storage/netapp/{serviceName}/share/{shareId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_update
        )
      end

      def service_name_share_share_id_revert_post(service_name:, share_id:, storage_net_app_share_revert_to_snapshot:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'storage_net_app_share_revert_to_snapshot is required' if storage_net_app_share_revert_to_snapshot.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/share/{shareId}/revert'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_revert_to_snapshot
        )
      end

      def service_name_share_share_id_shrink_post(service_name:, share_id:, storage_net_app_share_extend_or_shrink:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'storage_net_app_share_extend_or_shrink is required' if storage_net_app_share_extend_or_shrink.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/share/{shareId}/shrink'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_extend_or_shrink
        )
      end

      def service_name_share_share_id_snapshot_get(service_name:, share_id:, detail: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          query: { 'detail' => detail }
        )
      end

      def service_name_share_share_id_snapshot_policy_get(service_name:, share_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshotPolicy'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_snapshot_policy_put(service_name:, share_id:, storage_net_app_share_snapshot_policy_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'storage_net_app_share_snapshot_policy_update is required' if storage_net_app_share_snapshot_policy_update.nil?

        @connection.call(
          :PUT,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshotPolicy'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_snapshot_policy_update
        )
      end

      def service_name_share_share_id_snapshot_post(service_name:, share_id:, storage_net_app_share_snapshot:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'storage_net_app_share_snapshot is required' if storage_net_app_share_snapshot.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_snapshot
        )
      end

      def service_name_share_share_id_snapshot_reserve_get(service_name:, share_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshotReserve'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_snapshot_reserve_put(service_name:, share_id:, storage_net_app_share_snapshot_reserve_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'storage_net_app_share_snapshot_reserve_update is required' if storage_net_app_share_snapshot_reserve_update.nil?

        @connection.call(
          :PUT,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshotReserve'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_snapshot_reserve_update
        )
      end

      def service_name_share_share_id_snapshot_snapshot_id_delete(service_name:, share_id:, snapshot_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'snapshot_id is required' if snapshot_id.nil?

        @connection.call(
          :DELETE,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshot/{snapshotId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s))
            .gsub('{snapshotId}', ERB::Util.url_encode(snapshot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_snapshot_snapshot_id_get(service_name:, share_id:, snapshot_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'snapshot_id is required' if snapshot_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshot/{snapshotId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s))
            .gsub('{snapshotId}', ERB::Util.url_encode(snapshot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_snapshot_snapshot_id_hold_post(service_name:, share_id:, snapshot_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'snapshot_id is required' if snapshot_id.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshot/{snapshotId}/hold'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s))
            .gsub('{snapshotId}', ERB::Util.url_encode(snapshot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_share_share_id_snapshot_snapshot_id_put(service_name:, share_id:, snapshot_id:, storage_net_app_share_snapshot_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'snapshot_id is required' if snapshot_id.nil?
        raise ArgumentError, 'storage_net_app_share_snapshot_update is required' if storage_net_app_share_snapshot_update.nil?

        @connection.call(
          :PUT,
          '/storage/netapp/{serviceName}/share/{shareId}/snapshot/{snapshotId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s))
            .gsub('{snapshotId}', ERB::Util.url_encode(snapshot_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_share_snapshot_update
        )
      end

      def service_name_snapshot_policy_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/snapshotPolicy'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_snapshot_policy_post(service_name:, storage_net_app_snapshot_policy:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'storage_net_app_snapshot_policy is required' if storage_net_app_snapshot_policy.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/snapshotPolicy'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_snapshot_policy
        )
      end

      def service_name_snapshot_policy_snapshot_policy_id_delete(service_name:, snapshot_policy_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'snapshot_policy_id is required' if snapshot_policy_id.nil?

        @connection.call(
          :DELETE,
          '/storage/netapp/{serviceName}/snapshotPolicy/{snapshotPolicyId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{snapshotPolicyId}', ERB::Util.url_encode(snapshot_policy_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_snapshot_policy_snapshot_policy_id_get(service_name:, snapshot_policy_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'snapshot_policy_id is required' if snapshot_policy_id.nil?

        @connection.call(
          :GET,
          '/storage/netapp/{serviceName}/snapshotPolicy/{snapshotPolicyId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{snapshotPolicyId}', ERB::Util.url_encode(snapshot_policy_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_snapshot_policy_snapshot_policy_id_put(service_name:, snapshot_policy_id:, storage_net_app_snapshot_policy_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'snapshot_policy_id is required' if snapshot_policy_id.nil?
        raise ArgumentError, 'storage_net_app_snapshot_policy_update is required' if storage_net_app_snapshot_policy_update.nil?

        @connection.call(
          :PUT,
          '/storage/netapp/{serviceName}/snapshotPolicy/{snapshotPolicyId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{snapshotPolicyId}', ERB::Util.url_encode(snapshot_policy_id.to_s)),
          type: nil,
          auth: [],
          body: storage_net_app_snapshot_policy_update
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/storage/netapp/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
