# frozen_string_literal: true

module Ovh::Api
  module Api
    class Dedicated::Ceph
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/dedicated/ceph',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_acl_acl_id_delete(acl_id:, service_name:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/ceph/{serviceName}/acl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_acl_acl_id_get(acl_id:, service_name:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/acl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_acl_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/acl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_acl_post(service_name:, dedicated_ceph_acl_create:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_ceph_acl_create is required' if dedicated_ceph_acl_create.nil?

        @connection.call(
          :POST,
          '/dedicated/ceph/{serviceName}/acl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_ceph_acl_create
        )
      end

      def service_name_cephfs_fs_name_delete(fs_name:, service_name:)
        raise ArgumentError, 'fs_name is required' if fs_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/ceph/{serviceName}/cephfs/{fsName}'
            .gsub('{fsName}', ERB::Util.url_encode(fs_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cephfs_fs_name_disable_post(fs_name:, service_name:)
        raise ArgumentError, 'fs_name is required' if fs_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/ceph/{serviceName}/cephfs/{fsName}/disable'
            .gsub('{fsName}', ERB::Util.url_encode(fs_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cephfs_fs_name_enable_post(fs_name:, service_name:)
        raise ArgumentError, 'fs_name is required' if fs_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicated/ceph/{serviceName}/cephfs/{fsName}/enable'
            .gsub('{fsName}', ERB::Util.url_encode(fs_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cephfs_fs_name_get(fs_name:, service_name:)
        raise ArgumentError, 'fs_name is required' if fs_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/cephfs/{fsName}'
            .gsub('{fsName}', ERB::Util.url_encode(fs_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cephfs_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/cephfs'
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
          '/dedicated/ceph/{serviceName}/changeContact'
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
          '/dedicated/ceph/{serviceName}/confirmTermination'
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
          '/dedicated/ceph/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_health_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/health'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_osd_blocklist_address_delete(address:, service_name:)
        raise ArgumentError, 'address is required' if address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/ceph/{serviceName}/osd/blocklist/{address}'
            .gsub('{address}', ERB::Util.url_encode(address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_osd_blocklist_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/osd/blocklist'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_pool_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/pool'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_pool_pool_name_allow_deletion_put(pool_name:, service_name:)
        raise ArgumentError, 'pool_name is required' if pool_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :PUT,
          '/dedicated/ceph/{serviceName}/pool/{poolName}/allowDeletion'
            .gsub('{poolName}', ERB::Util.url_encode(pool_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_pool_pool_name_delete(pool_name:, service_name:)
        raise ArgumentError, 'pool_name is required' if pool_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/ceph/{serviceName}/pool/{poolName}'
            .gsub('{poolName}', ERB::Util.url_encode(pool_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_pool_pool_name_get(pool_name:, service_name:)
        raise ArgumentError, 'pool_name is required' if pool_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/pool/{poolName}'
            .gsub('{poolName}', ERB::Util.url_encode(pool_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_pool_post(service_name:, dedicated_ceph_pool_create:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_ceph_pool_create is required' if dedicated_ceph_pool_create.nil?

        @connection.call(
          :POST,
          '/dedicated/ceph/{serviceName}/pool'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_ceph_pool_create
        )
      end

      def service_name_put(service_name:, dedicated_ceph_update_cluster_details:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_ceph_update_cluster_details is required' if dedicated_ceph_update_cluster_details.nil?

        @connection.call(
          :PUT,
          '/dedicated/ceph/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_ceph_update_cluster_details
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/serviceInfos'
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
          '/dedicated/ceph/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_task_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_task_task_id_get(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/task/{taskId}'
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
          '/dedicated/ceph/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_post(service_name:, dedicated_ceph_user_create:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_ceph_user_create is required' if dedicated_ceph_user_create.nil?

        @connection.call(
          :POST,
          '/dedicated/ceph/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_ceph_user_create
        )
      end

      def service_name_user_user_name_delete(service_name:, user_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/ceph/{serviceName}/user/{userName}'
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
          '/dedicated/ceph/{serviceName}/user/{userName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_name_pool_get(service_name:, user_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?

        @connection.call(
          :GET,
          '/dedicated/ceph/{serviceName}/user/{userName}/pool'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_name_pool_pool_name_delete(pool_name:, service_name:, user_name:)
        raise ArgumentError, 'pool_name is required' if pool_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?

        @connection.call(
          :DELETE,
          '/dedicated/ceph/{serviceName}/user/{userName}/pool/{poolName}'
            .gsub('{poolName}', ERB::Util.url_encode(pool_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_name_pool_post(service_name:, user_name:, dedicated_ceph_user_pool_create_permissions:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?
        raise ArgumentError, 'dedicated_ceph_user_pool_create_permissions is required' if dedicated_ceph_user_pool_create_permissions.nil?

        @connection.call(
          :POST,
          '/dedicated/ceph/{serviceName}/user/{userName}/pool'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_ceph_user_pool_create_permissions
        )
      end

      def service_name_user_user_name_pool_put(service_name:, user_name:, dedicated_ceph_user_pool_update_permission:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_name is required' if user_name.nil?
        raise ArgumentError, 'dedicated_ceph_user_pool_update_permission is required' if dedicated_ceph_user_pool_update_permission.nil?

        @connection.call(
          :PUT,
          '/dedicated/ceph/{serviceName}/user/{userName}/pool'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userName}', ERB::Util.url_encode(user_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_ceph_user_pool_update_permission
        )
      end
    end
  end
end
