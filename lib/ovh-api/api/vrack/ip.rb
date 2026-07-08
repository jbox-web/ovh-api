# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vrack::Ip
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, vrack_service_name_ip_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vrack_service_name_ip_post_request is required' if vrack_service_name_ip_post_request.nil?

        @connection.call(
          :POST,
          '/vrack/{serviceName}/ip'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vrack_service_name_ip_post_request
        )
      end

      def delete(ip:, service_name:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vrack/{serviceName}/ip/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(ip:, service_name:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ip/{ip}'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vrack/{serviceName}/ip'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
