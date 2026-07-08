# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::DedicatedCloudDatacenter
      def initialize(connection)
        @connection = connection
      end

      def allowed_vrack(datacenter:, service_name:)
        raise ArgumentError, 'datacenter is required' if datacenter.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedCloudDatacenter/{datacenter}/allowedVrack'
            .gsub('{datacenter}', ERB::Util.url_encode(datacenter.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(datacenter:, service_name:)
        raise ArgumentError, 'datacenter is required' if datacenter.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedCloudDatacenter/{datacenter}'
            .gsub('{datacenter}', ERB::Util.url_encode(datacenter.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/dedicatedCloudDatacenter'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def move(datacenter:, service_name:, body:)
        raise ArgumentError, 'datacenter is required' if datacenter.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/dedicatedCloudDatacenter/{datacenter}/move'
            .gsub('{datacenter}', ERB::Util.url_encode(datacenter.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
