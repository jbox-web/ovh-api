# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::Sap
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, dedicated_cloud_sap_params:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_sap_params is required' if dedicated_cloud_sap_params.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/sap'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_sap_params
        )
      end

      def delete(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :DELETE,
          '/dedicatedCloud/{serviceName}/sap/{taskId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/sap/{taskId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, iam_tags: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/sap'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end
    end
  end
end
