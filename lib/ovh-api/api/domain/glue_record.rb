# frozen_string_literal: true

module Ovh::Api
  module Api
    class Domain::GlueRecord
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, domain_glue_record_create_payload:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_glue_record_create_payload is required' if domain_glue_record_create_payload.nil?

        @connection.call(
          :POST,
          '/domain/{serviceName}/glueRecord'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_glue_record_create_payload
        )
      end

      def delete(host:, service_name:)
        raise ArgumentError, 'host is required' if host.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/domain/{serviceName}/glueRecord/{host}'
            .gsub('{host}', ERB::Util.url_encode(host.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(host:, service_name:)
        raise ArgumentError, 'host is required' if host.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/glueRecord/{host}'
            .gsub('{host}', ERB::Util.url_encode(host.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, host: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/domain/{serviceName}/glueRecord'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'host' => host }
        )
      end

      def update(host:, service_name:, domain_glue_record_glue_record:)
        raise ArgumentError, 'host is required' if host.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_glue_record_glue_record is required' if domain_glue_record_glue_record.nil?

        @connection.call(
          :POST,
          '/domain/{serviceName}/glueRecord/{host}/update'
            .gsub('{host}', ERB::Util.url_encode(host.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: domain_glue_record_glue_record
        )
      end
    end
  end
end
