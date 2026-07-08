# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::AllowedNetwork
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, dedicated_cloud_service_name_allowed_network_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_allowed_network_post_request is required' if dedicated_cloud_service_name_allowed_network_post_request.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/allowedNetwork'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_allowed_network_post_request
        )
      end

      def delete(network_access_id:, service_name:)
        raise ArgumentError, 'network_access_id is required' if network_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/allowedNetwork/{networkAccessId}'
            .gsub('{networkAccessId}', ERB::Util.url_encode(network_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(network_access_id:, service_name:)
        raise ArgumentError, 'network_access_id is required' if network_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/allowedNetwork/{networkAccessId}'
            .gsub('{networkAccessId}', ERB::Util.url_encode(network_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/allowedNetwork'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def task(network_access_id:, service_name:, name: nil, state: nil)
        raise ArgumentError, 'network_access_id is required' if network_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/allowedNetwork/{networkAccessId}/task'
            .gsub('{networkAccessId}', ERB::Util.url_encode(network_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'state' => state }
        )
      end

      def task_change_maintenance_execution_date(network_access_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'network_access_id is required' if network_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/allowedNetwork/{networkAccessId}/task/{taskId}/changeMaintenanceExecutionDate'
            .gsub('{networkAccessId}', ERB::Util.url_encode(network_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def task_get(network_access_id:, service_name:, task_id:)
        raise ArgumentError, 'network_access_id is required' if network_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/allowedNetwork/{networkAccessId}/task/{taskId}'
            .gsub('{networkAccessId}', ERB::Util.url_encode(network_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def task_reset_task_state(network_access_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'network_access_id is required' if network_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/allowedNetwork/{networkAccessId}/task/{taskId}/resetTaskState'
            .gsub('{networkAccessId}', ERB::Util.url_encode(network_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def update(network_access_id:, service_name:, dedicated_cloud_allowed_network:)
        raise ArgumentError, 'network_access_id is required' if network_access_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_allowed_network is required' if dedicated_cloud_allowed_network.nil?

        @connection.call(
          :PUT,
          '/dedicatedCloud/{serviceName}/allowedNetwork/{networkAccessId}'
            .gsub('{networkAccessId}', ERB::Util.url_encode(network_access_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_allowed_network
        )
      end
    end
  end
end
