# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::Ip
      def initialize(connection)
        @connection = connection
      end

      def details(network:, service_name:)
        raise ArgumentError, 'network is required' if network.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/ip/{network}/details'
            .gsub('{network}', ERB::Util.url_encode(network.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(network:, service_name:)
        raise ArgumentError, 'network is required' if network.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/ip/{network}'
            .gsub('{network}', ERB::Util.url_encode(network.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/ip'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def task(network:, service_name:, name: nil, state: nil)
        raise ArgumentError, 'network is required' if network.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/ip/{network}/task'
            .gsub('{network}', ERB::Util.url_encode(network.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'state' => state }
        )
      end

      def task_change_maintenance_execution_date(network:, service_name:, task_id:, body:)
        raise ArgumentError, 'network is required' if network.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/ip/{network}/task/{taskId}/changeMaintenanceExecutionDate'
            .gsub('{network}', ERB::Util.url_encode(network.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def task_get(network:, service_name:, task_id:)
        raise ArgumentError, 'network is required' if network.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/ip/{network}/task/{taskId}'
            .gsub('{network}', ERB::Util.url_encode(network.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def task_reset_task_state(network:, service_name:, task_id:, body:)
        raise ArgumentError, 'network is required' if network.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/ip/{network}/task/{taskId}/resetTaskState'
            .gsub('{network}', ERB::Util.url_encode(network.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
