# frozen_string_literal: true

module Ovh::Api
  module Api
    class MsServices::Exchange
      def initialize(connection)
        @connection = connection
      end

      def billing_migrated(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/exchange/billingMigrated'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def bulk_update(service_name:, ms_services_exchange_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ms_services_exchange_service is required' if ms_services_exchange_service.nil?

        @connection.call(
          :PUT,
          '/msServices/{serviceName}/exchange'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ms_services_exchange_service
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/exchange'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def task(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/exchange/task'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def task_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/msServices/{serviceName}/exchange/task/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
