# frozen_string_literal: true

module Ovh::Api
  module Api
    class Price::Dedicated
      def initialize(connection)
        @connection = connection
      end

      def server_anti_ddo_s_pro_commercial_range_get(commercial_range:)
        raise ArgumentError, 'commercial_range is required' if commercial_range.nil?

        @connection.call(
          :GET,
          '/price/dedicated/server/antiDDoSPro/{commercialRange}'
            .gsub('{commercialRange}', ERB::Util.url_encode(commercial_range.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_backup_storage_capacity_get(capacity:)
        raise ArgumentError, 'capacity is required' if capacity.nil?

        @connection.call(
          :GET,
          '/price/dedicated/server/backupStorage/{capacity}'
            .gsub('{capacity}', ERB::Util.url_encode(capacity.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_firewall_firewall_model_get(firewall_model:)
        raise ArgumentError, 'firewall_model is required' if firewall_model.nil?

        @connection.call(
          :GET,
          '/price/dedicated/server/firewall/{firewallModel}'
            .gsub('{firewallModel}', ERB::Util.url_encode(firewall_model.to_s)),
          type: nil,
          auth: []
        )
      end

      def server_ip_routed_to_get(routed_to:)
        raise ArgumentError, 'routed_to is required' if routed_to.nil?

        @connection.call(
          :GET,
          '/price/dedicated/server/ip/{routedTo}'
            .gsub('{routedTo}', ERB::Util.url_encode(routed_to.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
