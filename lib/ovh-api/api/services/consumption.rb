# frozen_string_literal: true

module Ovh::Api
  module Api
    class Services::Consumption
      def initialize(connection)
        @connection = connection
      end

      def element(service_id:, plan_family: nil, unique_id: nil)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/consumption/element'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planFamily' => plan_family, 'uniqueId' => unique_id }
        )
      end

      def forecast(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/consumption/forecast'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def forecast_element(service_id:, plan_family: nil, unique_id: nil)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/consumption/forecast/element'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planFamily' => plan_family, 'uniqueId' => unique_id }
        )
      end

      def history(service_id:, plan_family: nil, unique_id: nil)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/consumption/history'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planFamily' => plan_family, 'uniqueId' => unique_id }
        )
      end

      def history_element(id:, service_id:, plan_family: nil, unique_id: nil)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/consumption/history/{id}/element'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planFamily' => plan_family, 'uniqueId' => unique_id }
        )
      end

      def history_get(id:, service_id:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/consumption/history/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/consumption'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
