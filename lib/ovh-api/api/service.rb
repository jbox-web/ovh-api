# frozen_string_literal: true

module Ovh::Api
  module Api
    class Service
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/service',
          type: nil,
          auth: []
        )
      end

      def service_id_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/service/{serviceId}'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_put(service_id:, service_list_service:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'service_list_service is required' if service_list_service.nil?

        @connection.call(
          :PUT,
          '/service/{serviceId}'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: service_list_service
        )
      end

      def service_id_renew_get(service_id:, include_options: nil)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/service/{serviceId}/renew'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          query: { 'includeOptions' => include_options }
        )
      end

      def service_id_renew_post(service_id:, service_service_id_renew_post_request:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'service_service_id_renew_post_request is required' if service_service_id_renew_post_request.nil?

        @connection.call(
          :POST,
          '/service/{serviceId}/renew'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: service_service_id_renew_post_request
        )
      end

      def service_id_reopen_post(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :POST,
          '/service/{serviceId}/reopen'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_suspend_post(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :POST,
          '/service/{serviceId}/suspend'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_terminate_post(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :POST,
          '/service/{serviceId}/terminate'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
