# frozen_string_literal: true

module Ovh::Api
  module Api
    class IpLoadbalancing::Task
      def initialize(connection)
        @connection = connection
      end

      def get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/task/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, action: nil, creation_date_from: nil, creation_date_to: nil, done_date_from: nil, done_date_to: nil, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'action' => action, 'creationDate.from' => creation_date_from, 'creationDate.to' => creation_date_to, 'doneDate.from' => done_date_from, 'doneDate.to' => done_date_to, 'status' => status }
        )
      end
    end
  end
end
