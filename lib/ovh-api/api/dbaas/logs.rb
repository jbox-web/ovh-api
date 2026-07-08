# frozen_string_literal: true

module Ovh::Api
  module Api
    class Dbaas::Logs
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/dbaas/logs',
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
          '/dbaas/logs/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def service_name_cluster_cluster_id_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/cluster/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cluster_cluster_id_put(cluster_id:, service_name:, dbaas_logs_cluster_update:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_cluster_update is required' if dbaas_logs_cluster_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/cluster/{clusterId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_cluster_update
        )
      end

      def service_name_cluster_cluster_id_retention_get(cluster_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/cluster/{clusterId}/retention'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cluster_cluster_id_retention_retention_id_get(cluster_id:, retention_id:, service_name:)
        raise ArgumentError, 'cluster_id is required' if cluster_id.nil?
        raise ArgumentError, 'retention_id is required' if retention_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/cluster/{clusterId}/retention/{retentionId}'
            .gsub('{clusterId}', ERB::Util.url_encode(cluster_id.to_s))
            .gsub('{retentionId}', ERB::Util.url_encode(retention_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cluster_get(service_name:, name_pattern: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/cluster'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'namePattern' => name_pattern }
        )
      end

      def service_name_encryption_key_encryption_key_id_delete(encryption_key_id:, service_name:)
        raise ArgumentError, 'encryption_key_id is required' if encryption_key_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/encryptionKey/{encryptionKeyId}'
            .gsub('{encryptionKeyId}', ERB::Util.url_encode(encryption_key_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_encryption_key_encryption_key_id_get(encryption_key_id:, service_name:)
        raise ArgumentError, 'encryption_key_id is required' if encryption_key_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/encryptionKey/{encryptionKeyId}'
            .gsub('{encryptionKeyId}', ERB::Util.url_encode(encryption_key_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_encryption_key_get(service_name:, title_pattern: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/encryptionKey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'titlePattern' => title_pattern }
        )
      end

      def service_name_encryption_key_post(service_name:, dbaas_logs_encryption_key:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_encryption_key is required' if dbaas_logs_encryption_key.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/encryptionKey'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_encryption_key
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_engine_engine_id_get(engine_id:, service_name:)
        raise ArgumentError, 'engine_id is required' if engine_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/engine/{engineId}'
            .gsub('{engineId}', ERB::Util.url_encode(engine_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_engine_engine_id_helper_get(engine_id:, service_name:)
        raise ArgumentError, 'engine_id is required' if engine_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/engine/{engineId}/helper'
            .gsub('{engineId}', ERB::Util.url_encode(engine_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_engine_engine_id_helper_helper_id_get(engine_id:, helper_id:, service_name:)
        raise ArgumentError, 'engine_id is required' if engine_id.nil?
        raise ArgumentError, 'helper_id is required' if helper_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/engine/{engineId}/helper/{helperId}'
            .gsub('{engineId}', ERB::Util.url_encode(engine_id.to_s))
            .gsub('{helperId}', ERB::Util.url_encode(helper_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_engine_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/engine'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_get(service_name:, title_pattern: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'titlePattern' => title_pattern }
        )
      end

      def service_name_input_input_id_action_get(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/{inputId}/action'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_configtest_post(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/input/{inputId}/configtest'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_configtest_result_get(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/{inputId}/configtest/result'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_configuration_flowgger_get(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/{inputId}/configuration/flowgger'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_configuration_flowgger_put(input_id:, service_name:, dbaas_logs_input_configuration_flowgger_update:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_input_configuration_flowgger_update is required' if dbaas_logs_input_configuration_flowgger_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/input/{inputId}/configuration/flowgger'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_input_configuration_flowgger_update
        )
      end

      def service_name_input_input_id_configuration_logstash_get(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/{inputId}/configuration/logstash'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_configuration_logstash_put(input_id:, service_name:, dbaas_logs_input_configuration_logstash_update:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_input_configuration_logstash_update is required' if dbaas_logs_input_configuration_logstash_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/input/{inputId}/configuration/logstash'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_input_configuration_logstash_update
        )
      end

      def service_name_input_input_id_delete(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/input/{inputId}'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_end_post(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/input/{inputId}/end'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_get(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/{inputId}'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_logs_url_post(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/input/{inputId}/logs/url'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_put(input_id:, service_name:, dbaas_logs_input_update:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_input_update is required' if dbaas_logs_input_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/input/{inputId}'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_input_update
        )
      end

      def service_name_input_input_id_restart_post(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/input/{inputId}/restart'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_start_post(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/input/{inputId}/start'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_input_id_url_get(input_id:, service_name:)
        raise ArgumentError, 'input_id is required' if input_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/input/{inputId}/url'
            .gsub('{inputId}', ERB::Util.url_encode(input_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_input_post(service_name:, dbaas_logs_input_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_input_creation is required' if dbaas_logs_input_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/input'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_input_creation
        )
      end

      def service_name_metrics_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/metrics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_operation_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/operation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_operation_operation_id_get(operation_id:, service_name:)
        raise ArgumentError, 'operation_id is required' if operation_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/operation/{operationId}'
            .gsub('{operationId}', ERB::Util.url_encode(operation_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_dashboard_dashboard_id_delete(dashboard_id:, service_name:)
        raise ArgumentError, 'dashboard_id is required' if dashboard_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/graylog/dashboard/{dashboardId}'
            .gsub('{dashboardId}', ERB::Util.url_encode(dashboard_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_dashboard_dashboard_id_duplicate_post(dashboard_id:, service_name:, dbaas_logs_output_graylog_dashboard_duplicate_creation:)
        raise ArgumentError, 'dashboard_id is required' if dashboard_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_graylog_dashboard_duplicate_creation is required' if dbaas_logs_output_graylog_dashboard_duplicate_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/graylog/dashboard/{dashboardId}/duplicate'
            .gsub('{dashboardId}', ERB::Util.url_encode(dashboard_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_graylog_dashboard_duplicate_creation
        )
      end

      def service_name_output_graylog_dashboard_dashboard_id_get(dashboard_id:, service_name:)
        raise ArgumentError, 'dashboard_id is required' if dashboard_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/dashboard/{dashboardId}'
            .gsub('{dashboardId}', ERB::Util.url_encode(dashboard_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_dashboard_dashboard_id_put(dashboard_id:, service_name:, dbaas_logs_output_graylog_dashboard_update:)
        raise ArgumentError, 'dashboard_id is required' if dashboard_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_graylog_dashboard_update is required' if dbaas_logs_output_graylog_dashboard_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/output/graylog/dashboard/{dashboardId}'
            .gsub('{dashboardId}', ERB::Util.url_encode(dashboard_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_graylog_dashboard_update
        )
      end

      def service_name_output_graylog_dashboard_dashboard_id_url_get(dashboard_id:, service_name:)
        raise ArgumentError, 'dashboard_id is required' if dashboard_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/dashboard/{dashboardId}/url'
            .gsub('{dashboardId}', ERB::Util.url_encode(dashboard_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_dashboard_get(service_name:, iam_tags: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/dashboard'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_output_graylog_dashboard_post(service_name:, dbaas_logs_output_graylog_dashboard_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_graylog_dashboard_creation is required' if dbaas_logs_output_graylog_dashboard_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/graylog/dashboard'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_graylog_dashboard_creation
        )
      end

      def service_name_output_graylog_stream_get(service_name:, iam_tags: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_output_graylog_stream_post(service_name:, dbaas_logs_output_graylog_stream_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_graylog_stream_creation is required' if dbaas_logs_output_graylog_stream_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/graylog/stream'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_graylog_stream_creation
        )
      end

      def service_name_output_graylog_stream_stream_id_alert_alert_id_delete(alert_id:, service_name:, stream_id:)
        raise ArgumentError, 'alert_id is required' if alert_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/alert/{alertId}'
            .gsub('{alertId}', ERB::Util.url_encode(alert_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_alert_alert_id_get(alert_id:, service_name:, stream_id:)
        raise ArgumentError, 'alert_id is required' if alert_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/alert/{alertId}'
            .gsub('{alertId}', ERB::Util.url_encode(alert_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_alert_alert_id_put(alert_id:, service_name:, stream_id:, dbaas_logs_output_graylog_stream_alert_update:)
        raise ArgumentError, 'alert_id is required' if alert_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?
        raise ArgumentError, 'dbaas_logs_output_graylog_stream_alert_update is required' if dbaas_logs_output_graylog_stream_alert_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/alert/{alertId}'
            .gsub('{alertId}', ERB::Util.url_encode(alert_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_graylog_stream_alert_update
        )
      end

      def service_name_output_graylog_stream_stream_id_alert_get(service_name:, stream_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/alert'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_alert_post(service_name:, stream_id:, dbaas_logs_output_graylog_stream_alert_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?
        raise ArgumentError, 'dbaas_logs_output_graylog_stream_alert_creation is required' if dbaas_logs_output_graylog_stream_alert_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/alert'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_graylog_stream_alert_creation
        )
      end

      def service_name_output_graylog_stream_stream_id_archive_archive_id_encryption_key_get(archive_id:, service_name:, stream_id:)
        raise ArgumentError, 'archive_id is required' if archive_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/archive/{archiveId}/encryptionKey'
            .gsub('{archiveId}', ERB::Util.url_encode(archive_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_archive_archive_id_get(archive_id:, service_name:, stream_id:)
        raise ArgumentError, 'archive_id is required' if archive_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/archive/{archiveId}'
            .gsub('{archiveId}', ERB::Util.url_encode(archive_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_archive_archive_id_url_post(archive_id:, service_name:, stream_id:)
        raise ArgumentError, 'archive_id is required' if archive_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/archive/{archiveId}/url'
            .gsub('{archiveId}', ERB::Util.url_encode(archive_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_archive_get(service_name:, stream_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/archive'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_delete(service_name:, stream_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_get(service_name:, stream_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_put(service_name:, stream_id:, dbaas_logs_output_graylog_stream_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?
        raise ArgumentError, 'dbaas_logs_output_graylog_stream_update is required' if dbaas_logs_output_graylog_stream_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_graylog_stream_update
        )
      end

      def service_name_output_graylog_stream_stream_id_rule_get(service_name:, stream_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/rule'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_rule_post(service_name:, stream_id:, dbaas_logs_output_graylog_stream_rule_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?
        raise ArgumentError, 'dbaas_logs_output_graylog_stream_rule_creation is required' if dbaas_logs_output_graylog_stream_rule_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/rule'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_graylog_stream_rule_creation
        )
      end

      def service_name_output_graylog_stream_stream_id_rule_rule_id_delete(rule_id:, service_name:, stream_id:)
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/rule/{ruleId}'
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_rule_rule_id_get(rule_id:, service_name:, stream_id:)
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/rule/{ruleId}'
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_subscription_get(service_name:, stream_id:, resource_name: nil, resource_type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: [],
          query: { 'resourceName' => resource_name, 'resourceType' => resource_type }
        )
      end

      def service_name_output_graylog_stream_stream_id_subscription_subscription_id_delete(service_name:, stream_id:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_subscription_subscription_id_get(service_name:, stream_id:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_graylog_stream_stream_id_url_get(service_name:, stream_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/graylog/stream/{streamId}/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_alias_alias_id_delete(alias_id:, service_name:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_alias_alias_id_get(alias_id:, service_name:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_alias_alias_id_index_get(alias_id:, service_name:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}/index'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_alias_alias_id_index_index_id_delete(alias_id:, index_id:, service_name:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'index_id is required' if index_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}/index/{indexId}'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{indexId}', ERB::Util.url_encode(index_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_alias_alias_id_index_post(alias_id:, service_name:, dbaas_logs_output_open_search_alias_index_creation:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_open_search_alias_index_creation is required' if dbaas_logs_output_open_search_alias_index_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}/index'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_open_search_alias_index_creation
        )
      end

      def service_name_output_opensearch_alias_alias_id_put(alias_id:, service_name:, dbaas_logs_output_open_search_alias_update:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_open_search_alias_update is required' if dbaas_logs_output_open_search_alias_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_open_search_alias_update
        )
      end

      def service_name_output_opensearch_alias_alias_id_stream_get(alias_id:, service_name:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}/stream'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_alias_alias_id_stream_post(alias_id:, service_name:, dbaas_logs_output_open_search_alias_stream_creation:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_open_search_alias_stream_creation is required' if dbaas_logs_output_open_search_alias_stream_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}/stream'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_open_search_alias_stream_creation
        )
      end

      def service_name_output_opensearch_alias_alias_id_stream_stream_id_delete(alias_id:, service_name:, stream_id:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'stream_id is required' if stream_id.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}/stream/{streamId}'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{streamId}', ERB::Util.url_encode(stream_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_alias_alias_id_url_get(alias_id:, service_name:)
        raise ArgumentError, 'alias_id is required' if alias_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/alias/{aliasId}/url'
            .gsub('{aliasId}', ERB::Util.url_encode(alias_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_alias_get(service_name:, iam_tags: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/alias'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_output_opensearch_alias_post(service_name:, dbaas_logs_output_open_search_alias_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_open_search_alias_creation is required' if dbaas_logs_output_open_search_alias_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/opensearch/alias'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_open_search_alias_creation
        )
      end

      def service_name_output_opensearch_index_get(service_name:, iam_tags: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/index'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_output_opensearch_index_index_id_delete(index_id:, service_name:)
        raise ArgumentError, 'index_id is required' if index_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/opensearch/index/{indexId}'
            .gsub('{indexId}', ERB::Util.url_encode(index_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_index_index_id_get(index_id:, service_name:)
        raise ArgumentError, 'index_id is required' if index_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/index/{indexId}'
            .gsub('{indexId}', ERB::Util.url_encode(index_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_index_index_id_put(index_id:, service_name:, dbaas_logs_output_open_search_index_update:)
        raise ArgumentError, 'index_id is required' if index_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_open_search_index_update is required' if dbaas_logs_output_open_search_index_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/output/opensearch/index/{indexId}'
            .gsub('{indexId}', ERB::Util.url_encode(index_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_open_search_index_update
        )
      end

      def service_name_output_opensearch_index_index_id_url_get(index_id:, service_name:)
        raise ArgumentError, 'index_id is required' if index_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/index/{indexId}/url'
            .gsub('{indexId}', ERB::Util.url_encode(index_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_index_post(service_name:, dbaas_logs_output_open_search_index_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_output_open_search_index_creation is required' if dbaas_logs_output_open_search_index_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/opensearch/index'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_output_open_search_index_creation
        )
      end

      def service_name_output_opensearch_osd_get(service_name:, iam_tags: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/osd'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_output_opensearch_osd_osd_id_delete(osd_id:, service_name:)
        raise ArgumentError, 'osd_id is required' if osd_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/output/opensearch/osd/{osdId}'
            .gsub('{osdId}', ERB::Util.url_encode(osd_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_osd_osd_id_get(osd_id:, service_name:)
        raise ArgumentError, 'osd_id is required' if osd_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/osd/{osdId}'
            .gsub('{osdId}', ERB::Util.url_encode(osd_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_osd_osd_id_put(osd_id:, service_name:, dbaas_logs_osd_update:)
        raise ArgumentError, 'osd_id is required' if osd_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_osd_update is required' if dbaas_logs_osd_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/output/opensearch/osd/{osdId}'
            .gsub('{osdId}', ERB::Util.url_encode(osd_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_osd_update
        )
      end

      def service_name_output_opensearch_osd_osd_id_url_get(osd_id:, service_name:)
        raise ArgumentError, 'osd_id is required' if osd_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/output/opensearch/osd/{osdId}/url'
            .gsub('{osdId}', ERB::Util.url_encode(osd_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_output_opensearch_osd_post(service_name:, dbaas_logs_osd_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_osd_creation is required' if dbaas_logs_osd_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/output/opensearch/osd'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_osd_creation
        )
      end

      def service_name_put(service_name:, dbaas_logs_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_update is required' if dbaas_logs_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_update
        )
      end

      def service_name_role_get(service_name:, name_pattern: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/role'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'namePattern' => name_pattern }
        )
      end

      def service_name_role_post(service_name:, dbaas_logs_role_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_role_creation is required' if dbaas_logs_role_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/role'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_creation
        )
      end

      def service_name_role_role_id_delete(role_id:, service_name:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/role/{roleId}'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_role_id_get(role_id:, service_name:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/role/{roleId}'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_role_id_member_get(role_id:, service_name:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/role/{roleId}/member'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_role_id_member_post(role_id:, service_name:, dbaas_logs_role_member_creation:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_role_member_creation is required' if dbaas_logs_role_member_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/role/{roleId}/member'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_member_creation
        )
      end

      def service_name_role_role_id_member_username_delete(role_id:, service_name:, username:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/role/{roleId}/member/{username}'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_role_id_member_username_get(role_id:, service_name:, username:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/role/{roleId}/member/{username}'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_role_id_member_username_put(role_id:, service_name:, username:, dbaas_logs_role_member_update:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'username is required' if username.nil?
        raise ArgumentError, 'dbaas_logs_role_member_update is required' if dbaas_logs_role_member_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/role/{roleId}/member/{username}'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{username}', ERB::Util.url_encode(username.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_member_update
        )
      end

      def service_name_role_role_id_permission_alias_post(role_id:, service_name:, dbaas_logs_role_permission_alias_creation:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_role_permission_alias_creation is required' if dbaas_logs_role_permission_alias_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/role/{roleId}/permission/alias'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_permission_alias_creation
        )
      end

      def service_name_role_role_id_permission_dashboard_post(role_id:, service_name:, dbaas_logs_role_permission_dashboard_creation:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_role_permission_dashboard_creation is required' if dbaas_logs_role_permission_dashboard_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/role/{roleId}/permission/dashboard'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_permission_dashboard_creation
        )
      end

      def service_name_role_role_id_permission_get(role_id:, service_name:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/role/{roleId}/permission'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_role_id_permission_index_post(role_id:, service_name:, dbaas_logs_role_permission_index_creation:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_role_permission_index_creation is required' if dbaas_logs_role_permission_index_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/role/{roleId}/permission/index'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_permission_index_creation
        )
      end

      def service_name_role_role_id_permission_osd_post(role_id:, service_name:, dbaas_logs_role_permission_osd_creation:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_role_permission_osd_creation is required' if dbaas_logs_role_permission_osd_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/role/{roleId}/permission/osd'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_permission_osd_creation
        )
      end

      def service_name_role_role_id_permission_permission_id_delete(permission_id:, role_id:, service_name:)
        raise ArgumentError, 'permission_id is required' if permission_id.nil?
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/role/{roleId}/permission/{permissionId}'
            .gsub('{permissionId}', ERB::Util.url_encode(permission_id.to_s))
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_role_id_permission_permission_id_get(permission_id:, role_id:, service_name:)
        raise ArgumentError, 'permission_id is required' if permission_id.nil?
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/role/{roleId}/permission/{permissionId}'
            .gsub('{permissionId}', ERB::Util.url_encode(permission_id.to_s))
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_role_role_id_permission_stream_post(role_id:, service_name:, dbaas_logs_role_permission_stream_creation:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_role_permission_stream_creation is required' if dbaas_logs_role_permission_stream_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/role/{roleId}/permission/stream'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_permission_stream_creation
        )
      end

      def service_name_role_role_id_put(role_id:, service_name:, dbaas_logs_role_update:)
        raise ArgumentError, 'role_id is required' if role_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_role_update is required' if dbaas_logs_role_update.nil?

        @connection.call(
          :PUT,
          '/dbaas/logs/{serviceName}/role/{roleId}'
            .gsub('{roleId}', ERB::Util.url_encode(role_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_role_update
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/serviceInfos'
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
          '/dbaas/logs/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_token_get(service_name:, name_pattern: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'namePattern' => name_pattern }
        )
      end

      def service_name_token_post(service_name:, dbaas_logs_token_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_token_creation is required' if dbaas_logs_token_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_token_creation
        )
      end

      def service_name_token_token_id_delete(service_name:, token_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'token_id is required' if token_id.nil?

        @connection.call(
          :DELETE,
          '/dbaas/logs/{serviceName}/token/{tokenId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{tokenId}', ERB::Util.url_encode(token_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_token_token_id_get(service_name:, token_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'token_id is required' if token_id.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/token/{tokenId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{tokenId}', ERB::Util.url_encode(token_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_url_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dbaas/logs/{serviceName}/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_change_password_post(service_name:, dbaas_logs_user_change_password_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_user_change_password_creation is required' if dbaas_logs_user_change_password_creation.nil?

        @connection.call(
          :POST,
          '/dbaas/logs/{serviceName}/user/changePassword'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_user_change_password_creation
        )
      end
    end
  end
end
