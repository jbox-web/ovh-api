# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Jobs
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, sms_service_name_jobs_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_jobs_post_request is required' if sms_service_name_jobs_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/jobs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_jobs_post_request
        )
      end

      def delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/jobs/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/jobs/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/jobs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
