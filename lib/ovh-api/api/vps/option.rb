# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vps::Option
      def initialize(connection)
        @connection = connection
      end

      def delete(option:, service_name:, delete_now: nil)
        raise ArgumentError, 'option is required' if option.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vps/{serviceName}/option/{option}'
            .gsub('{option}', ERB::Util.url_encode(option.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'deleteNow' => delete_now }
        )
      end

      def get(option:, service_name:)
        raise ArgumentError, 'option is required' if option.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/option/{option}'
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
          '/vps/{serviceName}/option'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
