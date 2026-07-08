# frozen_string_literal: true

module Ovh::Api
  module Api
    class Nutanix::Nodes
      def initialize(connection)
        @connection = connection
      end

      def deploy(server:, service_name:, nutanix_deploy:)
        raise ArgumentError, 'server is required' if server.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'nutanix_deploy is required' if nutanix_deploy.nil?

        @connection.call(
          :PUT,
          '/nutanix/{serviceName}/nodes/{server}/deploy'
            .gsub('{server}', ERB::Util.url_encode(server.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: nutanix_deploy
        )
      end

      def get(server:, service_name:)
        raise ArgumentError, 'server is required' if server.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/nutanix/{serviceName}/nodes/{server}'
            .gsub('{server}', ERB::Util.url_encode(server.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/nutanix/{serviceName}/nodes'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def terminate(server:, service_name:)
        raise ArgumentError, 'server is required' if server.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/nutanix/{serviceName}/nodes/{server}/terminate'
            .gsub('{server}', ERB::Util.url_encode(server.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(server:, service_name:, nutanix_reinstall:)
        raise ArgumentError, 'server is required' if server.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'nutanix_reinstall is required' if nutanix_reinstall.nil?

        @connection.call(
          :PUT,
          '/nutanix/{serviceName}/nodes/{server}'
            .gsub('{server}', ERB::Util.url_encode(server.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: nutanix_reinstall
        )
      end
    end
  end
end
