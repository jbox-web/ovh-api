# frozen_string_literal: true

module Ovh::Api
  module Api
    class Domain::Option
      def initialize(connection)
        @connection = connection
      end

      def delete(option:, service_name:)
        raise ArgumentError, 'option is required' if option.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/domain/{serviceName}/option/{option}'
            .gsub('{option}', ERB::Util.url_encode(option.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(option:, service_name:)
        raise ArgumentError, 'option is required' if option.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/option/{option}'
            .gsub('{option}', ERB::Util.url_encode(option.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/option'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
