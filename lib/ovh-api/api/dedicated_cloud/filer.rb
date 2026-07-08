# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::Filer
      def initialize(connection)
        @connection = connection
      end

      def check_global_compatible(filer_id:, service_name:)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/checkGlobalCompatible'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def convert_to_global(filer_id:, service_name:)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/convertToGlobal'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(filer_id:, service_name:)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/filer/{filerId}'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hourly_consumption(filer_id:, service_name:)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/hourlyConsumption'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/filer'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def location(filer_id:, service_name:, node: nil)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/location'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'node' => node }
        )
      end

      def remove(filer_id:, service_name:)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/remove'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def task(filer_id:, service_name:, name: nil, state: nil)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/task'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'state' => state }
        )
      end

      def task_change_maintenance_execution_date(filer_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/task/{taskId}/changeMaintenanceExecutionDate'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def task_get(filer_id:, service_name:, task_id:)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/task/{taskId}'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def task_reset_task_state(filer_id:, service_name:, task_id:, body:)
        raise ArgumentError, 'filer_id is required' if filer_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/dedicatedCloud/{serviceName}/filer/{filerId}/task/{taskId}/resetTaskState'
            .gsub('{filerId}', ERB::Util.url_encode(filer_id.to_s))
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
