# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Sla
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/me/sla',
          type: nil,
          auth: []
        )
      end

      def id_apply_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/sla/{id}/apply'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_can_be_applied_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/sla/{id}/canBeApplied'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/sla/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_services_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/sla/{id}/services'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_status_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/sla/{id}/status'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
