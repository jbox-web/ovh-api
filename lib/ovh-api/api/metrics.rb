# frozen_string_literal: true

module Ovh::Api
  module Api
    class Metrics
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/metrics',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_change_contact_post(service_name:, services_change_contact:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_change_contact is required' if services_change_contact.nil?

        @connection.call(
          :POST,
          '/metrics/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def service_name_confirm_termination_post(service_name:, services_confirm_termination:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_confirm_termination is required' if services_confirm_termination.nil?

        @connection.call(
          :POST,
          '/metrics/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_confirm_termination
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/metrics/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_lookup_token_post(service_name:, metrics_lookup_token_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'metrics_lookup_token_creation is required' if metrics_lookup_token_creation.nil?

        @connection.call(
          :POST,
          '/metrics/{serviceName}/lookup/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: metrics_lookup_token_creation
        )
      end

      def service_name_put(service_name:, metrics_update:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'metrics_update is required' if metrics_update.nil?

        @connection.call(
          :PUT,
          '/metrics/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: metrics_update
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/metrics/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_put(service_name:, services_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/metrics/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/metrics/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
