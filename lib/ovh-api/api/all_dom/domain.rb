# frozen_string_literal: true

module Ovh::Api
  module Api
    class AllDom::Domain
      def initialize(connection)
        @connection = connection
      end

      def get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/allDom/{serviceName}/domain/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, domain: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/allDom/{serviceName}/domain'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end
    end
  end
end
