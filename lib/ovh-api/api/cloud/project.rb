# frozen_string_literal: true

module Ovh::Api
  module Api
    class Cloud::Project
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/cloud/project',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_acl_account_id_delete(account_id:, service_name:)
        raise ArgumentError, 'account_id is required' if account_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/acl/{accountId}'
            .gsub('{accountId}', ERB::Util.url_encode(account_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_acl_account_id_get(account_id:, service_name:)
        raise ArgumentError, 'account_id is required' if account_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/acl/{accountId}'
            .gsub('{accountId}', ERB::Util.url_encode(account_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_acl_get(service_name:, type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/acl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def service_name_acl_post(service_name:, cloud_project_service_name_acl_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_service_name_acl_post_request is required' if cloud_project_service_name_acl_post_request.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/acl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_service_name_acl_post_request
        )
      end

      def service_name_activate_monthly_billing_post(service_name:, cloud_project_activate_monthly_billing_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_activate_monthly_billing_creation is required' if cloud_project_activate_monthly_billing_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/activateMonthlyBilling'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_activate_monthly_billing_creation
        )
      end

      def service_name_ai_app_app_id_datasync_post(app_id:, service_name:, cloud_project_ai_volume_data_sync_spec:)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_volume_data_sync_spec is required' if cloud_project_ai_volume_data_sync_spec.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/app/{appId}/datasync'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_volume_data_sync_spec
        )
      end

      def service_name_ai_app_app_id_delete(app_id:, service_name:, force: nil)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/ai/app/{appId}'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'force' => force }
        )
      end

      def service_name_ai_app_app_id_get(app_id:, service_name:)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/app/{appId}'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_app_app_id_image_put(app_id:, service_name:, cloud_project_ai_app_app_image_input:)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_app_app_image_input is required' if cloud_project_ai_app_app_image_input.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/app/{appId}/image'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_app_app_image_input
        )
      end

      def service_name_ai_app_app_id_label_put(app_id:, service_name:, cloud_project_ai_label:)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_label is required' if cloud_project_ai_label.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/app/{appId}/label'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_label
        )
      end

      def service_name_ai_app_app_id_log_get(app_id:, service_name:, page: nil, replica: nil, size: nil)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/app/{appId}/log'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'page' => page, 'replica' => replica, 'size' => size }
        )
      end

      def service_name_ai_app_app_id_put(app_id:, service_name:, cloud_project_ai_app_update_input:)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_app_update_input is required' if cloud_project_ai_app_update_input.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/app/{appId}'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_app_update_input
        )
      end

      def service_name_ai_app_app_id_scalingstrategy_put(app_id:, service_name:, cloud_project_ai_app_scaling_strategy_input:)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_app_scaling_strategy_input is required' if cloud_project_ai_app_scaling_strategy_input.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/app/{appId}/scalingstrategy'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_app_scaling_strategy_input
        )
      end

      def service_name_ai_app_app_id_start_put(app_id:, service_name:)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/app/{appId}/start'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_app_app_id_stop_put(app_id:, service_name:)
        raise ArgumentError, 'app_id is required' if app_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/app/{appId}/stop'
            .gsub('{appId}', ERB::Util.url_encode(app_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_app_command_post(service_name:, cloud_project_ai_app_app_spec_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_app_app_spec_input is required' if cloud_project_ai_app_app_spec_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/app/command'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_app_app_spec_input
        )
      end

      def service_name_ai_app_get(service_name:, label_selector: nil, order: nil, page: nil, size: nil, sort: nil, status_state: nil, updated_after: nil, updated_before: nil, user_name: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/app'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'labelSelector' => label_selector, 'order' => order, 'page' => page, 'size' => size, 'sort' => sort, 'statusState' => status_state, 'updatedAfter' => updated_after, 'updatedBefore' => updated_before, 'userName' => user_name }
        )
      end

      def service_name_ai_app_post(service_name:, cloud_project_ai_app_app_spec_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_app_app_spec_input is required' if cloud_project_ai_app_app_spec_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/app'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_app_app_spec_input
        )
      end

      def service_name_ai_authorization_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/authorization'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_authorization_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/authorization'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_feature_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/feature'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_quota_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/quota'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_app_image_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/app/image'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_data_region_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/data/region'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_flavor_flavor_id_get(flavor_id:, region:, service_name:)
        raise ArgumentError, 'flavor_id is required' if flavor_id.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/flavor/{flavorId}'
            .gsub('{flavorId}', ERB::Util.url_encode(flavor_id.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_flavor_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/flavor'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_job_image_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/job/image'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_notebook_editor_editor_id_get(editor_id:, region:, service_name:)
        raise ArgumentError, 'editor_id is required' if editor_id.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/notebook/editor/{editorId}'
            .gsub('{editorId}', ERB::Util.url_encode(editor_id.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_notebook_editor_get(region:, service_name:, compatible_with_framework: nil)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/notebook/editor'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'compatibleWithFramework' => compatible_with_framework }
        )
      end

      def service_name_ai_capabilities_region_region_notebook_framework_framework_id_get(framework_id:, region:, service_name:)
        raise ArgumentError, 'framework_id is required' if framework_id.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/notebook/framework/{frameworkId}'
            .gsub('{frameworkId}', ERB::Util.url_encode(framework_id.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_notebook_framework_get(region:, service_name:, compatible_with_editor: nil, type: nil)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/notebook/framework'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'compatibleWithEditor' => compatible_with_editor, 'type' => type }
        )
      end

      def service_name_ai_capabilities_region_region_notebook_workspacebackupretentionpolicy_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/notebook/workspacebackupretentionpolicy'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_capabilities_region_region_notebook_workspacebackupretentionpolicy_put(region:, service_name:, cloud_project_ai_notebook_notebook_workspace_backup_retention_ph9799f5d8:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_notebook_notebook_workspace_backup_retention_ph9799f5d8 is required' if cloud_project_ai_notebook_notebook_workspace_backup_retention_ph9799f5d8.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/notebook/workspacebackupretentionpolicy'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_notebook_notebook_workspace_backup_retention_ph9799f5d8
        )
      end

      def service_name_ai_capabilities_region_region_preset_get(region:, service_name:, type: nil)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/preset'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def service_name_ai_capabilities_region_region_preset_preset_id_get(preset_id:, region:, service_name:)
        raise ArgumentError, 'preset_id is required' if preset_id.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/capabilities/region/{region}/preset/{presetId}'
            .gsub('{presetId}', ERB::Util.url_encode(preset_id.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_data_region_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/data/region'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_data_region_region_alias_alias_auth_get(alias_:, region:, service_name:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/data/region/{region}/alias/{alias}/auth'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_data_region_region_alias_alias_delete(alias_:, region:, service_name:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/ai/data/region/{region}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_data_region_region_alias_alias_get(alias_:, region:, service_name:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/data/region/{region}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_data_region_region_alias_alias_put(alias_:, region:, service_name:, cloud_project_ai_data_store_input:)
        raise ArgumentError, 'alias_ is required' if alias_.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_data_store_input is required' if cloud_project_ai_data_store_input.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/data/region/{region}/alias/{alias}'
            .gsub('{alias}', ERB::Util.url_encode(alias_.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_data_store_input
        )
      end

      def service_name_ai_data_region_region_alias_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/data/region/{region}/alias'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_data_region_region_alias_post(region:, service_name:, cloud_project_ai_data_store_input:, skip_data_store_connection_check: nil)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_data_store_input is required' if cloud_project_ai_data_store_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/data/region/{region}/alias'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'skipDataStoreConnectionCheck' => skip_data_store_connection_check },
          body: cloud_project_ai_data_store_input
        )
      end

      def service_name_ai_data_region_region_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/data/region/{region}'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_job_capabilities_preset_image_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/job/capabilities/presetImage'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_job_command_post(service_name:, cloud_project_ai_job_job_spec_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_job_job_spec_input is required' if cloud_project_ai_job_job_spec_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/job/command'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_job_job_spec_input
        )
      end

      def service_name_ai_job_get(service_name:, label_selector: nil, order: nil, page: nil, size: nil, sort: nil, status_state: nil, updated_after: nil, updated_before: nil, user_name: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/job'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'labelSelector' => label_selector, 'order' => order, 'page' => page, 'size' => size, 'sort' => sort, 'statusState' => status_state, 'updatedAfter' => updated_after, 'updatedBefore' => updated_before, 'userName' => user_name }
        )
      end

      def service_name_ai_job_job_id_datasync_post(job_id:, service_name:, cloud_project_ai_volume_data_sync_spec:)
        raise ArgumentError, 'job_id is required' if job_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_volume_data_sync_spec is required' if cloud_project_ai_volume_data_sync_spec.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/job/{jobId}/datasync'
            .gsub('{jobId}', ERB::Util.url_encode(job_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_volume_data_sync_spec
        )
      end

      def service_name_ai_job_job_id_delete(job_id:, service_name:, force: nil)
        raise ArgumentError, 'job_id is required' if job_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/ai/job/{jobId}'
            .gsub('{jobId}', ERB::Util.url_encode(job_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'force' => force }
        )
      end

      def service_name_ai_job_job_id_get(job_id:, service_name:)
        raise ArgumentError, 'job_id is required' if job_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/job/{jobId}'
            .gsub('{jobId}', ERB::Util.url_encode(job_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_job_job_id_kill_put(job_id:, service_name:)
        raise ArgumentError, 'job_id is required' if job_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/job/{jobId}/kill'
            .gsub('{jobId}', ERB::Util.url_encode(job_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_job_job_id_label_put(job_id:, service_name:, cloud_project_ai_label:)
        raise ArgumentError, 'job_id is required' if job_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_label is required' if cloud_project_ai_label.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/job/{jobId}/label'
            .gsub('{jobId}', ERB::Util.url_encode(job_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_label
        )
      end

      def service_name_ai_job_job_id_log_get(job_id:, service_name:, page: nil, size: nil)
        raise ArgumentError, 'job_id is required' if job_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/job/{jobId}/log'
            .gsub('{jobId}', ERB::Util.url_encode(job_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'page' => page, 'size' => size }
        )
      end

      def service_name_ai_job_post(service_name:, cloud_project_ai_job_job_spec_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_job_job_spec_input is required' if cloud_project_ai_job_job_spec_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/job'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_job_job_spec_input
        )
      end

      def service_name_ai_notebook_capabilities_editor_get(service_name:, compatible_with_framework: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/notebook/capabilities/editor'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'compatibleWithFramework' => compatible_with_framework }
        )
      end

      def service_name_ai_notebook_capabilities_framework_get(service_name:, compatible_with_editor: nil, type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/notebook/capabilities/framework'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'compatibleWithEditor' => compatible_with_editor, 'type' => type }
        )
      end

      def service_name_ai_notebook_command_post(service_name:, cloud_project_ai_notebook_notebook_spec_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_notebook_notebook_spec_input is required' if cloud_project_ai_notebook_notebook_spec_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/notebook/command'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_notebook_notebook_spec_input
        )
      end

      def service_name_ai_notebook_get(service_name:, label_selector: nil, order: nil, page: nil, size: nil, sort: nil, status_state: nil, updated_after: nil, updated_before: nil, user_name: nil, with_spark: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/notebook'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'labelSelector' => label_selector, 'order' => order, 'page' => page, 'size' => size, 'sort' => sort, 'statusState' => status_state, 'updatedAfter' => updated_after, 'updatedBefore' => updated_before, 'userName' => user_name, 'withSpark' => with_spark }
        )
      end

      def service_name_ai_notebook_notebook_id_backup_backup_id_fork_post(backup_id:, notebook_id:, service_name:, cloud_project_ai_notebook_notebook_fork_info:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_notebook_notebook_fork_info is required' if cloud_project_ai_notebook_notebook_fork_info.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/backup/{backupId}/fork'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_notebook_notebook_fork_info
        )
      end

      def service_name_ai_notebook_notebook_id_backup_backup_id_get(backup_id:, notebook_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_notebook_notebook_id_backup_get(notebook_id:, service_name:, order: nil, page: nil, size: nil, sort: nil, updated_after: nil, updated_before: nil)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/backup'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'order' => order, 'page' => page, 'size' => size, 'sort' => sort, 'updatedAfter' => updated_after, 'updatedBefore' => updated_before }
        )
      end

      def service_name_ai_notebook_notebook_id_datasync_post(notebook_id:, service_name:, cloud_project_ai_volume_data_sync_spec:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_volume_data_sync_spec is required' if cloud_project_ai_volume_data_sync_spec.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/datasync'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_volume_data_sync_spec
        )
      end

      def service_name_ai_notebook_notebook_id_delete(notebook_id:, service_name:, force: nil)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'force' => force }
        )
      end

      def service_name_ai_notebook_notebook_id_get(notebook_id:, service_name:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_notebook_notebook_id_label_put(notebook_id:, service_name:, cloud_project_ai_label:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_label is required' if cloud_project_ai_label.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/label'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_label
        )
      end

      def service_name_ai_notebook_notebook_id_log_get(notebook_id:, service_name:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/log'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_notebook_notebook_id_put(notebook_id:, service_name:, cloud_project_ai_notebook_notebook_update:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_notebook_notebook_update is required' if cloud_project_ai_notebook_notebook_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_notebook_notebook_update
        )
      end

      def service_name_ai_notebook_notebook_id_restart_put(notebook_id:, service_name:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/restart'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_notebook_notebook_id_start_put(notebook_id:, service_name:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/start'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_notebook_notebook_id_stop_put(notebook_id:, service_name:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/stop'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_notebook_notebook_id_workspacebackupretentionpolicy_get(notebook_id:, service_name:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/workspacebackupretentionpolicy'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_notebook_notebook_id_workspacebackupretentionpolicy_put(notebook_id:, service_name:, cloud_project_ai_notebook_notebook_workspace_backup_retention_ph9799f5d8:)
        raise ArgumentError, 'notebook_id is required' if notebook_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_notebook_notebook_workspace_backup_retention_ph9799f5d8 is required' if cloud_project_ai_notebook_notebook_workspace_backup_retention_ph9799f5d8.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/notebook/{notebookId}/workspacebackupretentionpolicy'
            .gsub('{notebookId}', ERB::Util.url_encode(notebook_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_notebook_notebook_workspace_backup_retention_ph9799f5d8
        )
      end

      def service_name_ai_notebook_post(service_name:, cloud_project_ai_notebook_notebook_spec_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_notebook_notebook_spec_input is required' if cloud_project_ai_notebook_notebook_spec_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/notebook'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_notebook_notebook_spec_input
        )
      end

      def service_name_ai_partners_region_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/partners/region'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_partners_region_region_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/partners/region/{region}'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_partners_region_region_partner_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/partners/region/{region}/partner'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_partners_region_region_partner_partner_id_get(partner_id:, region:, service_name:)
        raise ArgumentError, 'partner_id is required' if partner_id.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/partners/region/{region}/partner/{partnerId}'
            .gsub('{partnerId}', ERB::Util.url_encode(partner_id.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_registry_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/registry'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_registry_post(service_name:, cloud_project_ai_registry_registry:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_registry_registry is required' if cloud_project_ai_registry_registry.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/registry'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_registry_registry
        )
      end

      def service_name_ai_registry_registry_id_delete(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/ai/registry/{registryId}'
            .gsub('{registryId}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_registry_registry_id_get(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/registry/{registryId}'
            .gsub('{registryId}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_registry_registry_id_put(registry_id:, service_name:, cloud_project_ai_registry_registry_update_input:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_registry_registry_update_input is required' if cloud_project_ai_registry_registry_update_input.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/ai/registry/{registryId}'
            .gsub('{registryId}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_registry_registry_update_input
        )
      end

      def service_name_ai_token_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_token_id_delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/ai/token/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_token_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ai/token/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_token_id_renew_post(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/token/{id}/renew'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ai_token_post(service_name:, cloud_project_ai_token_token_spec:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ai_token_token_spec is required' if cloud_project_ai_token_token_spec.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ai/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ai_token_token_spec
        )
      end

      def service_name_alerting_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/alerting'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_alerting_id_alert_alert_id_get(alert_id:, id:, service_name:)
        raise ArgumentError, 'alert_id is required' if alert_id.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/alerting/{id}/alert/{alertId}'
            .gsub('{alertId}', ERB::Util.url_encode(alert_id.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_alerting_id_alert_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/alerting/{id}/alert'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_alerting_id_delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/alerting/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_alerting_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/alerting/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_alerting_id_put(id:, service_name:, cloud_alerting_alerting_update:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_alerting_alerting_update is required' if cloud_alerting_alerting_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/alerting/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_alerting_alerting_update
        )
      end

      def service_name_alerting_post(service_name:, cloud_alerting_alerting:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_alerting_alerting is required' if cloud_alerting_alerting.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/alerting'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_alerting_alerting
        )
      end

      def service_name_bill_get(from:, service_name:, to:)
        raise ArgumentError, 'from is required' if from.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'to is required' if to.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/bill'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'from' => from, 'to' => to }
        )
      end

      def service_name_cancel_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/cancel'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_capabilities_container_registry_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/containerRegistry'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_capabilities_kube_admissionplugins_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/kube/admissionplugins'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_capabilities_kube_flavors_get(service_name:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/kube/flavors'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_capabilities_kube_log_kind_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/kube/log/kind'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_capabilities_kube_log_kind_name_get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/kube/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_capabilities_kube_regions_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/kube/regions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_capabilities_loadbalancer_region_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/loadbalancer/region'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_capabilities_loadbalancer_region_region_name_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/loadbalancer/region/{regionName}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_capabilities_product_availability_get(ovh_subsidiary:, service_name:, addon_family: nil, plan_code: nil, plan_family: nil, product: nil)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/capabilities/productAvailability'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'addonFamily' => addon_family, 'ovhSubsidiary' => ovh_subsidiary, 'planCode' => plan_code, 'planFamily' => plan_family, 'product' => product }
        )
      end

      def service_name_change_contact_post(service_name:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/changeContact'
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
          '/cloud/project/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_service_name_confirm_termination_post_request
        )
      end

      def service_name_container_registry_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_post(service_name:, cloud_project_container_registry_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_container_registry_creation is required' if cloud_project_container_registry_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/containerRegistry'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_container_registry_creation
        )
      end

      def service_name_container_registry_registry_id_capabilities_plan_get(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/capabilities/plan'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_delete(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_get(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_iam_delete(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/iam'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_iam_post(registry_id:, service_name:, cloud_container_registry_iam_post:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_container_registry_iam_post is required' if cloud_container_registry_iam_post.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/iam'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_container_registry_iam_post
        )
      end

      def service_name_container_registry_registry_id_open_id_connect_delete(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/openIdConnect'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_open_id_connect_get(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/openIdConnect'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_open_id_connect_post(registry_id:, service_name:, cloud_container_registry_oidc_post:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_container_registry_oidc_post is required' if cloud_container_registry_oidc_post.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/openIdConnect'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_container_registry_oidc_post
        )
      end

      def service_name_container_registry_registry_id_open_id_connect_put(registry_id:, service_name:, cloud_container_registry_oidc_put:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_container_registry_oidc_put is required' if cloud_container_registry_oidc_put.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/openIdConnect'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_container_registry_oidc_put
        )
      end

      def service_name_container_registry_registry_id_plan_get(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/plan'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_plan_put(registry_id:, service_name:, cloud_container_registry_plan_update:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_container_registry_plan_update is required' if cloud_container_registry_plan_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/plan'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_container_registry_plan_update
        )
      end

      def service_name_container_registry_registry_id_put(registry_id:, service_name:, cloud_project_container_registry_update:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_container_registry_update is required' if cloud_project_container_registry_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_container_registry_update
        )
      end

      def service_name_container_registry_registry_id_users_get(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/users'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_users_post(registry_id:, service_name:, cloud_project_container_registry_users_creation:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_container_registry_users_creation is required' if cloud_project_container_registry_users_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/users'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_container_registry_users_creation
        )
      end

      def service_name_container_registry_registry_id_users_user_id_delete(registry_id:, service_name:, user_id:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/users/{userID}'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userID}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_users_user_id_get(registry_id:, service_name:, user_id:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/users/{userID}'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userID}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_id_users_user_id_set_as_admin_put(registry_id:, service_name:, user_id:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/users/{userID}/setAsAdmin'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userID}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_idip_restrictions_management_get(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/ipRestrictions/management'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_idip_restrictions_management_put(registry_id:, service_name:, cloud_container_registry_ip_restrictions:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_container_registry_ip_restrictions is required' if cloud_container_registry_ip_restrictions.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/ipRestrictions/management'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_container_registry_ip_restrictions
        )
      end

      def service_name_container_registry_registry_idip_restrictions_registry_get(registry_id:, service_name:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/ipRestrictions/registry'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_container_registry_registry_idip_restrictions_registry_put(registry_id:, service_name:, cloud_container_registry_ip_restrictions:)
        raise ArgumentError, 'registry_id is required' if registry_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_container_registry_ip_restrictions is required' if cloud_container_registry_ip_restrictions.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/containerRegistry/{registryID}/ipRestrictions/registry'
            .gsub('{registryID}', ERB::Util.url_encode(registry_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_container_registry_ip_restrictions
        )
      end

      def service_name_credit_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/credit'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_credit_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/credit/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_credit_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/credit'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_database_availability_get(service_name:, action: nil, cluster_id: nil, target: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/availability'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'action' => action, 'clusterId' => cluster_id, 'target' => target }
        )
      end

      def service_name_database_capabilities_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/capabilities'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_cassandra_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_certificates_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/certificates'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_cassandra_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_cassandra_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_cassandra_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_cassandra_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_cassandra_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_cassandra_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_cassandra_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_cassandra_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_cassandra_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_service_user_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_user_creation is required' if cloud_project_database_service_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_creation
        )
      end

      def service_name_database_cassandra_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/cassandra'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_cassandra_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/cassandra'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_clickhouse_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_capabilities_backup_regions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/capabilities/backupRegions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_certificates_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/certificates'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_current_queries_cancel_post(cluster_id:, service_name:, cloud_project_database_service_currentqueries_query_cancel_request:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_currentqueries_query_cancel_request is required' if cloud_project_database_service_currentqueries_query_cancel_request.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/currentQueries/cancel'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_currentqueries_query_cancel_request
        )
      end

      def service_name_database_clickhouse_cluster_id_current_queries_get(cluster_id:, service_name:, limit: nil, offset: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/currentQueries'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'offset' => offset }
        )
      end

      def service_name_database_clickhouse_cluster_id_database_database_id_delete(cluster_id:, database_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'database_id is required' if database_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/database/{databaseId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{databaseId}', ERB::Util.url_encode(database_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_database_database_id_get(cluster_id:, database_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'database_id is required' if database_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/database/{databaseId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{databaseId}', ERB::Util.url_encode(database_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_database_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/database'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_database_post(cluster_id:, service_name:, cloud_project_database_service_database:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_database is required' if cloud_project_database_service_database.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/database'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_database
        )
      end

      def service_name_database_clickhouse_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_enable_writes_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/enableWrites'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_clickhouse_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_clickhouse_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_clickhouse_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_clickhouse_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_clickhouse_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_clickhouse_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_clickhouse_cluster_id_query_statistics_get(cluster_id:, service_name:, limit: nil, offset: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/queryStatistics'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'offset' => offset }
        )
      end

      def service_name_database_clickhouse_cluster_id_roles_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/roles'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_service_user_with_roles_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_user_with_roles_creation is required' if cloud_project_database_service_user_with_roles_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_with_roles_creation
        )
      end

      def service_name_database_clickhouse_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_cluster_id_user_user_id_put(cluster_id:, service_name:, user_id:, cloud_project_database_service_user_with_roles:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_database_service_user_with_roles is required' if cloud_project_database_service_user_with_roles.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/clickhouse/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_with_roles
        )
      end

      def service_name_database_clickhouse_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/clickhouse'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_clickhouse_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/clickhouse'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_grafana_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_grafana_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_capabilities_backup_regions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/capabilities/backupRegions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_grafana_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_grafana_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_grafana_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_grafana_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_grafana_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_grafana_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_grafana_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_grafana_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service_without_prometheus:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_without_prometheus is required' if cloud_project_database_service_without_prometheus.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_without_prometheus
        )
      end

      def service_name_database_grafana_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/grafana'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_grafana_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/grafana'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_kafka_cluster_id_acl_acl_id_delete(acl_id:, cluster_id:, service_name:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/acl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_acl_acl_id_get(acl_id:, cluster_id:, service_name:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/acl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_acl_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/acl'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_acl_post(cluster_id:, service_name:, cloud_project_database_kafka_topic_acl:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_kafka_topic_acl is required' if cloud_project_database_kafka_topic_acl.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/acl'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_kafka_topic_acl
        )
      end

      def service_name_database_kafka_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_kafka_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_capabilities_backup_regions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/capabilities/backupRegions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_certificates_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/certificates'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_kafka_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_kafka_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_kafka_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_kafka_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_kafka_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_kafka_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_kafka_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_kafka_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_permissions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/permissions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_put(cluster_id:, service_name:, cloud_project_database_kafka_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_kafka_service is required' if cloud_project_database_kafka_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_kafka_service
        )
      end

      def service_name_database_kafka_cluster_id_schema_registry_acl_acl_id_delete(acl_id:, cluster_id:, service_name:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/schemaRegistryAcl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_schema_registry_acl_acl_id_get(acl_id:, cluster_id:, service_name:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/schemaRegistryAcl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_schema_registry_acl_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/schemaRegistryAcl'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_schema_registry_acl_post(cluster_id:, service_name:, cloud_project_database_kafka_schema_registry_acl:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_kafka_schema_registry_acl is required' if cloud_project_database_kafka_schema_registry_acl.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/schemaRegistryAcl'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_kafka_schema_registry_acl
        )
      end

      def service_name_database_kafka_cluster_id_topic_acl_acl_id_delete(acl_id:, cluster_id:, service_name:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topicAcl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_topic_acl_acl_id_get(acl_id:, cluster_id:, service_name:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topicAcl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_topic_acl_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topicAcl'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_topic_acl_post(cluster_id:, service_name:, cloud_project_database_kafka_topic_acl:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_kafka_topic_acl is required' if cloud_project_database_kafka_topic_acl.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topicAcl'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_kafka_topic_acl
        )
      end

      def service_name_database_kafka_cluster_id_topic_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topic'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_topic_post(cluster_id:, service_name:, cloud_project_database_kafka_topic_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_kafka_topic_creation is required' if cloud_project_database_kafka_topic_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topic'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_kafka_topic_creation
        )
      end

      def service_name_database_kafka_cluster_id_topic_topic_id_delete(cluster_id:, service_name:, topic_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'topic_id is required' if topic_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topic/{topicId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{topicId}', ERB::Util.url_encode(topic_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_topic_topic_id_get(cluster_id:, service_name:, topic_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'topic_id is required' if topic_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topic/{topicId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{topicId}', ERB::Util.url_encode(topic_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_topic_topic_id_put(cluster_id:, service_name:, topic_id:, cloud_project_database_kafka_topic:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'topic_id is required' if topic_id.nil?
        raise ArgumentError, 'cloud_project_database_kafka_topic is required' if cloud_project_database_kafka_topic.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/topic/{topicId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{topicId}', ERB::Util.url_encode(topic_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_kafka_topic
        )
      end

      def service_name_database_kafka_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_service_user_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_user_creation is required' if cloud_project_database_service_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_creation
        )
      end

      def service_name_database_kafka_cluster_id_user_user_id_access_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/user/{userId}/access'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_kafka_connect_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_capabilities_backup_regions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/capabilities/backupRegions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_capabilities_connector_connector_id_configuration_get(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/capabilities/connector/{connectorId}/configuration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_capabilities_connector_connector_id_get(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/capabilities/connector/{connectorId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_capabilities_connector_connector_id_transforms_get(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/capabilities/connector/{connectorId}/transforms'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_capabilities_connector_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/capabilities/connector'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_delete(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_get(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_pause_post(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}/pause'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_put(cluster_id:, connector_id:, service_name:, cloud_project_database_kafka_connect_connector:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_kafka_connect_connector is required' if cloud_project_database_kafka_connect_connector.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_kafka_connect_connector
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_restart_post(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}/restart'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_resume_post(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}/resume'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_task_get(cluster_id:, connector_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}/task'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_task_task_id_get(cluster_id:, connector_id:, service_name:, task_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}/task/{taskId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_connector_id_task_task_id_restart_post(cluster_id:, connector_id:, service_name:, task_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connector_id is required' if connector_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector/{connectorId}/task/{taskId}/restart'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectorId}', ERB::Util.url_encode(connector_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_connector_post(cluster_id:, service_name:, cloud_project_database_kafka_connect_connector_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_kafka_connect_connector_creation is required' if cloud_project_database_kafka_connect_connector_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/connector'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_kafka_connect_connector_creation
        )
      end

      def service_name_database_kafka_connect_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_kafka_connect_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_kafka_connect_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_kafka_connect_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_kafka_connect_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_kafka_connect_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_kafka_connect_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_kafka_connect_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_kafka_connect_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_kafka_connect_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_service_user_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_user_creation is required' if cloud_project_database_service_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_creation
        )
      end

      def service_name_database_kafka_connect_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaConnect'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_connect_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaConnect'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_kafka_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafka'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_replication_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/replication'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_replication_post(cluster_id:, service_name:, cloud_project_database_service_replication_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_replication_creation is required' if cloud_project_database_service_replication_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/replication'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_replication_creation
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_replication_replication_id_delete(cluster_id:, replication_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'replication_id is required' if replication_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/replication/{replicationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{replicationId}', ERB::Util.url_encode(replication_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_replication_replication_id_get(cluster_id:, replication_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'replication_id is required' if replication_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/replication/{replicationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{replicationId}', ERB::Util.url_encode(replication_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_cluster_id_replication_replication_id_put(cluster_id:, replication_id:, service_name:, cloud_project_database_service_replication:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'replication_id is required' if replication_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_replication is required' if cloud_project_database_service_replication.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker/{clusterId}/replication/{replicationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{replicationId}', ERB::Util.url_encode(replication_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_replication
        )
      end

      def service_name_database_kafka_mirror_maker_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_kafka_mirror_maker_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafkaMirrorMaker'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_kafka_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/kafka'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_m3aggregator_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_m3aggregator_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_m3aggregator_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_m3aggregator_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_m3aggregator_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_m3aggregator_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_m3aggregator_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service_without_prometheus:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_without_prometheus is required' if cloud_project_database_service_without_prometheus.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/m3aggregator/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_without_prometheus
        )
      end

      def service_name_database_m3aggregator_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3aggregator'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3aggregator_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3aggregator'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_m3db_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_m3db_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_m3db_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_m3db_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_m3db_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_m3db_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_m3db_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_m3db_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_m3db_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_m3db_cluster_id_namespace_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/namespace'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_namespace_namespace_id_delete(cluster_id:, namespace_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'namespace_id is required' if namespace_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/namespace/{namespaceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{namespaceId}', ERB::Util.url_encode(namespace_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_namespace_namespace_id_get(cluster_id:, namespace_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'namespace_id is required' if namespace_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/namespace/{namespaceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{namespaceId}', ERB::Util.url_encode(namespace_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_namespace_namespace_id_put(cluster_id:, namespace_id:, service_name:, cloud_project_database_m3db_namespace:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'namespace_id is required' if namespace_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_m3db_namespace is required' if cloud_project_database_m3db_namespace.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/namespace/{namespaceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{namespaceId}', ERB::Util.url_encode(namespace_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_m3db_namespace
        )
      end

      def service_name_database_m3db_cluster_id_namespace_post(cluster_id:, service_name:, cloud_project_database_m3db_namespace_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_m3db_namespace_creation is required' if cloud_project_database_m3db_namespace_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/namespace'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_m3db_namespace_creation
        )
      end

      def service_name_database_m3db_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service_without_prometheus:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_without_prometheus is required' if cloud_project_database_service_without_prometheus.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_without_prometheus
        )
      end

      def service_name_database_m3db_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_m3db_user_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_m3db_user_creation is required' if cloud_project_database_m3db_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_m3db_user_creation
        )
      end

      def service_name_database_m3db_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_cluster_id_user_user_id_put(cluster_id:, service_name:, user_id:, cloud_project_database_m3db_user:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_database_m3db_user is required' if cloud_project_database_m3db_user.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/m3db/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_m3db_user
        )
      end

      def service_name_database_m3db_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/m3db'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_m3db_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/m3db'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_mongodb_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_backup_backup_id_restore_post(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/backup/{backupId}/restore'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_mongodb_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_mongodb_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_mongodb_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_mongodb_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_mongodb_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_mongodb_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_mongodb_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_node_node_id_delete(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_node_node_id_put(cluster_id:, node_id:, service_name:, cloud_project_database_service_node:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_node is required' if cloud_project_database_service_node.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_node
        )
      end

      def service_name_database_mongodb_cluster_id_node_post(cluster_id:, service_name:, cloud_project_database_service_node_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_node_creation is required' if cloud_project_database_service_node_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_node_creation
        )
      end

      def service_name_database_mongodb_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_mongodb_cluster_id_restore_post(cluster_id:, service_name:, cloud_project_database_service_restore:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_restore is required' if cloud_project_database_service_restore.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/restore'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_restore
        )
      end

      def service_name_database_mongodb_cluster_id_roles_get(cluster_id:, service_name:, advanced: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/roles'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'advanced' => advanced }
        )
      end

      def service_name_database_mongodb_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_service_user_with_roles_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_user_with_roles_creation is required' if cloud_project_database_service_user_with_roles_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_with_roles_creation
        )
      end

      def service_name_database_mongodb_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_cluster_id_user_user_id_put(cluster_id:, service_name:, user_id:, cloud_project_database_service_user_with_password_and_roles:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_database_service_user_with_password_and_roles is required' if cloud_project_database_service_user_with_password_and_roles.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/mongodb/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_with_password_and_roles
        )
      end

      def service_name_database_mongodb_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mongodb'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mongodb_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mongodb'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_mysql_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_mysql_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_capabilities_backup_regions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/capabilities/backupRegions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_certificates_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/certificates'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_current_queries_cancel_post(cluster_id:, service_name:, cloud_project_database_service_currentqueries_query_cancel_request:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_currentqueries_query_cancel_request is required' if cloud_project_database_service_currentqueries_query_cancel_request.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/currentQueries/cancel'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_currentqueries_query_cancel_request
        )
      end

      def service_name_database_mysql_cluster_id_current_queries_get(cluster_id:, service_name:, limit: nil, offset: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/currentQueries'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'offset' => offset }
        )
      end

      def service_name_database_mysql_cluster_id_database_database_id_delete(cluster_id:, database_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'database_id is required' if database_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/database/{databaseId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{databaseId}', ERB::Util.url_encode(database_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_database_database_id_get(cluster_id:, database_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'database_id is required' if database_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/database/{databaseId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{databaseId}', ERB::Util.url_encode(database_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_database_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/database'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_database_post(cluster_id:, service_name:, cloud_project_database_service_database:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_database is required' if cloud_project_database_service_database.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/database'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_database
        )
      end

      def service_name_database_mysql_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_enable_writes_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/enableWrites'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_mysql_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_mysql_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_mysql_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_mysql_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_mysql_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_mysql_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_mysql_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_mysql_cluster_id_migration_check_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/migration/check'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_migration_check_post(cluster_id:, service_name:, cloud_project_database_mysql_migration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_mysql_migration is required' if cloud_project_database_mysql_migration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/migration/check'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_mysql_migration
        )
      end

      def service_name_database_mysql_cluster_id_migration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/migration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_migration_post(cluster_id:, service_name:, cloud_project_database_mysql_migration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_mysql_migration is required' if cloud_project_database_mysql_migration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/migration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_mysql_migration
        )
      end

      def service_name_database_mysql_cluster_id_migration_stop_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/migration/stop'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_mysql_cluster_id_query_statistics_get(cluster_id:, service_name:, limit: nil, offset: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/queryStatistics'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'offset' => offset }
        )
      end

      def service_name_database_mysql_cluster_id_query_statistics_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/queryStatistics/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_service_user_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_user_creation is required' if cloud_project_database_service_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_creation
        )
      end

      def service_name_database_mysql_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/mysql'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_mysql_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/mysql'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_opensearch_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_opensearch_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_capabilities_backup_regions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/capabilities/backupRegions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_index_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/index'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_index_index_id_delete(cluster_id:, index_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'index_id is required' if index_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/index/{indexId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{indexId}', ERB::Util.url_encode(index_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_index_index_id_get(cluster_id:, index_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'index_id is required' if index_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/index/{indexId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{indexId}', ERB::Util.url_encode(index_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_opensearch_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_opensearch_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_opensearch_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_opensearch_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_opensearch_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_opensearch_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_opensearch_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_opensearch_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_pattern_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/pattern'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_pattern_pattern_id_delete(cluster_id:, pattern_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'pattern_id is required' if pattern_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/pattern/{patternId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{patternId}', ERB::Util.url_encode(pattern_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_pattern_pattern_id_get(cluster_id:, pattern_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'pattern_id is required' if pattern_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/pattern/{patternId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{patternId}', ERB::Util.url_encode(pattern_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_pattern_post(cluster_id:, service_name:, cloud_project_database_opensearch_pattern:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_opensearch_pattern is required' if cloud_project_database_opensearch_pattern.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/pattern'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_opensearch_pattern
        )
      end

      def service_name_database_opensearch_cluster_id_permissions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/permissions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_put(cluster_id:, service_name:, cloud_project_database_opensearch_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_opensearch_service is required' if cloud_project_database_opensearch_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_opensearch_service
        )
      end

      def service_name_database_opensearch_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_opensearch_user_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_opensearch_user_creation is required' if cloud_project_database_opensearch_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_opensearch_user_creation
        )
      end

      def service_name_database_opensearch_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_cluster_id_user_user_id_put(cluster_id:, service_name:, user_id:, cloud_project_database_opensearch_user:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_database_opensearch_user is required' if cloud_project_database_opensearch_user.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/opensearch/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_opensearch_user
        )
      end

      def service_name_database_opensearch_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/opensearch'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_opensearch_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/opensearch'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_postgresql_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_postgresql_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_capabilities_backup_regions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/capabilities/backupRegions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_certificates_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/certificates'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_connection_pool_connection_pool_id_delete(cluster_id:, connection_pool_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connection_pool_id is required' if connection_pool_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/connectionPool/{connectionPoolId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectionPoolId}', ERB::Util.url_encode(connection_pool_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_connection_pool_connection_pool_id_get(cluster_id:, connection_pool_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connection_pool_id is required' if connection_pool_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/connectionPool/{connectionPoolId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectionPoolId}', ERB::Util.url_encode(connection_pool_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_connection_pool_connection_pool_id_put(cluster_id:, connection_pool_id:, service_name:, cloud_project_database_postgresql_connection_pool:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'connection_pool_id is required' if connection_pool_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_postgresql_connection_pool is required' if cloud_project_database_postgresql_connection_pool.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/connectionPool/{connectionPoolId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{connectionPoolId}', ERB::Util.url_encode(connection_pool_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_postgresql_connection_pool
        )
      end

      def service_name_database_postgresql_cluster_id_connection_pool_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/connectionPool'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_connection_pool_post(cluster_id:, service_name:, cloud_project_database_postgresql_connection_pool_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_postgresql_connection_pool_creation is required' if cloud_project_database_postgresql_connection_pool_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/connectionPool'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_postgresql_connection_pool_creation
        )
      end

      def service_name_database_postgresql_cluster_id_current_queries_cancel_post(cluster_id:, service_name:, cloud_project_database_service_currentqueries_query_cancel_request:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_currentqueries_query_cancel_request is required' if cloud_project_database_service_currentqueries_query_cancel_request.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/currentQueries/cancel'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_currentqueries_query_cancel_request
        )
      end

      def service_name_database_postgresql_cluster_id_current_queries_get(cluster_id:, service_name:, limit: nil, offset: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/currentQueries'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'offset' => offset }
        )
      end

      def service_name_database_postgresql_cluster_id_database_database_id_delete(cluster_id:, database_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'database_id is required' if database_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/database/{databaseId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{databaseId}', ERB::Util.url_encode(database_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_database_database_id_get(cluster_id:, database_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'database_id is required' if database_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/database/{databaseId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{databaseId}', ERB::Util.url_encode(database_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_database_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/database'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_database_post(cluster_id:, service_name:, cloud_project_database_service_database:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_database is required' if cloud_project_database_service_database.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/database'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_database
        )
      end

      def service_name_database_postgresql_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_enable_writes_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/enableWrites'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_postgresql_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_postgresql_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_postgresql_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_postgresql_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_postgresql_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_postgresql_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_postgresql_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_postgresql_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_postgresql_cluster_id_query_statistics_get(cluster_id:, service_name:, limit: nil, offset: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/queryStatistics'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'offset' => offset }
        )
      end

      def service_name_database_postgresql_cluster_id_query_statistics_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/queryStatistics/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_roles_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/roles'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_service_user_with_roles_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_user_with_roles_creation is required' if cloud_project_database_service_user_with_roles_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_with_roles_creation
        )
      end

      def service_name_database_postgresql_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_cluster_id_user_user_id_put(cluster_id:, service_name:, user_id:, cloud_project_database_service_user_with_roles:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_database_service_user_with_roles is required' if cloud_project_database_service_user_with_roles.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/postgresql/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_user_with_roles
        )
      end

      def service_name_database_postgresql_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/postgresql'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_postgresql_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/postgresql'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_redis_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_redis_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_capabilities_categories_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/capabilities/categories'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_capabilities_commands_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/capabilities/commands'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/redis/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_redis_cluster_id_ip_restriction_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_ip_restriction_ip_block_delete(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_ip_restriction_ip_block_get(cluster_id:, ip_block:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_ip_restriction_ip_block_put(cluster_id:, ip_block:, service_name:, cloud_project_database_ip_restriction:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'ip_block is required' if ip_block.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction is required' if cloud_project_database_ip_restriction.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/ipRestriction/{ipBlock}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{ipBlock}', ERB::Util.url_encode(ip_block.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction
        )
      end

      def service_name_database_redis_cluster_id_ip_restriction_post(cluster_id:, service_name:, cloud_project_database_ip_restriction_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_ip_restriction_creation is required' if cloud_project_database_ip_restriction_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/ipRestriction'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_ip_restriction_creation
        )
      end

      def service_name_database_redis_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_redis_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_redis_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_redis_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_redis_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_redis_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/redis/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_redis_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_redis_user_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_redis_user_creation is required' if cloud_project_database_redis_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_redis_user_creation
        )
      end

      def service_name_database_redis_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_cluster_id_user_user_id_put(cluster_id:, service_name:, user_id:, cloud_project_database_redis_user:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_database_redis_user is required' if cloud_project_database_redis_user.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/redis/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_redis_user
        )
      end

      def service_name_database_redis_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/redis'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_redis_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/redis'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_database_service_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/service/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_service_get(service_name:, category: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/service'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'category' => category }
        )
      end

      def service_name_database_valkey_cluster_id_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_advanced_configuration_put(cluster_id:, service_name:, request_body:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_database_valkey_cluster_id_backup_backup_id_get(backup_id:, cluster_id:, service_name:)
        raise ArgumentError, 'backup_id is required' if backup_id.nil?
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/backup/{backupId}'
            .gsub('{backupId}', ERB::Util.url_encode(backup_id.to_s))
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_backup_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/backup'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_capabilities_advanced_configuration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/capabilities/advancedConfiguration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_capabilities_backup_regions_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/capabilities/backupRegions'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_capabilities_categories_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/capabilities/categories'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_capabilities_commands_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/capabilities/commands'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_capabilities_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/capabilities/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_delete(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_integration_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_integration_integration_id_delete(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_integration_integration_id_get(cluster_id:, integration_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'integration_id is required' if integration_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/integration/{integrationId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{integrationId}', ERB::Util.url_encode(integration_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_integration_post(cluster_id:, service_name:, cloud_project_database_service_integration:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_integration is required' if cloud_project_database_service_integration.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/integration'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_integration
        )
      end

      def service_name_database_valkey_cluster_id_log_kind_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/log/kind'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_log_kind_name_get(cluster_id:, name:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/log/kind/{name}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_log_subscription_get(cluster_id:, service_name:, kind: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_database_valkey_cluster_id_log_subscription_post(cluster_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/log/subscription'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_database_valkey_cluster_id_log_subscription_subscription_id_delete(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_log_subscription_subscription_id_get(cluster_id:, service_name:, subscription_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/log/subscription/{subscriptionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_log_url_post(cluster_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/log/url'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_database_valkey_cluster_id_logs_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/logs'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_maintenance_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/maintenance'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_maintenance_maintenance_id_apply_post(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/maintenance/{maintenanceId}/apply'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_maintenance_maintenance_id_get(cluster_id:, maintenance_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'maintenance_id is required' if maintenance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/maintenance/{maintenanceId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{maintenanceId}', ERB::Util.url_encode(maintenance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_metric_get(cluster_id:, service_name:, extended: nil)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/metric'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'extended' => extended }
        )
      end

      def service_name_database_valkey_cluster_id_metric_metric_name_get(cluster_id:, metric_name:, period:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'metric_name is required' if metric_name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/metric/{metricName}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{metricName}', ERB::Util.url_encode(metric_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_database_valkey_cluster_id_node_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/node'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_node_node_id_get(cluster_id:, node_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/node/{nodeId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_prometheus_credentials_reset_post(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/prometheus/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_prometheus_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/prometheus'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_put(cluster_id:, service_name:, cloud_project_database_service:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service is required' if cloud_project_database_service.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service
        )
      end

      def service_name_database_valkey_cluster_id_user_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_user_post(cluster_id:, service_name:, cloud_project_database_redis_user_creation:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_redis_user_creation is required' if cloud_project_database_redis_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/user'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_redis_user_creation
        )
      end

      def service_name_database_valkey_cluster_id_user_user_id_credentials_reset_post(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/user/{userId}/credentials/reset'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_user_user_id_delete(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_user_user_id_get(cluster_id:, service_name:, user_id:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_cluster_id_user_user_id_put(cluster_id:, service_name:, user_id:, cloud_project_database_redis_user:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_database_redis_user is required' if cloud_project_database_redis_user.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/database/valkey/{clusterId}/user/{userId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_redis_user
        )
      end

      def service_name_database_valkey_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/database/valkey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_valkey_post(service_name:, cloud_project_database_service_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_database_service_creation is required' if cloud_project_database_service_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/database/valkey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_database_service_creation
        )
      end

      def service_name_flavor_flavor_id_get(flavor_id:, service_name:)
        raise ArgumentError, 'flavor_id is required' if flavor_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/flavor/{flavorId}'
            .gsub('{flavorId}', ERB::Util.url_encode(flavor_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_flavor_get(service_name:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/flavor'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_image_get(service_name:, flavor_type: nil, os_type: nil, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/image'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'flavorType' => flavor_type, 'osType' => os_type, 'region' => region }
        )
      end

      def service_name_image_image_id_get(image_id:, service_name:)
        raise ArgumentError, 'image_id is required' if image_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/image/{imageId}'
            .gsub('{imageId}', ERB::Util.url_encode(image_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_bulk_post(service_name:, cloud_project_instance_bulk_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_bulk_creation is required' if cloud_project_instance_bulk_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/bulk'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_bulk_creation
        )
      end

      def service_name_instance_get(service_name:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/instance'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_instance_group_get(service_name:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/instance/group'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_instance_group_group_id_delete(group_id:, service_name:)
        raise ArgumentError, 'group_id is required' if group_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/instance/group/{groupId}'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_group_group_id_get(group_id:, service_name:, region: nil)
        raise ArgumentError, 'group_id is required' if group_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/instance/group/{groupId}'
            .gsub('{groupId}', ERB::Util.url_encode(group_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_instance_group_post(service_name:, cloud_project_instance_group_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_group_creation is required' if cloud_project_instance_group_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/group'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_group_creation
        )
      end

      def service_name_instance_instance_id_active_monthly_billing_post(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/activeMonthlyBilling'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_application_access_post(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/applicationAccess'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_delete(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/instance/{instanceId}'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_get(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/instance/{instanceId}'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_interface_get(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/instance/{instanceId}/interface'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_interface_interface_id_delete(instance_id:, interface_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'interface_id is required' if interface_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/instance/{instanceId}/interface/{interfaceId}'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{interfaceId}', ERB::Util.url_encode(interface_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_interface_interface_id_get(instance_id:, interface_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'interface_id is required' if interface_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/instance/{instanceId}/interface/{interfaceId}'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{interfaceId}', ERB::Util.url_encode(interface_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_interface_post(instance_id:, service_name:, cloud_project_instance_interface_creation:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_interface_creation is required' if cloud_project_instance_interface_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/interface'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_interface_creation
        )
      end

      def service_name_instance_instance_id_put(instance_id:, service_name:, cloud_project_instance_update:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_update is required' if cloud_project_instance_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/instance/{instanceId}'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_update
        )
      end

      def service_name_instance_instance_id_reboot_post(instance_id:, service_name:, cloud_project_instance_reboot_creation:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_reboot_creation is required' if cloud_project_instance_reboot_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/reboot'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_reboot_creation
        )
      end

      def service_name_instance_instance_id_reinstall_post(instance_id:, service_name:, cloud_project_instance_reinstall_creation:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_reinstall_creation is required' if cloud_project_instance_reinstall_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/reinstall'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_reinstall_creation
        )
      end

      def service_name_instance_instance_id_rescue_mode_post(instance_id:, service_name:, cloud_project_instance_rescue_mode_creation:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_rescue_mode_creation is required' if cloud_project_instance_rescue_mode_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/rescueMode'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_rescue_mode_creation
        )
      end

      def service_name_instance_instance_id_resize_post(instance_id:, service_name:, cloud_project_instance_resize_creation:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_resize_creation is required' if cloud_project_instance_resize_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/resize'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_resize_creation
        )
      end

      def service_name_instance_instance_id_resume_post(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/resume'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_shelve_post(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/shelve'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_snapshot_post(instance_id:, service_name:, cloud_project_instance_snapshot_creation:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_snapshot_creation is required' if cloud_project_instance_snapshot_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/snapshot'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_snapshot_creation
        )
      end

      def service_name_instance_instance_id_start_post(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/start'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_stop_post(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/stop'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_unshelve_post(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/unshelve'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_instance_id_vnc_post(instance_id:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance/{instanceId}/vnc'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_instance_post(service_name:, cloud_project_instance_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_instance_creation is required' if cloud_project_instance_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/instance'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_instance_creation
        )
      end

      def service_name_ip_failover_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ip/failover'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ip_failover_id_attach_post(id:, service_name:, cloud_project_ip_failover_attach_creation:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_ip_failover_attach_creation is required' if cloud_project_ip_failover_attach_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/ip/failover/{id}/attach'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_ip_failover_attach_creation
        )
      end

      def service_name_ip_failover_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ip/failover/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ip_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/ip'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_audit_logs_post(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/auditLogs'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_customization_get(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/customization'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_customization_put(kube_id:, service_name:, cloud_project_kube_customization:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_customization is required' if cloud_project_kube_customization.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/kube/{kubeId}/customization'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_customization
        )
      end

      def service_name_kube_kube_id_delete(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/kube/{kubeId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_flavors_get(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/flavors'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_get(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_ip_restrictions_get(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/ipRestrictions'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_ip_restrictions_ip_delete(ip:, kube_id:, service_name:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/kube/{kubeId}/ipRestrictions/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_ip_restrictions_post(kube_id:, service_name:, cloud_project_kube_ip_restriction_upsert:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_ip_restriction_upsert is required' if cloud_project_kube_ip_restriction_upsert.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/ipRestrictions'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_ip_restriction_upsert
        )
      end

      def service_name_kube_kube_id_ip_restrictions_put(kube_id:, service_name:, cloud_project_kube_ip_restriction_upsert:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_ip_restriction_upsert is required' if cloud_project_kube_ip_restriction_upsert.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/kube/{kubeId}/ipRestrictions'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_ip_restriction_upsert
        )
      end

      def service_name_kube_kube_id_kubeconfig_post(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/kubeconfig'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_kubeconfig_reset_post(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/kubeconfig/reset'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_log_subscription_get(kube_id:, service_name:, kind: nil)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/log/subscription'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_kube_kube_id_log_subscription_post(kube_id:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/log/subscription'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_kube_kube_id_log_subscription_subscription_id_delete(kube_id:, service_name:, subscription_id:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/kube/{kubeId}/log/subscription/{subscriptionId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_log_subscription_subscription_id_get(kube_id:, service_name:, subscription_id:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/log/subscription/{subscriptionId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_log_url_post(kube_id:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/log/url'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_kube_kube_id_metrics_etcd_usage_get(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/metrics/etcdUsage'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_node_get(kube_id:, service_name:, x_pagination_cursor: nil, history: nil)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/node'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'history' => history },
          headers: { 'X-Pagination-Cursor' => x_pagination_cursor }
        )
      end

      def service_name_kube_kube_id_node_node_id_delete(kube_id:, node_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/kube/{kubeId}/node/{nodeId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_node_node_id_get(kube_id:, node_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'node_id is required' if node_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/node/{nodeId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{nodeId}', ERB::Util.url_encode(node_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_nodepool_get(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/nodepool'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_nodepool_node_pool_id_delete(kube_id:, node_pool_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'node_pool_id is required' if node_pool_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/kube/{kubeId}/nodepool/{nodePoolId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{nodePoolId}', ERB::Util.url_encode(node_pool_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_nodepool_node_pool_id_get(kube_id:, node_pool_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'node_pool_id is required' if node_pool_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/nodepool/{nodePoolId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{nodePoolId}', ERB::Util.url_encode(node_pool_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_nodepool_node_pool_id_nodes_get(kube_id:, node_pool_id:, service_name:, x_pagination_cursor: nil, history: nil)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'node_pool_id is required' if node_pool_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/nodepool/{nodePoolId}/nodes'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{nodePoolId}', ERB::Util.url_encode(node_pool_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'history' => history },
          headers: { 'X-Pagination-Cursor' => x_pagination_cursor }
        )
      end

      def service_name_kube_kube_id_nodepool_node_pool_id_put(kube_id:, node_pool_id:, service_name:, cloud_project_kube_node_pool_update:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'node_pool_id is required' if node_pool_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_node_pool_update is required' if cloud_project_kube_node_pool_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/kube/{kubeId}/nodepool/{nodePoolId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{nodePoolId}', ERB::Util.url_encode(node_pool_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_node_pool_update
        )
      end

      def service_name_kube_kube_id_nodepool_post(kube_id:, service_name:, cloud_project_kube_node_pool_creation:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_node_pool_creation is required' if cloud_project_kube_node_pool_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/nodepool'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_node_pool_creation
        )
      end

      def service_name_kube_kube_id_open_id_connect_delete(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/kube/{kubeId}/openIdConnect'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_open_id_connect_get(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/openIdConnect'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_open_id_connect_post(kube_id:, service_name:, cloud_project_kube_open_id_connect_creation:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_open_id_connect_creation is required' if cloud_project_kube_open_id_connect_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/openIdConnect'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_open_id_connect_creation
        )
      end

      def service_name_kube_kube_id_open_id_connect_put(kube_id:, service_name:, cloud_project_kube_open_id_connect_update:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_open_id_connect_update is required' if cloud_project_kube_open_id_connect_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/kube/{kubeId}/openIdConnect'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_open_id_connect_update
        )
      end

      def service_name_kube_kube_id_private_network_configuration_get(kube_id:, service_name:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/kube/{kubeId}/privateNetworkConfiguration'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_kube_kube_id_private_network_configuration_put(kube_id:, service_name:, cloud_kube_private_network_configuration:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_kube_private_network_configuration is required' if cloud_kube_private_network_configuration.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/kube/{kubeId}/privateNetworkConfiguration'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_kube_private_network_configuration
        )
      end

      def service_name_kube_kube_id_put(kube_id:, service_name:, cloud_project_kube_update:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_update is required' if cloud_project_kube_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/kube/{kubeId}'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_update
        )
      end

      def service_name_kube_kube_id_reset_post(kube_id:, service_name:, cloud_project_kube_reset_creation:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_reset_creation is required' if cloud_project_kube_reset_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/reset'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_reset_creation
        )
      end

      def service_name_kube_kube_id_restart_post(kube_id:, service_name:, cloud_project_kube_restart:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_restart is required' if cloud_project_kube_restart.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/restart'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_restart
        )
      end

      def service_name_kube_kube_id_update_load_balancers_subnet_id_put(kube_id:, service_name:, cloud_project_kube_update_load_balancers_subnet_id:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_update_load_balancers_subnet_id is required' if cloud_project_kube_update_load_balancers_subnet_id.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/kube/{kubeId}/updateLoadBalancersSubnetId'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_update_load_balancers_subnet_id
        )
      end

      def service_name_kube_kube_id_update_policy_put(kube_id:, service_name:, cloud_project_kube_update_policy_update:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_update_policy_update is required' if cloud_project_kube_update_policy_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/kube/{kubeId}/updatePolicy'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_update_policy_update
        )
      end

      def service_name_kube_kube_id_update_post(kube_id:, service_name:, cloud_project_kube_update_creation:)
        raise ArgumentError, 'kube_id is required' if kube_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_update_creation is required' if cloud_project_kube_update_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube/{kubeId}/update'
            .gsub('{kubeId}', ERB::Util.url_encode(kube_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_update_creation
        )
      end

      def service_name_kube_post(service_name:, cloud_project_kube_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_kube_creation is required' if cloud_project_kube_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/kube'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_kube_creation
        )
      end

      def service_name_lab_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/lab'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_lab_lab_id_agreement_get(lab_id:, service_name:)
        raise ArgumentError, 'lab_id is required' if lab_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/lab/{labId}/agreement'
            .gsub('{labId}', ERB::Util.url_encode(lab_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_lab_lab_id_get(lab_id:, service_name:)
        raise ArgumentError, 'lab_id is required' if lab_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/lab/{labId}'
            .gsub('{labId}', ERB::Util.url_encode(lab_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_lab_lab_id_post(lab_id:, service_name:)
        raise ArgumentError, 'lab_id is required' if lab_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/lab/{labId}'
            .gsub('{labId}', ERB::Util.url_encode(lab_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loadbalancer_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/loadbalancer'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loadbalancer_load_balancer_id_configuration_get(load_balancer_id:, service_name:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/loadbalancer/{loadBalancerId}/configuration'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loadbalancer_load_balancer_id_configuration_post(load_balancer_id:, service_name:, cloud_project_loadbalancer_configuration_creation:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_loadbalancer_configuration_creation is required' if cloud_project_loadbalancer_configuration_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/loadbalancer/{loadBalancerId}/configuration'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_loadbalancer_configuration_creation
        )
      end

      def service_name_loadbalancer_load_balancer_id_configuration_version_apply_post(load_balancer_id:, service_name:, version:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/loadbalancer/{loadBalancerId}/configuration/{version}/apply'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{version}', ERB::Util.url_encode(version.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loadbalancer_load_balancer_id_configuration_version_delete(load_balancer_id:, service_name:, version:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/loadbalancer/{loadBalancerId}/configuration/{version}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{version}', ERB::Util.url_encode(version.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loadbalancer_load_balancer_id_configuration_version_get(load_balancer_id:, service_name:, version:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/loadbalancer/{loadBalancerId}/configuration/{version}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{version}', ERB::Util.url_encode(version.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loadbalancer_load_balancer_id_delete(load_balancer_id:, service_name:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/loadbalancer/{loadBalancerId}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loadbalancer_load_balancer_id_get(load_balancer_id:, service_name:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/loadbalancer/{loadBalancerId}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_loadbalancer_load_balancer_id_put(load_balancer_id:, service_name:, cloud_project_load_balancer:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_load_balancer is required' if cloud_project_load_balancer.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/loadbalancer/{loadBalancerId}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_load_balancer
        )
      end

      def service_name_loadbalancer_post(service_name:, cloud_project_load_balancer_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_load_balancer_creation is required' if cloud_project_load_balancer_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/loadbalancer'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_load_balancer_creation
        )
      end

      def service_name_network_private_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/network/private'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_private_network_id_delete(network_id:, service_name:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/network/private/{networkId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_private_network_id_get(network_id:, service_name:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/network/private/{networkId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_private_network_id_put(network_id:, service_name:, cloud_project_network_private_update:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_network_private_update is required' if cloud_project_network_private_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/network/private/{networkId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_network_private_update
        )
      end

      def service_name_network_private_network_id_region_post(network_id:, service_name:, cloud_project_network_private_region_creation:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_network_private_region_creation is required' if cloud_project_network_private_region_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/network/private/{networkId}/region'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_network_private_region_creation
        )
      end

      def service_name_network_private_network_id_subnet_get(network_id:, service_name:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/network/private/{networkId}/subnet'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_private_network_id_subnet_post(network_id:, service_name:, cloud_project_network_private_subnet_creation:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_network_private_subnet_creation is required' if cloud_project_network_private_subnet_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/network/private/{networkId}/subnet'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_network_private_subnet_creation
        )
      end

      def service_name_network_private_network_id_subnet_subnet_id_delete(network_id:, service_name:, subnet_id:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subnet_id is required' if subnet_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/network/private/{networkId}/subnet/{subnetId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subnetId}', ERB::Util.url_encode(subnet_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_network_private_post(service_name:, cloud_project_network_private_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_network_private_creation is required' if cloud_project_network_private_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/network/private'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_network_private_creation
        )
      end

      def service_name_network_public_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/network/public'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_operation_get(service_name:, instance_id: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/operation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'instanceId' => instance_id }
        )
      end

      def service_name_operation_operation_id_get(operation_id:, service_name:)
        raise ArgumentError, 'operation_id is required' if operation_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/operation/{operationId}'
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, cloud_project:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project is required' if cloud_project.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project
        )
      end

      def service_name_quantum_capabilities_region_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/quantum/capabilities/region'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_quantum_capabilities_region_region_get(region:, service_name:)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/quantum/capabilities/region/{region}'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_quantum_capabilities_region_region_qpu_get(region:, service_name:, compatible_with_framework: nil)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/quantum/capabilities/region/{region}/qpu'
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'compatibleWithFramework' => compatible_with_framework }
        )
      end

      def service_name_quantum_capabilities_region_region_qpu_qpu_flavor_id_get(qpu_flavor_id:, region:, service_name:)
        raise ArgumentError, 'qpu_flavor_id is required' if qpu_flavor_id.nil?
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/quantum/capabilities/region/{region}/qpu/{qpuFlavorId}'
            .gsub('{qpuFlavorId}', ERB::Util.url_encode(qpu_flavor_id.to_s))
            .gsub('{region}', ERB::Util.url_encode(region.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_quota_get(service_name:, categories: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/quota'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'categories' => categories }
        )
      end

      def service_name_region_available_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/regionAvailable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_post(service_name:, cloud_project_region_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_region_creation is required' if cloud_project_region_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_region_creation
        )
      end

      def service_name_region_region_name_cold_archive_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_cold_archive_name_archive_post(name:, region_name:, service_name:, cloud_storage_archive_cold_archive_container:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_archive_cold_archive_container is required' if cloud_storage_archive_cold_archive_container.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive/{name}/archive'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_archive_cold_archive_container
        )
      end

      def service_name_region_region_name_cold_archive_name_delete(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_cold_archive_name_destroy_post(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive/{name}/destroy'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_cold_archive_name_get(name:, region_name:, service_name:, limit: nil, marker: nil, prefix: nil)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'marker' => marker, 'prefix' => prefix }
        )
      end

      def service_name_region_region_name_cold_archive_name_object_object_key_delete(name:, object_key:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'object_key is required' if object_key.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive/{name}/object/{objectKey}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{objectKey}', ERB::Util.url_encode(object_key.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_cold_archive_name_policy_user_id_post(name:, region_name:, service_name:, user_id:, cloud_storage_add_container_policy:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_storage_add_container_policy is required' if cloud_storage_add_container_policy.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive/{name}/policy/{userId}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_add_container_policy
        )
      end

      def service_name_region_region_name_cold_archive_name_presign_post(name:, region_name:, service_name:, cloud_storage_presigned_url_input:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_presigned_url_input is required' if cloud_storage_presigned_url_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive/{name}/presign'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_presigned_url_input
        )
      end

      def service_name_region_region_name_cold_archive_name_restore_post(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive/{name}/restore'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_cold_archive_post(region_name:, service_name:, cloud_storage_container_creation:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_container_creation is required' if cloud_storage_container_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/coldArchive'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_container_creation
        )
      end

      def service_name_region_region_name_floatingip_floating_ip_id_delete(floating_ip_id:, region_name:, service_name:)
        raise ArgumentError, 'floating_ip_id is required' if floating_ip_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/floatingip/{floatingIpId}'
            .gsub('{floatingIpId}', ERB::Util.url_encode(floating_ip_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_floatingip_floating_ip_id_detach_post(floating_ip_id:, region_name:, service_name:)
        raise ArgumentError, 'floating_ip_id is required' if floating_ip_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/floatingip/{floatingIpId}/detach'
            .gsub('{floatingIpId}', ERB::Util.url_encode(floating_ip_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_floatingip_floating_ip_id_get(floating_ip_id:, region_name:, service_name:)
        raise ArgumentError, 'floating_ip_id is required' if floating_ip_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/floatingip/{floatingIpId}'
            .gsub('{floatingIpId}', ERB::Util.url_encode(floating_ip_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_floatingip_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/floatingip'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_gateway_get(region_name:, service_name:, limit: nil, marker: nil, subnet_id: nil, with_subnets: nil)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/gateway'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'marker' => marker, 'subnetId' => subnet_id, 'withSubnets' => with_subnets }
        )
      end

      def service_name_region_region_name_gateway_id_delete(id:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/gateway/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_gateway_id_expose_post(id:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/gateway/{id}/expose'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_gateway_id_get(id:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/gateway/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_gateway_id_interface_get(id:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/gateway/{id}/interface'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_gateway_id_interface_interface_id_delete(id:, interface_id:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'interface_id is required' if interface_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/gateway/{id}/interface/{interfaceId}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{interfaceId}', ERB::Util.url_encode(interface_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_gateway_id_interface_interface_id_get(id:, interface_id:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'interface_id is required' if interface_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/gateway/{id}/interface/{interfaceId}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{interfaceId}', ERB::Util.url_encode(interface_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_gateway_id_interface_post(id:, region_name:, service_name:, cloud_network_gateway_create_interface:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_network_gateway_create_interface is required' if cloud_network_gateway_create_interface.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/gateway/{id}/interface'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_network_gateway_create_interface
        )
      end

      def service_name_region_region_name_gateway_id_put(id:, region_name:, service_name:, cloud_network_update_gateway:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_network_update_gateway is required' if cloud_network_update_gateway.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/gateway/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_network_update_gateway
        )
      end

      def service_name_region_region_name_gateway_post(region_name:, service_name:, cloud_network_create_gateway:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_network_create_gateway is required' if cloud_network_create_gateway.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/gateway'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_network_create_gateway
        )
      end

      def service_name_region_region_name_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_instance_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/instance'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_instance_instance_id_abort_snapshot_post(instance_id:, region_name:, service_name:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/instance/{instanceId}/abortSnapshot'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_instance_instance_id_associate_floating_ip_post(instance_id:, region_name:, service_name:, cloud_instance_associate_floating_ip:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_instance_associate_floating_ip is required' if cloud_instance_associate_floating_ip.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/instance/{instanceId}/associateFloatingIp'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_instance_associate_floating_ip
        )
      end

      def service_name_region_region_name_instance_instance_id_autobackup_post(instance_id:, region_name:, service_name:, cloud_instance_auto_backup:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_instance_auto_backup is required' if cloud_instance_auto_backup.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/instance/{instanceId}/autobackup'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_instance_auto_backup
        )
      end

      def service_name_region_region_name_instance_instance_id_floating_ip_post(instance_id:, region_name:, service_name:, cloud_instance_create_floating_ip:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_instance_create_floating_ip is required' if cloud_instance_create_floating_ip.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/instance/{instanceId}/floatingIp'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_instance_create_floating_ip
        )
      end

      def service_name_region_region_name_instance_instance_id_get(instance_id:, region_name:, service_name:, deleted: nil, with_backups: nil, with_image: nil, with_networks: nil, with_volumes: nil)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/instance/{instanceId}'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'deleted' => deleted, 'withBackups' => with_backups, 'withImage' => with_image, 'withNetworks' => with_networks, 'withVolumes' => with_volumes }
        )
      end

      def service_name_region_region_name_instance_instance_id_reinstall_post(instance_id:, region_name:, service_name:, cloud_instance_reinstall:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_instance_reinstall is required' if cloud_instance_reinstall.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/instance/{instanceId}/reinstall'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_instance_reinstall
        )
      end

      def service_name_region_region_name_instance_instance_id_snapshot_post(instance_id:, region_name:, service_name:, cloud_instance_create_snapshot:)
        raise ArgumentError, 'instance_id is required' if instance_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_instance_create_snapshot is required' if cloud_instance_create_snapshot.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/instance/{instanceId}/snapshot'
            .gsub('{instanceId}', ERB::Util.url_encode(instance_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_instance_create_snapshot
        )
      end

      def service_name_region_region_name_instance_post(region_name:, service_name:, cloud_instance_create_input:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_instance_create_input is required' if cloud_instance_create_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/instance'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_instance_create_input
        )
      end

      def service_name_region_region_name_keymanager_certificate_certificate_id_delete(certificate_id:, region_name:, service_name:)
        raise ArgumentError, 'certificate_id is required' if certificate_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/keymanager/certificate/{certificateId}'
            .gsub('{certificateId}', ERB::Util.url_encode(certificate_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_keymanager_certificate_certificate_id_get(certificate_id:, region_name:, service_name:)
        raise ArgumentError, 'certificate_id is required' if certificate_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/keymanager/certificate/{certificateId}'
            .gsub('{certificateId}', ERB::Util.url_encode(certificate_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_keymanager_certificate_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/keymanager/certificate'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_keymanager_certificate_post(region_name:, service_name:, cloud_keymanager_certificate_create:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_keymanager_certificate_create is required' if cloud_keymanager_certificate_create.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/keymanager/certificate'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_keymanager_certificate_create
        )
      end

      def service_name_region_region_name_keymanager_secret_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/keymanager/secret'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_keymanager_secret_secret_id_delete(region_name:, secret_id:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'secret_id is required' if secret_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/keymanager/secret/{secretId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{secretId}', ERB::Util.url_encode(secret_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_keymanager_secret_secret_id_get(region_name:, secret_id:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'secret_id is required' if secret_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/keymanager/secret/{secretId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{secretId}', ERB::Util.url_encode(secret_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_flavor_flavor_id_get(flavor_id:, region_name:, service_name:)
        raise ArgumentError, 'flavor_id is required' if flavor_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/flavor/{flavorId}'
            .gsub('{flavorId}', ERB::Util.url_encode(flavor_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_flavor_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/flavor'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_health_monitor_get(region_name:, service_name:, pool_id: nil)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/healthMonitor'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'poolId' => pool_id }
        )
      end

      def service_name_region_region_name_loadbalancing_health_monitor_health_monitor_id_delete(health_monitor_id:, region_name:, service_name:)
        raise ArgumentError, 'health_monitor_id is required' if health_monitor_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/healthMonitor/{healthMonitorId}'
            .gsub('{healthMonitorId}', ERB::Util.url_encode(health_monitor_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_health_monitor_health_monitor_id_get(health_monitor_id:, region_name:, service_name:)
        raise ArgumentError, 'health_monitor_id is required' if health_monitor_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/healthMonitor/{healthMonitorId}'
            .gsub('{healthMonitorId}', ERB::Util.url_encode(health_monitor_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_health_monitor_health_monitor_id_put(health_monitor_id:, region_name:, service_name:, cloud_loadbalancing_update_health_monitor:)
        raise ArgumentError, 'health_monitor_id is required' if health_monitor_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_update_health_monitor is required' if cloud_loadbalancing_update_health_monitor.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/healthMonitor/{healthMonitorId}'
            .gsub('{healthMonitorId}', ERB::Util.url_encode(health_monitor_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_update_health_monitor
        )
      end

      def service_name_region_region_name_loadbalancing_health_monitor_post(region_name:, service_name:, cloud_loadbalancing_health_monitor:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_health_monitor is required' if cloud_loadbalancing_health_monitor.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/healthMonitor'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_health_monitor
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_get(region_name:, service_name:, listener_id: nil)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'listenerId' => listener_id }
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_l7_policy_id_delete(l7_policy_id:, region_name:, service_name:)
        raise ArgumentError, 'l7_policy_id is required' if l7_policy_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy/{l7PolicyId}'
            .gsub('{l7PolicyId}', ERB::Util.url_encode(l7_policy_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_l7_policy_id_get(l7_policy_id:, region_name:, service_name:)
        raise ArgumentError, 'l7_policy_id is required' if l7_policy_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy/{l7PolicyId}'
            .gsub('{l7PolicyId}', ERB::Util.url_encode(l7_policy_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_l7_policy_id_l7_rule_get(l7_policy_id:, region_name:, service_name:)
        raise ArgumentError, 'l7_policy_id is required' if l7_policy_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy/{l7PolicyId}/l7Rule'
            .gsub('{l7PolicyId}', ERB::Util.url_encode(l7_policy_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_l7_policy_id_l7_rule_l7_rule_id_delete(l7_policy_id:, l7_rule_id:, region_name:, service_name:)
        raise ArgumentError, 'l7_policy_id is required' if l7_policy_id.nil?
        raise ArgumentError, 'l7_rule_id is required' if l7_rule_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy/{l7PolicyId}/l7Rule/{l7RuleId}'
            .gsub('{l7PolicyId}', ERB::Util.url_encode(l7_policy_id.to_s))
            .gsub('{l7RuleId}', ERB::Util.url_encode(l7_rule_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_l7_policy_id_l7_rule_l7_rule_id_get(l7_policy_id:, l7_rule_id:, region_name:, service_name:)
        raise ArgumentError, 'l7_policy_id is required' if l7_policy_id.nil?
        raise ArgumentError, 'l7_rule_id is required' if l7_rule_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy/{l7PolicyId}/l7Rule/{l7RuleId}'
            .gsub('{l7PolicyId}', ERB::Util.url_encode(l7_policy_id.to_s))
            .gsub('{l7RuleId}', ERB::Util.url_encode(l7_rule_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_l7_policy_id_l7_rule_l7_rule_id_put(l7_policy_id:, l7_rule_id:, region_name:, service_name:, cloud_loadbalancing_l7_rule:)
        raise ArgumentError, 'l7_policy_id is required' if l7_policy_id.nil?
        raise ArgumentError, 'l7_rule_id is required' if l7_rule_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_l7_rule is required' if cloud_loadbalancing_l7_rule.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy/{l7PolicyId}/l7Rule/{l7RuleId}'
            .gsub('{l7PolicyId}', ERB::Util.url_encode(l7_policy_id.to_s))
            .gsub('{l7RuleId}', ERB::Util.url_encode(l7_rule_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_l7_rule
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_l7_policy_id_l7_rule_post(l7_policy_id:, region_name:, service_name:, cloud_loadbalancing_l7_rule:)
        raise ArgumentError, 'l7_policy_id is required' if l7_policy_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_l7_rule is required' if cloud_loadbalancing_l7_rule.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy/{l7PolicyId}/l7Rule'
            .gsub('{l7PolicyId}', ERB::Util.url_encode(l7_policy_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_l7_rule
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_l7_policy_id_put(l7_policy_id:, region_name:, service_name:, cloud_loadbalancing_l7_policy_update:)
        raise ArgumentError, 'l7_policy_id is required' if l7_policy_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_l7_policy_update is required' if cloud_loadbalancing_l7_policy_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy/{l7PolicyId}'
            .gsub('{l7PolicyId}', ERB::Util.url_encode(l7_policy_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_l7_policy_update
        )
      end

      def service_name_region_region_name_loadbalancing_l7_policy_post(region_name:, service_name:, cloud_loadbalancing_l7_policy:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_l7_policy is required' if cloud_loadbalancing_l7_policy.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/l7Policy'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_l7_policy
        )
      end

      def service_name_region_region_name_loadbalancing_listener_get(region_name:, service_name:, loadbalancer_id: nil)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/listener'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'loadbalancerId' => loadbalancer_id }
        )
      end

      def service_name_region_region_name_loadbalancing_listener_listener_id_delete(listener_id:, region_name:, service_name:)
        raise ArgumentError, 'listener_id is required' if listener_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/listener/{listenerId}'
            .gsub('{listenerId}', ERB::Util.url_encode(listener_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_listener_listener_id_get(listener_id:, region_name:, service_name:)
        raise ArgumentError, 'listener_id is required' if listener_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/listener/{listenerId}'
            .gsub('{listenerId}', ERB::Util.url_encode(listener_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_listener_listener_id_put(listener_id:, region_name:, service_name:, cloud_loadbalancing_edit_listener:)
        raise ArgumentError, 'listener_id is required' if listener_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_edit_listener is required' if cloud_loadbalancing_edit_listener.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/listener/{listenerId}'
            .gsub('{listenerId}', ERB::Util.url_encode(listener_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_edit_listener
        )
      end

      def service_name_region_region_name_loadbalancing_listener_post(region_name:, service_name:, cloud_loadbalancing_create_listener:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_create_listener is required' if cloud_loadbalancing_create_listener.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/listener'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_create_listener
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_associate_floating_ip_post(load_balancer_id:, region_name:, service_name:, cloud_loadbalancing_associate_floating_ip:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_associate_floating_ip is required' if cloud_loadbalancing_associate_floating_ip.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}/associateFloatingIp'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_associate_floating_ip
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_delete(load_balancer_id:, region_name:, service_name:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_floating_ip_post(load_balancer_id:, region_name:, service_name:, cloud_loadbalancing_create_floating_ip:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_create_floating_ip is required' if cloud_loadbalancing_create_floating_ip.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}/floatingIp'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_create_floating_ip
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_get(load_balancer_id:, region_name:, service_name:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_log_subscription_get(load_balancer_id:, region_name:, service_name:, kind: nil)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}/log/subscription'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_log_subscription_post(load_balancer_id:, region_name:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}/log/subscription'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_log_subscription_subscription_id_delete(load_balancer_id:, region_name:, service_name:, subscription_id:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}/log/subscription/{subscriptionId}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_log_subscription_subscription_id_get(load_balancer_id:, region_name:, service_name:, subscription_id:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}/log/subscription/{subscriptionId}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_log_url_post(load_balancer_id:, region_name:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}/log/url'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_put(load_balancer_id:, region_name:, service_name:, cloud_loadbalancing_loadbalancer_edit:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_loadbalancer_edit is required' if cloud_loadbalancing_loadbalancer_edit.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_loadbalancer_edit
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_load_balancer_id_stats_get(load_balancer_id:, region_name:, service_name:)
        raise ArgumentError, 'load_balancer_id is required' if load_balancer_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer/{loadBalancerId}/stats'
            .gsub('{loadBalancerId}', ERB::Util.url_encode(load_balancer_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_loadbalancer_post(region_name:, service_name:, cloud_loadbalancing_loadbalancer_create_input:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_loadbalancer_create_input is required' if cloud_loadbalancing_loadbalancer_create_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/loadbalancer'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_loadbalancer_create_input
        )
      end

      def service_name_region_region_name_loadbalancing_log_kind_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/log/kind'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_log_kind_name_get(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_pool_get(region_name:, service_name:, loadbalancer_id: nil)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'loadbalancerId' => loadbalancer_id }
        )
      end

      def service_name_region_region_name_loadbalancing_pool_pool_id_delete(pool_id:, region_name:, service_name:)
        raise ArgumentError, 'pool_id is required' if pool_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool/{poolId}'
            .gsub('{poolId}', ERB::Util.url_encode(pool_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_pool_pool_id_get(pool_id:, region_name:, service_name:)
        raise ArgumentError, 'pool_id is required' if pool_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool/{poolId}'
            .gsub('{poolId}', ERB::Util.url_encode(pool_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_pool_pool_id_member_get(pool_id:, region_name:, service_name:)
        raise ArgumentError, 'pool_id is required' if pool_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool/{poolId}/member'
            .gsub('{poolId}', ERB::Util.url_encode(pool_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_pool_pool_id_member_member_id_delete(member_id:, pool_id:, region_name:, service_name:)
        raise ArgumentError, 'member_id is required' if member_id.nil?
        raise ArgumentError, 'pool_id is required' if pool_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool/{poolId}/member/{memberId}'
            .gsub('{memberId}', ERB::Util.url_encode(member_id.to_s))
            .gsub('{poolId}', ERB::Util.url_encode(pool_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_pool_pool_id_member_member_id_get(member_id:, pool_id:, region_name:, service_name:)
        raise ArgumentError, 'member_id is required' if member_id.nil?
        raise ArgumentError, 'pool_id is required' if pool_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool/{poolId}/member/{memberId}'
            .gsub('{memberId}', ERB::Util.url_encode(member_id.to_s))
            .gsub('{poolId}', ERB::Util.url_encode(pool_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_loadbalancing_pool_pool_id_member_member_id_put(member_id:, pool_id:, region_name:, service_name:, cloud_loadbalancing_pool_member_update:)
        raise ArgumentError, 'member_id is required' if member_id.nil?
        raise ArgumentError, 'pool_id is required' if pool_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_pool_member_update is required' if cloud_loadbalancing_pool_member_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool/{poolId}/member/{memberId}'
            .gsub('{memberId}', ERB::Util.url_encode(member_id.to_s))
            .gsub('{poolId}', ERB::Util.url_encode(pool_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_pool_member_update
        )
      end

      def service_name_region_region_name_loadbalancing_pool_pool_id_member_post(pool_id:, region_name:, service_name:, cloud_loadbalancing_pool_create_members:)
        raise ArgumentError, 'pool_id is required' if pool_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_pool_create_members is required' if cloud_loadbalancing_pool_create_members.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool/{poolId}/member'
            .gsub('{poolId}', ERB::Util.url_encode(pool_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_pool_create_members
        )
      end

      def service_name_region_region_name_loadbalancing_pool_pool_id_put(pool_id:, region_name:, service_name:, cloud_loadbalancing_pool_update:)
        raise ArgumentError, 'pool_id is required' if pool_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_pool_update is required' if cloud_loadbalancing_pool_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool/{poolId}'
            .gsub('{poolId}', ERB::Util.url_encode(pool_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_pool_update
        )
      end

      def service_name_region_region_name_loadbalancing_pool_post(region_name:, service_name:, cloud_loadbalancing_pool_create:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_loadbalancing_pool_create is required' if cloud_loadbalancing_pool_create.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/loadbalancing/pool'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_loadbalancing_pool_create
        )
      end

      def service_name_region_region_name_log_kind_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/log/kind'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_log_kind_name_get(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_log_subscription_get(region_name:, service_name:, kind: nil)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/log/subscription'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_region_region_name_log_subscription_post(region_name:, service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/log/subscription'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_region_region_name_log_subscription_subscription_id_delete(region_name:, service_name:, subscription_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/log/subscription/{subscriptionId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_log_subscription_subscription_id_get(region_name:, service_name:, subscription_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/log/subscription/{subscriptionId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_log_url_post(region_name:, service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/log/url'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_region_region_name_network_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/network'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_network_network_id_delete(network_id:, region_name:, service_name:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/network/{networkId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_network_network_id_get(network_id:, region_name:, service_name:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/network/{networkId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_network_network_id_subnet_get(network_id:, region_name:, service_name:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/network/{networkId}/subnet'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_network_network_id_subnet_post(network_id:, region_name:, service_name:, cloud_network_create_subnet:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_network_create_subnet is required' if cloud_network_create_subnet.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/network/{networkId}/subnet'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_network_create_subnet
        )
      end

      def service_name_region_region_name_network_network_id_subnet_subnet_id_delete(network_id:, region_name:, service_name:, subnet_id:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subnet_id is required' if subnet_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/network/{networkId}/subnet/{subnetId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subnetId}', ERB::Util.url_encode(subnet_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_network_network_id_subnet_subnet_id_gateway_post(network_id:, region_name:, service_name:, subnet_id:, cloud_network_create_gateway_summary:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subnet_id is required' if subnet_id.nil?
        raise ArgumentError, 'cloud_network_create_gateway_summary is required' if cloud_network_create_gateway_summary.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/network/{networkId}/subnet/{subnetId}/gateway'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subnetId}', ERB::Util.url_encode(subnet_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_network_create_gateway_summary
        )
      end

      def service_name_region_region_name_network_network_id_subnet_subnet_id_get(network_id:, region_name:, service_name:, subnet_id:)
        raise ArgumentError, 'network_id is required' if network_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subnet_id is required' if subnet_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/network/{networkId}/subnet/{subnetId}'
            .gsub('{networkId}', ERB::Util.url_encode(network_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subnetId}', ERB::Util.url_encode(subnet_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_network_post(region_name:, service_name:, cloud_network_create_network:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_network_create_network is required' if cloud_network_create_network.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/network'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_network_create_network
        )
      end

      def service_name_region_region_name_quota_allowed_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/quota/allowed'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_quota_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/quota'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_quota_post(region_name:, service_name:, cloud_project_region_quota_creation:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_region_quota_creation is required' if cloud_project_region_quota_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/quota'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_region_quota_creation
        )
      end

      def service_name_region_region_name_quota_storage_delete(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/quota/storage'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_quota_storage_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/quota/storage'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_quota_storage_put(region_name:, service_name:, cloud_quota_storage_quota_update:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_quota_storage_quota_update is required' if cloud_quota_storage_quota_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/quota/storage'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_quota_storage_quota_update
        )
      end

      def service_name_region_region_name_share_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/share'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_network_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/shareNetwork'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_network_post(region_name:, service_name:, cloud_share_share_network_create:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_share_share_network_create is required' if cloud_share_share_network_create.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/shareNetwork'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_share_share_network_create
        )
      end

      def service_name_region_region_name_share_network_share_network_id_delete(region_name:, service_name:, share_network_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_network_id is required' if share_network_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/shareNetwork/{shareNetworkId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareNetworkId}', ERB::Util.url_encode(share_network_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_network_share_network_id_get(region_name:, service_name:, share_network_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_network_id is required' if share_network_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/shareNetwork/{shareNetworkId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareNetworkId}', ERB::Util.url_encode(share_network_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_post(region_name:, service_name:, cloud_share_share_create:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_share_share_create is required' if cloud_share_share_create.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/share'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_share_share_create
        )
      end

      def service_name_region_region_name_share_share_id_acl_acl_id_delete(acl_id:, region_name:, service_name:, share_id:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}/acl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_share_id_acl_acl_id_get(acl_id:, region_name:, service_name:, share_id:)
        raise ArgumentError, 'acl_id is required' if acl_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}/acl/{aclId}'
            .gsub('{aclId}', ERB::Util.url_encode(acl_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_share_id_acl_get(region_name:, service_name:, share_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}/acl'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_share_id_acl_post(region_name:, service_name:, share_id:, cloud_share_acl_acl_create:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'cloud_share_acl_acl_create is required' if cloud_share_acl_acl_create.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}/acl'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_share_acl_acl_create
        )
      end

      def service_name_region_region_name_share_share_id_delete(region_name:, service_name:, share_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_share_id_get(region_name:, service_name:, share_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_share_id_put(region_name:, service_name:, share_id:, cloud_share_share_update:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'cloud_share_share_update is required' if cloud_share_share_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_share_share_update
        )
      end

      def service_name_region_region_name_share_share_id_snapshot_get(region_name:, service_name:, share_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}/snapshot'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_share_id_snapshot_post(region_name:, service_name:, share_id:, cloud_share_snapshot_snapshot:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'cloud_share_snapshot_snapshot is required' if cloud_share_snapshot_snapshot.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}/snapshot'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_share_snapshot_snapshot
        )
      end

      def service_name_region_region_name_share_share_id_snapshot_snapshot_id_delete(region_name:, service_name:, share_id:, snapshot_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'snapshot_id is required' if snapshot_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}/snapshot/{snapshotId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s))
            .gsub('{snapshotId}', ERB::Util.url_encode(snapshot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_share_share_id_snapshot_snapshot_id_get(region_name:, service_name:, share_id:, snapshot_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'share_id is required' if share_id.nil?
        raise ArgumentError, 'snapshot_id is required' if snapshot_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/share/{shareId}/snapshot/{snapshotId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shareId}', ERB::Util.url_encode(share_id.to_s))
            .gsub('{snapshotId}', ERB::Util.url_encode(snapshot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_bulk_delete_objects_post(name:, region_name:, service_name:, cloud_storage_object_delete_bulk:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_object_delete_bulk is required' if cloud_storage_object_delete_bulk.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/bulkDeleteObjects'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_object_delete_bulk
        )
      end

      def service_name_region_region_name_storage_name_delete(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_get(name:, region_name:, service_name:, limit: nil, marker: nil, no_objects: nil, prefix: nil)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'marker' => marker, 'noObjects' => no_objects, 'prefix' => prefix }
        )
      end

      def service_name_region_region_name_storage_name_job_replication_get(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/job/replication'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_job_replication_post(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/job/replication'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_lifecycle_delete(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/lifecycle'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_lifecycle_get(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/lifecycle'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_lifecycle_put(name:, region_name:, service_name:, cloud_storage_lifecycle_configuration:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_lifecycle_configuration is required' if cloud_storage_lifecycle_configuration.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/lifecycle'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_lifecycle_configuration
        )
      end

      def service_name_region_region_name_storage_name_multipart_upload_get(name:, region_name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/multipartUpload'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_multipart_upload_post(name:, region_name:, service_name:, cloud_storage_multipart_upload_creation:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_multipart_upload_creation is required' if cloud_storage_multipart_upload_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/multipartUpload'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_multipart_upload_creation
        )
      end

      def service_name_region_region_name_storage_name_object_get(name:, region_name:, service_name:, delimiter: nil, key_marker: nil, limit: nil, prefix: nil, version_id_marker: nil, with_versions: nil)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'delimiter' => delimiter, 'keyMarker' => key_marker, 'limit' => limit, 'prefix' => prefix, 'versionIdMarker' => version_id_marker, 'withVersions' => with_versions }
        )
      end

      def service_name_region_region_name_storage_name_object_key_copy_post(key:, name:, region_name:, service_name:, cloud_storage_copy_object_in:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_copy_object_in is required' if cloud_storage_copy_object_in.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/copy'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_copy_object_in
        )
      end

      def service_name_region_region_name_storage_name_object_key_delete(key:, name:, region_name:, service_name:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_object_key_get(key:, name:, region_name:, service_name:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_object_key_multipart_upload_get(key:, name:, region_name:, service_name:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/multipartUpload'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_object_key_multipart_upload_id_delete(id:, key:, name:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/multipartUpload/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_object_key_multipart_upload_id_get(id:, key:, name:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/multipartUpload/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_object_key_multipart_upload_id_parts_get(id:, key:, name:, region_name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/multipartUpload/{id}/parts'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_object_key_put(key:, name:, region_name:, service_name:, cloud_storage_object_update:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_object_update is required' if cloud_storage_object_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_object_update
        )
      end

      def service_name_region_region_name_storage_name_object_key_restore_post(key:, name:, region_name:, service_name:, cloud_storage_restore_object_in:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_restore_object_in is required' if cloud_storage_restore_object_in.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/restore'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_restore_object_in
        )
      end

      def service_name_region_region_name_storage_name_object_key_version_get(key:, name:, region_name:, service_name:, limit: nil, version_id_marker: nil)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/version'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit, 'versionIdMarker' => version_id_marker }
        )
      end

      def service_name_region_region_name_storage_name_object_key_version_version_id_copy_post(key:, name:, region_name:, service_name:, version_id:, cloud_storage_copy_object_in:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version_id is required' if version_id.nil?
        raise ArgumentError, 'cloud_storage_copy_object_in is required' if cloud_storage_copy_object_in.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/version/{versionId}/copy'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{versionId}', ERB::Util.url_encode(version_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_copy_object_in
        )
      end

      def service_name_region_region_name_storage_name_object_key_version_version_id_delete(key:, name:, region_name:, service_name:, version_id:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version_id is required' if version_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/version/{versionId}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{versionId}', ERB::Util.url_encode(version_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_object_key_version_version_id_get(key:, name:, region_name:, service_name:, version_id:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version_id is required' if version_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/version/{versionId}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{versionId}', ERB::Util.url_encode(version_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_storage_name_object_key_version_version_id_put(key:, name:, region_name:, service_name:, version_id:, cloud_storage_object_update:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version_id is required' if version_id.nil?
        raise ArgumentError, 'cloud_storage_object_update is required' if cloud_storage_object_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/version/{versionId}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{versionId}', ERB::Util.url_encode(version_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_object_update
        )
      end

      def service_name_region_region_name_storage_name_object_key_version_version_id_restore_post(key:, name:, region_name:, service_name:, version_id:, cloud_storage_restore_object_in:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version_id is required' if version_id.nil?
        raise ArgumentError, 'cloud_storage_restore_object_in is required' if cloud_storage_restore_object_in.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/object/{key}/version/{versionId}/restore'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{versionId}', ERB::Util.url_encode(version_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_restore_object_in
        )
      end

      def service_name_region_region_name_storage_name_policy_user_id_post(name:, region_name:, service_name:, user_id:, cloud_storage_add_container_policy:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_storage_add_container_policy is required' if cloud_storage_add_container_policy.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/policy/{userId}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_add_container_policy
        )
      end

      def service_name_region_region_name_storage_name_presign_post(name:, region_name:, service_name:, cloud_storage_presigned_url_input:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_presigned_url_input is required' if cloud_storage_presigned_url_input.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}/presign'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_presigned_url_input
        )
      end

      def service_name_region_region_name_storage_name_put(name:, region_name:, service_name:, cloud_storage_container_update:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_container_update is required' if cloud_storage_container_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/storage/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_container_update
        )
      end

      def service_name_region_region_name_storage_post(region_name:, service_name:, cloud_storage_container_creation:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_storage_container_creation is required' if cloud_storage_container_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/storage'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_container_creation
        )
      end

      def service_name_region_region_name_volume_backup_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/volumeBackup'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_volume_backup_post(region_name:, service_name:, cloud_volume_backup_volume_backup_creation:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_volume_backup_volume_backup_creation is required' if cloud_volume_backup_volume_backup_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/volumeBackup'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_volume_backup_volume_backup_creation
        )
      end

      def service_name_region_region_name_volume_backup_volume_backup_id_delete(region_name:, service_name:, volume_backup_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_backup_id is required' if volume_backup_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/volumeBackup/{volumeBackupId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeBackupId}', ERB::Util.url_encode(volume_backup_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_volume_backup_volume_backup_id_get(region_name:, service_name:, volume_backup_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_backup_id is required' if volume_backup_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/volumeBackup/{volumeBackupId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeBackupId}', ERB::Util.url_encode(volume_backup_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_volume_backup_volume_backup_id_restore_post(region_name:, service_name:, volume_backup_id:, cloud_volume_backup_volume_backup_restore:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_backup_id is required' if volume_backup_id.nil?
        raise ArgumentError, 'cloud_volume_backup_volume_backup_restore is required' if cloud_volume_backup_volume_backup_restore.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/volumeBackup/{volumeBackupId}/restore'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeBackupId}', ERB::Util.url_encode(volume_backup_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_volume_backup_volume_backup_restore
        )
      end

      def service_name_region_region_name_volume_backup_volume_backup_id_volume_post(region_name:, service_name:, volume_backup_id:, cloud_volume_backup_volume_creation_from_backup:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_backup_id is required' if volume_backup_id.nil?
        raise ArgumentError, 'cloud_volume_backup_volume_creation_from_backup is required' if cloud_volume_backup_volume_creation_from_backup.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/volumeBackup/{volumeBackupId}/volume'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeBackupId}', ERB::Util.url_encode(volume_backup_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_volume_backup_volume_creation_from_backup
        )
      end

      def service_name_region_region_name_volume_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/volume'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_volume_post(region_name:, service_name:, cloud_region_volume_create:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_region_volume_create is required' if cloud_region_volume_create.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/volume'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_region_volume_create
        )
      end

      def service_name_region_region_name_volume_type_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/volumeType'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_volume_volume_id_bulk_delete_snapshots_post(region_name:, service_name:, volume_id:, cloud_region_volume_bulk_delete_snapshots:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?
        raise ArgumentError, 'cloud_region_volume_bulk_delete_snapshots is required' if cloud_region_volume_bulk_delete_snapshots.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/volume/{volumeId}/bulkDeleteSnapshots'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_region_volume_bulk_delete_snapshots
        )
      end

      def service_name_region_region_name_volume_volume_id_get(region_name:, service_name:, volume_id:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/volume/{volumeId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_volume_volume_id_put(region_name:, service_name:, volume_id:, cloud_region_volume_update:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?
        raise ArgumentError, 'cloud_region_volume_update is required' if cloud_region_volume_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/region/{regionName}/volume/{volumeId}'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_region_volume_update
        )
      end

      def service_name_region_region_name_workflow_backup_backup_workflow_id_delete(backup_workflow_id:, region_name:, service_name:)
        raise ArgumentError, 'backup_workflow_id is required' if backup_workflow_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/region/{regionName}/workflow/backup/{backupWorkflowId}'
            .gsub('{backupWorkflowId}', ERB::Util.url_encode(backup_workflow_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_workflow_backup_backup_workflow_id_get(backup_workflow_id:, region_name:, service_name:)
        raise ArgumentError, 'backup_workflow_id is required' if backup_workflow_id.nil?
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/workflow/backup/{backupWorkflowId}'
            .gsub('{backupWorkflowId}', ERB::Util.url_encode(backup_workflow_id.to_s))
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_workflow_backup_get(region_name:, service_name:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/region/{regionName}/workflow/backup'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_region_region_name_workflow_backup_post(region_name:, service_name:, cloud_project_region_workflow_backup_creation:)
        raise ArgumentError, 'region_name is required' if region_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_region_workflow_backup_creation is required' if cloud_project_region_workflow_backup_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/region/{regionName}/workflow/backup'
            .gsub('{regionName}', ERB::Util.url_encode(region_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_region_workflow_backup_creation
        )
      end

      def service_name_retain_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/retain'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/role'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/serviceInfos'
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
          '/cloud/project/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_snapshot_get(service_name:, flavor_type: nil, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/snapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'flavorType' => flavor_type, 'region' => region }
        )
      end

      def service_name_snapshot_image_id_delete(image_id:, service_name:)
        raise ArgumentError, 'image_id is required' if image_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/snapshot/{imageId}'
            .gsub('{imageId}', ERB::Util.url_encode(image_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_snapshot_image_id_get(image_id:, service_name:)
        raise ArgumentError, 'image_id is required' if image_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/snapshot/{imageId}'
            .gsub('{imageId}', ERB::Util.url_encode(image_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_sshkey_get(service_name:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/sshkey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_sshkey_key_id_delete(key_id:, service_name:)
        raise ArgumentError, 'key_id is required' if key_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/sshkey/{keyId}'
            .gsub('{keyId}', ERB::Util.url_encode(key_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_sshkey_key_id_get(key_id:, service_name:)
        raise ArgumentError, 'key_id is required' if key_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/sshkey/{keyId}'
            .gsub('{keyId}', ERB::Util.url_encode(key_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_sshkey_post(service_name:, cloud_project_sshkey_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_sshkey_creation is required' if cloud_project_sshkey_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/sshkey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_sshkey_creation
        )
      end

      def service_name_storage_access_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/storage/access'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_storage_container_id_cors_delete(container_id:, origin:, service_name:)
        raise ArgumentError, 'container_id is required' if container_id.nil?
        raise ArgumentError, 'origin is required' if origin.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/storage/{containerId}/cors'
            .gsub('{containerId}', ERB::Util.url_encode(container_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'origin' => origin }
        )
      end

      def service_name_storage_container_id_cors_post(container_id:, service_name:, cloud_project_storage_cors_creation:)
        raise ArgumentError, 'container_id is required' if container_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_storage_cors_creation is required' if cloud_project_storage_cors_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/storage/{containerId}/cors'
            .gsub('{containerId}', ERB::Util.url_encode(container_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_storage_cors_creation
        )
      end

      def service_name_storage_container_id_delete(container_id:, service_name:, recursive: nil)
        raise ArgumentError, 'container_id is required' if container_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/storage/{containerId}'
            .gsub('{containerId}', ERB::Util.url_encode(container_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'recursive' => recursive }
        )
      end

      def service_name_storage_container_id_get(container_id:, service_name:, no_objects: nil, prefix: nil)
        raise ArgumentError, 'container_id is required' if container_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/storage/{containerId}'
            .gsub('{containerId}', ERB::Util.url_encode(container_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'noObjects' => no_objects, 'prefix' => prefix }
        )
      end

      def service_name_storage_container_id_public_url_post(container_id:, service_name:, cloud_project_storage_public_url_creation:)
        raise ArgumentError, 'container_id is required' if container_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_storage_public_url_creation is required' if cloud_project_storage_public_url_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/storage/{containerId}/publicUrl'
            .gsub('{containerId}', ERB::Util.url_encode(container_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_storage_public_url_creation
        )
      end

      def service_name_storage_container_id_put(container_id:, service_name:, cloud_project_storage_update:)
        raise ArgumentError, 'container_id is required' if container_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_storage_update is required' if cloud_project_storage_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/storage/{containerId}'
            .gsub('{containerId}', ERB::Util.url_encode(container_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_storage_update
        )
      end

      def service_name_storage_container_id_static_post(container_id:, service_name:)
        raise ArgumentError, 'container_id is required' if container_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/storage/{containerId}/static'
            .gsub('{containerId}', ERB::Util.url_encode(container_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_storage_container_id_user_post(container_id:, service_name:, cloud_project_storage_user_creation:)
        raise ArgumentError, 'container_id is required' if container_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_storage_user_creation is required' if cloud_project_storage_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/storage/{containerId}/user'
            .gsub('{containerId}', ERB::Util.url_encode(container_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_storage_user_creation
        )
      end

      def service_name_storage_get(service_name:, include_type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/storage'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'includeType' => include_type }
        )
      end

      def service_name_storage_post(service_name:, cloud_project_storage_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_storage_creation is required' if cloud_project_storage_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/storage'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_storage_creation
        )
      end

      def service_name_storage_quota_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/storage/quota'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_unleash_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/unleash'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_usage_current_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/usage/current'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_usage_forecast_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/usage/forecast'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_usage_history_get(service_name:, from: nil, to: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/usage/history'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'from' => from, 'to' => to }
        )
      end

      def service_name_usage_history_usage_id_get(service_name:, usage_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'usage_id is required' if usage_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/usage/history/{usageId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{usageId}', ERB::Util.url_encode(usage_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_usage_plans_get(service_name:, flavor: nil, month: nil, year: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/usage/plans'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'flavor' => flavor, 'month' => month, 'year' => year }
        )
      end

      def service_name_user_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_post(service_name:, cloud_project_user_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_user_creation is required' if cloud_project_user_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_user_creation
        )
      end

      def service_name_user_user_id_configuration_get(service_name:, user_id:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}/configuration'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_user_user_id_delete(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/user/{userId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_get(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_openrc_get(region:, service_name:, user_id:, version: nil)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}/openrc'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region, 'version' => version }
        )
      end

      def service_name_user_user_id_policy_get(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}/policy'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_policy_post(service_name:, user_id:, cloud_storage_policy_raw:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_storage_policy_raw is required' if cloud_storage_policy_raw.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/user/{userId}/policy'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_storage_policy_raw
        )
      end

      def service_name_user_user_id_rclone_get(region:, service_name:, user_id:, service: nil)
        raise ArgumentError, 'region is required' if region.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}/rclone'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region, 'service' => service }
        )
      end

      def service_name_user_user_id_regenerate_password_post(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/user/{userId}/regeneratePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_role_get(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}/role'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_role_post(service_name:, user_id:, cloud_project_user_role_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_user_role_creation is required' if cloud_project_user_role_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/user/{userId}/role'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_user_role_creation
        )
      end

      def service_name_user_user_id_role_put(service_name:, user_id:, cloud_project_user_role_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_user_role_update is required' if cloud_project_user_role_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/user/{userId}/role'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_user_role_update
        )
      end

      def service_name_user_user_id_role_role_id_delete(role_id:, service_name:, user_id:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/user/{userId}/role/{roleId}'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_role_role_id_get(role_id:, service_name:, user_id:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}/role/{roleId}'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_s3_credentials_access_delete(access:, service_name:, user_id:)
        raise ArgumentError, 'access is required' if access.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/user/{userId}/s3Credentials/{access}'
            .gsub('{access}', ERB::Util.url_encode(access.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_s3_credentials_access_get(access:, service_name:, user_id:)
        raise ArgumentError, 'access is required' if access.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}/s3Credentials/{access}'
            .gsub('{access}', ERB::Util.url_encode(access.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_s3_credentials_access_secret_post(access:, service_name:, user_id:)
        raise ArgumentError, 'access is required' if access.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/user/{userId}/s3Credentials/{access}/secret'
            .gsub('{access}', ERB::Util.url_encode(access.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_s3_credentials_get(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/user/{userId}/s3Credentials'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_s3_credentials_post(service_name:, user_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/user/{userId}/s3Credentials'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_user_id_token_post(service_name:, user_id:, cloud_project_user_token_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'user_id is required' if user_id.nil?
        raise ArgumentError, 'cloud_project_user_token_creation is required' if cloud_project_user_token_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/user/{userId}/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{userId}', ERB::Util.url_encode(user_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_user_token_creation
        )
      end

      def service_name_volume_get(service_name:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/volume'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_volume_post(service_name:, cloud_project_volume_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_volume_creation is required' if cloud_project_volume_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/volume'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_volume_creation
        )
      end

      def service_name_volume_snapshot_get(service_name:, region: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/volume/snapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'region' => region }
        )
      end

      def service_name_volume_snapshot_snapshot_id_delete(service_name:, snapshot_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'snapshot_id is required' if snapshot_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/volume/snapshot/{snapshotId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{snapshotId}', ERB::Util.url_encode(snapshot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_volume_snapshot_snapshot_id_get(service_name:, snapshot_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'snapshot_id is required' if snapshot_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/volume/snapshot/{snapshotId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{snapshotId}', ERB::Util.url_encode(snapshot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_volume_volume_id_attach_post(service_name:, volume_id:, cloud_project_volume_attach_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?
        raise ArgumentError, 'cloud_project_volume_attach_creation is required' if cloud_project_volume_attach_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/volume/{volumeId}/attach'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_volume_attach_creation
        )
      end

      def service_name_volume_volume_id_delete(service_name:, volume_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?

        @connection.call(
          :DELETE,
          '/cloud/project/{serviceName}/volume/{volumeId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_volume_volume_id_detach_post(service_name:, volume_id:, cloud_project_volume_detach_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?
        raise ArgumentError, 'cloud_project_volume_detach_creation is required' if cloud_project_volume_detach_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/volume/{volumeId}/detach'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_volume_detach_creation
        )
      end

      def service_name_volume_volume_id_get(service_name:, volume_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/volume/{volumeId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_volume_volume_id_put(service_name:, volume_id:, cloud_project_volume_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?
        raise ArgumentError, 'cloud_project_volume_update is required' if cloud_project_volume_update.nil?

        @connection.call(
          :PUT,
          '/cloud/project/{serviceName}/volume/{volumeId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_volume_update
        )
      end

      def service_name_volume_volume_id_snapshot_post(service_name:, volume_id:, cloud_project_volume_snapshot_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?
        raise ArgumentError, 'cloud_project_volume_snapshot_creation is required' if cloud_project_volume_snapshot_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/volume/{volumeId}/snapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_volume_snapshot_creation
        )
      end

      def service_name_volume_volume_id_upsize_post(service_name:, volume_id:, cloud_project_volume_upsize_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'volume_id is required' if volume_id.nil?
        raise ArgumentError, 'cloud_project_volume_upsize_creation is required' if cloud_project_volume_upsize_creation.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/volume/{volumeId}/upsize'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{volumeId}', ERB::Util.url_encode(volume_id.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_volume_upsize_creation
        )
      end

      def service_name_vrack_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cloud/project/{serviceName}/vrack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_vrack_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cloud/project/{serviceName}/vrack'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
