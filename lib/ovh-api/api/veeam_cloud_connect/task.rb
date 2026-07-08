# frozen_string_literal: true

module Ovh::Api
  module Api
    class VeeamCloudConnect::Task
      def initialize(connection)
        @connection = connection
      end

      def get(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/veeamCloudConnect/{serviceName}/task/{taskId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, name: nil, state: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/veeamCloudConnect/{serviceName}/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'state' => state }
        )
      end
    end
  end
end
