# frozen_string_literal: true

module Ovh::Api
  module Api
    class Cluster::Hadoop
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/cluster/hadoop',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def order_informations_get
        @connection.call(
          :GET,
          '/cluster/hadoop/orderInformations',
          type: nil,
          auth: []
        )
      end

      def orderable_node_profiles_get
        @connection.call(
          :GET,
          '/cluster/hadoop/orderableNodeProfiles',
          type: nil,
          auth: []
        )
      end

      def service_name_consumptions_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/consumptions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_acl_block_delete(block:, service_name:)
        raise ArgumentError, 'block is required' if block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cluster/hadoop/{serviceName}/networkAcl/{block}'
            .gsub('{block}', ERB::Util.url_encode(block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_acl_block_get(block:, service_name:)
        raise ArgumentError, 'block is required' if block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/networkAcl/{block}'
            .gsub('{block}', ERB::Util.url_encode(block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_acl_block_put(block:, service_name:, cluster_hadoop_network_acl:)
        raise ArgumentError, 'block is required' if block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cluster_hadoop_network_acl is required' if cluster_hadoop_network_acl.nil?

        @connection.call(
          :PUT,
          '/cluster/hadoop/{serviceName}/networkAcl/{block}'
            .gsub('{block}', ERB::Util.url_encode(block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cluster_hadoop_network_acl
        )
      end

      def service_name_network_acl_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/networkAcl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_acl_post(service_name:, cluster_hadoop_service_name_network_acl_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/networkAcl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cluster_hadoop_service_name_network_acl_post_request
        )
      end

      def service_name_node_billing_profiles_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/nodeBillingProfiles'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_consumptions_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/nodeConsumptions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_get(service_name:, software_profile: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/node'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'softwareProfile' => software_profile }
        )
      end

      def service_name_node_hostname_decommission_post(hostname:, service_name:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/node/{hostname}/decommission'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_delete(hostname:, service_name:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cluster/hadoop/{serviceName}/node/{hostname}'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_get(hostname:, service_name:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/node/{hostname}'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_recommission_post(hostname:, service_name:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/node/{hostname}/recommission'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_role_get(hostname:, service_name:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/node/{hostname}/role'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_role_post(hostname:, service_name:, body:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/node/{hostname}/role'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_node_hostname_role_type_delete(hostname:, service_name:, type:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :DELETE,
          '/cluster/hadoop/{serviceName}/node/{hostname}/role/{type}'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{type}', ERB::Util.url_encode(type.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_role_type_get(hostname:, service_name:, type:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/node/{hostname}/role/{type}'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{type}', ERB::Util.url_encode(type.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_role_type_restart_post(hostname:, service_name:, type:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/node/{hostname}/role/{type}/restart'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{type}', ERB::Util.url_encode(type.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_role_type_start_post(hostname:, service_name:, type:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/node/{hostname}/role/{type}/start'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{type}', ERB::Util.url_encode(type.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_node_hostname_role_type_stop_post(hostname:, service_name:, type:)
        raise ArgumentError, 'hostname is required' if hostname.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/node/{hostname}/role/{type}/stop'
            .gsub('{hostname}', ERB::Util.url_encode(hostname.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{type}', ERB::Util.url_encode(type.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_order_new_node_hourly_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/orderNewNodeHourly'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_orderable_node_profiles_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/orderableNodeProfiles'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_restart_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/restart'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/serviceInfos'
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
          '/cluster/hadoop/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_service_restart_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/service/restart'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_service_start_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/service/start'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_service_stop_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/service/stop'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_start_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/start'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_stop_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/stop'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_task_get(service_name:, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'status' => status }
        )
      end

      def service_name_task_task_id_get(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/task/{taskId}'
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
          '/cluster/hadoop/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_post(service_name:, cluster_hadoop_service_name_user_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cluster_hadoop_service_name_user_post_request is required' if cluster_hadoop_service_name_user_post_request.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cluster_hadoop_service_name_user_post_request
        )
      end

      def service_name_user_username_delete(service_name:, username:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?

        @connection.call(
          :DELETE,
          '/cluster/hadoop/{serviceName}/user/{username}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_username_get(service_name:, username:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?

        @connection.call(
          :GET,
          '/cluster/hadoop/{serviceName}/user/{username}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_username_put(service_name:, username:, cluster_hadoop_user:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?
        raise ArgumentError, 'cluster_hadoop_user is required' if cluster_hadoop_user.nil?

        @connection.call(
          :PUT,
          '/cluster/hadoop/{serviceName}/user/{username}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: [],
          body: cluster_hadoop_user
        )
      end

      def service_name_user_username_reset_password_post(service_name:, username:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cluster/hadoop/{serviceName}/user/{username}/resetPassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
