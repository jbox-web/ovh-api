# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::CloudProject
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/cloudProject'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(project:, service_name:)
        raise ArgumentError, 'project is required' if project.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/cloudProject/{project}'
            .gsub('{project}', ERB::Util.url_encode(project.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(project:, service_name:)
        raise ArgumentError, 'project is required' if project.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/cloudProject/{project}'
            .gsub('{project}', ERB::Util.url_encode(project.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/cloudProject'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
