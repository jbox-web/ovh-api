# frozen_string_literal: true

module Ovh::Api
  module Api
    class HorizonView
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/horizonView',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_confirm_termination_post(service_name:, cloud_project_service_name_confirm_termination_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_service_name_confirm_termination_post_request is required' if cloud_project_service_name_confirm_termination_post_request.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_service_name_confirm_termination_post_request
        )
      end

      def service_name_dedicated_horizon_customer_user_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/dedicatedHorizon/customerUser'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dedicated_horizon_customer_user_post(service_name:, horizon_view_service_name_dedicated_horizon_customer_user_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_dedicated_horizon_customer_user_post_request is required' if horizon_view_service_name_dedicated_horizon_customer_user_post_request.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/dedicatedHorizon/customerUser'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_dedicated_horizon_customer_user_post_request
        )
      end

      def service_name_dedicated_horizon_customer_user_username_change_password_post(service_name:, username:, body: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/dedicatedHorizon/customerUser/{username}/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_dedicated_horizon_customer_user_username_delete(service_name:, username:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?

        @connection.call(
          :DELETE,
          '/horizonView/{serviceName}/dedicatedHorizon/customerUser/{username}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dedicated_horizon_customer_user_username_get(service_name:, username:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/dedicatedHorizon/customerUser/{username}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dedicated_horizon_disable_storage_accelerator_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/dedicatedHorizon/disableStorageAccelerator'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dedicated_horizon_enable_storage_accelerator_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/dedicatedHorizon/enableStorageAccelerator'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dedicated_horizon_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/dedicatedHorizon'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dedicated_horizon_task_get(service_name:, state: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/dedicatedHorizon/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end

      def service_name_dedicated_horizon_task_task_id_get(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/dedicatedHorizon/task/{taskId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dedicated_horizon_user_change_password_post(service_name:, body: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/dedicatedHorizon/user/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_dedicated_horizon_user_change_properties_post(service_name:, body: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/dedicatedHorizon/user/changeProperties'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_dedicated_horizon_user_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/dedicatedHorizon/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/serviceInfos'
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
          '/horizonView/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
