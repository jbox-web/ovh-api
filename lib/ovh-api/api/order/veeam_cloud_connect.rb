# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::VeeamCloudConnect
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/order/veeamCloudConnect',
          type: nil,
          auth: []
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/veeamCloudConnect/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_upgrade_duration_get(duration:, offer:, service_name:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'offer is required' if offer.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/veeamCloudConnect/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'offer' => offer }
        )
      end

      def service_name_upgrade_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/veeamCloudConnect/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_upgrade_get(offer:, service_name:)
        raise ArgumentError, 'offer is required' if offer.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/veeamCloudConnect/{serviceName}/upgrade'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'offer' => offer }
        )
      end
    end
  end
end
