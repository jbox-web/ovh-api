# frozen_string_literal: true

module Ovh::Api
  module Api
    class Dedicated::Nasha
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/dedicated/nasha',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_change_contact_post(service_name:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/nasha/{serviceName}/changeContact'
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
          '/dedicated/nasha/{serviceName}/confirmTermination'
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
          '/dedicated/nasha/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_metrics_token_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/metricsToken'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_access_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/access'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_access_ip_delete(ip:, partition_name:, service_name:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/access/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_access_ip_get(ip:, partition_name:, service_name:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/access/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_access_post(partition_name:, service_name:, dedicated_nasha_service_name_partition_partition_name_access_phf45ed9d3:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_nasha_service_name_partition_partition_name_access_phf45ed9d3 is required' if dedicated_nasha_service_name_partition_partition_name_access_phf45ed9d3.nil?

        @connection.call(
          :POST,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/access'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_nasha_service_name_partition_partition_name_access_phf45ed9d3
        )
      end

      def service_name_partition_partition_name_authorizable_blocks_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/authorizableBlocks'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_authorizable_ips_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/authorizableIps'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_custom_snapshot_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/customSnapshot'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_custom_snapshot_name_delete(name:, partition_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/customSnapshot/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_custom_snapshot_name_get(name:, partition_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/customSnapshot/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_custom_snapshot_post(partition_name:, service_name:, dedicated_nasha_service_name_partition_partition_name_custom_sh918be914:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_nasha_service_name_partition_partition_name_custom_sh918be914 is required' if dedicated_nasha_service_name_partition_partition_name_custom_sh918be914.nil?

        @connection.call(
          :POST,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/customSnapshot'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_nasha_service_name_partition_partition_name_custom_sh918be914
        )
      end

      def service_name_partition_partition_name_delete(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_options_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/options'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_options_post(partition_name:, service_name:, dedicated_nasha_service_name_partition_partition_name_options_ph10fa2c9b: nil)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/options'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_nasha_service_name_partition_partition_name_options_ph10fa2c9b
        )
      end

      def service_name_partition_partition_name_put(partition_name:, service_name:, dedicated_nasha_partition:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_nasha_partition is required' if dedicated_nasha_partition.nil?

        @connection.call(
          :PUT,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_nasha_partition
        )
      end

      def service_name_partition_partition_name_quota_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/quota'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_quota_post(partition_name:, service_name:, dedicated_nasha_service_name_partition_partition_name_quota_post_request:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_nasha_service_name_partition_partition_name_quota_post_request is required' if dedicated_nasha_service_name_partition_partition_name_quota_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/quota'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_nasha_service_name_partition_partition_name_quota_post_request
        )
      end

      def service_name_partition_partition_name_quota_uid_delete(partition_name:, service_name:, uid:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uid is required' if uid.nil?

        @connection.call(
          :DELETE,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/quota/{uid}'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uid}', ERB::Util.url_encode(uid.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_quota_uid_get(partition_name:, service_name:, uid:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uid is required' if uid.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/quota/{uid}'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uid}', ERB::Util.url_encode(uid.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_snapshot_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/snapshot'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_snapshot_post(partition_name:, service_name:, body:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/snapshot'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_partition_partition_name_snapshot_snapshot_type_delete(partition_name:, service_name:, snapshot_type:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'snapshot_type is required' if snapshot_type.nil?

        @connection.call(
          :DELETE,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/snapshot/{snapshotType}'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{snapshotType}', ERB::Util.url_encode(snapshot_type.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_snapshot_snapshot_type_get(partition_name:, service_name:, snapshot_type:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'snapshot_type is required' if snapshot_type.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/snapshot/{snapshotType}'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{snapshotType}', ERB::Util.url_encode(snapshot_type.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_template_usage_get(partition_name:, service_name:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/templateUsage'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_partition_partition_name_use_get(partition_name:, service_name:, type:)
        raise ArgumentError, 'partition_name is required' if partition_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/partition/{partitionName}/use'
            .gsub('{partitionName}', ERB::Util.url_encode(partition_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def service_name_partition_post(service_name:, dedicated_nasha_service_name_partition_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_nasha_service_name_partition_post_request is required' if dedicated_nasha_service_name_partition_post_request.nil?

        @connection.call(
          :POST,
          '/dedicated/nasha/{serviceName}/partition'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_nasha_service_name_partition_post_request
        )
      end

      def service_name_put(service_name:, dedicated_nasha_storage:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_nasha_storage is required' if dedicated_nasha_storage.nil?

        @connection.call(
          :PUT,
          '/dedicated/nasha/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_nasha_storage
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/serviceInfos'
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
          '/dedicated/nasha/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_task_get(service_name:, operation: nil, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'operation' => operation, 'status' => status }
        )
      end

      def service_name_task_task_id_get(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicated/nasha/{serviceName}/task/{taskId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/nasha/{serviceName}/terminate'
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
          '/dedicated/nasha/{serviceName}/use'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end
    end
  end
end
