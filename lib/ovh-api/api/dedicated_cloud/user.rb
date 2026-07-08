# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::User
      def initialize(connection)
        @connection = connection
      end

      def change_password(service_name:, user_id:, body: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user/{userId}/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def change_properties(service_name:, user_id:, dedicated_cloud_service_name_user_user_id_change_properties_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user/{userId}/changeProperties'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_user_user_id_change_properties_post_request
        )
      end

      def confirm_phone_number(service_name:, user_id:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user/{userId}/confirmPhoneNumber'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def create(service_name:, dedicated_cloud_service_name_user_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_user_post_request is required' if dedicated_cloud_service_name_user_post_request.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_user_post_request
        )
      end

      def delete(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/user/{userId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def disable(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user/{userId}/disable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def enable(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user/{userId}/enable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/user/{userId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, name: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name }
        )
      end

      def object_right(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/user/{userId}/objectRight'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def object_right_delete(object_right_id:, service_name:, user_id:)
        raise ArgumentError, 'object_right_id is required' if object_right_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/user/{userId}/objectRight/{objectRightId}'
            .gsub('{objectRightId}', ERB::Util.url_encode(object_right_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def object_right_get(object_right_id:, service_name:, user_id:)
        raise ArgumentError, 'object_right_id is required' if object_right_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/user/{userId}/objectRight/{objectRightId}'
            .gsub('{objectRightId}', ERB::Util.url_encode(object_right_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def object_right_post(service_name:, user_id:, dedicated_cloud_service_name_user_user_id_object_right_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_user_user_id_object_right_post_request is required' if dedicated_cloud_service_name_user_user_id_object_right_post_request.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user/{userId}/objectRight'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_user_user_id_object_right_post_request
        )
      end

      def right(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/user/{userId}/right'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def right_get(right_id:, service_name:, user_id:)
        raise ArgumentError, 'right_id is required' if right_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/user/{userId}/right/{rightId}'
            .gsub('{rightId}', ERB::Util.url_encode(right_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def right_put(right_id:, service_name:, user_id:, dedicated_cloud_right:)
        raise ArgumentError, 'right_id is required' if right_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'dedicated_cloud_right is required' if dedicated_cloud_right.nil?

        @connection.call(
          :PUT,
          '/dedicatedCloud/{serviceName}/user/{userId}/right/{rightId}'
            .gsub('{rightId}', ERB::Util.url_encode(right_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_right
        )
      end

      def task(service_name:, user_id:, name: nil, state: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/user/{userId}/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'state' => state }
        )
      end

      def task_change_maintenance_execution_date(service_name:, task_id:, user_id:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user/{userId}/task/{taskId}/changeMaintenanceExecutionDate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def task_get(service_name:, task_id:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/user/{userId}/task/{taskId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def task_reset_task_state(service_name:, task_id:, user_id:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/user/{userId}/task/{taskId}/resetTaskState'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
