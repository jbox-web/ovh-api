# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::CommercialRange
      def initialize(connection)
        @connection = connection
      end

      def commercial_range_name_get(commercial_range_name:)
        raise ArgumentError, 'commercial_range_name is required' if commercial_range_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/commercialRange/{commercialRangeName}'
            .gsub('{commercialRangeName}', ERB::Util.url_encode(commercial_range_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def compliance(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/commercialRange/compliance'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get
        @connection.call(
          :GET,
          '/dedicatedCloud/commercialRange',
          type: nil,
          auth: []
        )
      end

      def orderable(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/commercialRange/orderable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
