# frozen_string_literal: true

module Ovh::Api
  module Api
    class Vps::SecondaryDnsDomains
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, vps_secondary_dns_domains_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vps_secondary_dns_domains_post is required' if vps_secondary_dns_domains_post.nil?

        @connection.call(
          :POST,
          '/vps/{serviceName}/secondaryDnsDomains'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: vps_secondary_dns_domains_post
        )
      end

      def delete(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/vps/{serviceName}/secondaryDnsDomains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def dns_server(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/secondaryDnsDomains/{domain}/dnsServer'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/secondaryDnsDomains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/vps/{serviceName}/secondaryDnsDomains'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(domain:, service_name:, secondary_dns_secondary_dns:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'secondary_dns_secondary_dns is required' if secondary_dns_secondary_dns.nil?

        @connection.call(
          :PUT,
          '/vps/{serviceName}/secondaryDnsDomains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: secondary_dns_secondary_dns
        )
      end
    end
  end
end
