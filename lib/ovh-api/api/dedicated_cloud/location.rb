# frozen_string_literal: true

module Ovh::Api
  module Api
    class DedicatedCloud::Location
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/dedicatedCloud/location',
          type: nil,
          auth: []
        )
      end

      def host_profile(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/location/hostProfile'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def host_profile_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/location/hostProfile/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hypervisor(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/location/hypervisor'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hypervisor_get(service_name:, short_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'short_name is required' if short_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/location/hypervisor/{shortName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{shortName}', ERB::Util.url_encode(short_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/{serviceName}/location'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pcc_zone_get(pcc_zone:)
        raise ArgumentError, 'pcc_zone is required' if pcc_zone.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/location/{pccZone}'
            .gsub('{pccZone}', ERB::Util.url_encode(pcc_zone.to_s)),
          type: nil,
          auth: []
        )
      end

      def pcc_zone_host_profile_get(pcc_zone:)
        raise ArgumentError, 'pcc_zone is required' if pcc_zone.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/location/{pccZone}/hostProfile'
            .gsub('{pccZone}', ERB::Util.url_encode(pcc_zone.to_s)),
          type: nil,
          auth: []
        )
      end

      def pcc_zone_host_profile_id_get(id:, pcc_zone:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'pcc_zone is required' if pcc_zone.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/location/{pccZone}/hostProfile/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{pccZone}', ERB::Util.url_encode(pcc_zone.to_s)),
          type: nil,
          auth: []
        )
      end

      def pcc_zone_hypervisor_get(pcc_zone:)
        raise ArgumentError, 'pcc_zone is required' if pcc_zone.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/location/{pccZone}/hypervisor'
            .gsub('{pccZone}', ERB::Util.url_encode(pcc_zone.to_s)),
          type: nil,
          auth: []
        )
      end

      def pcc_zone_hypervisor_short_name_get(pcc_zone:, short_name:)
        raise ArgumentError, 'pcc_zone is required' if pcc_zone.nil?
        raise ArgumentError, 'short_name is required' if short_name.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/location/{pccZone}/hypervisor/{shortName}'
            .gsub('{pccZone}', ERB::Util.url_encode(pcc_zone.to_s))
            .gsub('{shortName}', ERB::Util.url_encode(short_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pcc_zone_stock_host_get(pcc_zone:, min_year: nil)
        raise ArgumentError, 'pcc_zone is required' if pcc_zone.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/location/{pccZone}/stock/host'
            .gsub('{pccZone}', ERB::Util.url_encode(pcc_zone.to_s)),
          type: nil,
          auth: [],
          query: { 'minYear' => min_year }
        )
      end

      def pcc_zone_stock_pcc_get(pcc_zone:)
        raise ArgumentError, 'pcc_zone is required' if pcc_zone.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/location/{pccZone}/stock/pcc'
            .gsub('{pccZone}', ERB::Util.url_encode(pcc_zone.to_s)),
          type: nil,
          auth: []
        )
      end

      def pcc_zone_stock_zpool_get(pcc_zone:, profile_filter: nil)
        raise ArgumentError, 'pcc_zone is required' if pcc_zone.nil?

        @connection.call(
          :GET,
          '/dedicatedCloud/location/{pccZone}/stock/zpool'
            .gsub('{pccZone}', ERB::Util.url_encode(pcc_zone.to_s)),
          type: nil,
          auth: [],
          query: { 'profileFilter' => profile_filter }
        )
      end
    end
  end
end
