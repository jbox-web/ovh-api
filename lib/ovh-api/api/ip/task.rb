# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Task
      def initialize(connection)
        @connection = connection
      end

      def get(ip:, task_id:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/task/{taskId}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:, function: nil, status: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/task'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status }
        )
      end
    end
  end
end
