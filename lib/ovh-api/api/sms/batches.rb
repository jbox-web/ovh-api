# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Batches
      def initialize(connection)
        @connection = connection
      end

      def cancel(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/batches/{id}/cancel'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def create(service_name:, sms_batch_params:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_batch_params is required' if sms_batch_params.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/batches'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_batch_params
        )
      end

      def delete(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/batches/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/batches/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/batches'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def statistics(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/batches/{id}/statistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(service_name:, id:, sms_batch_update_params:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'sms_batch_update_params is required' if sms_batch_update_params.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/batches/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: sms_batch_update_params
        )
      end
    end
  end
end
