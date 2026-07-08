# frozen_string_literal: true

module Ovh::Api
  module Api
    class OverTheBox::Migration
      def initialize(connection)
        @connection = connection
      end

      def change_offers(service_name:, over_the_box_service_name_migration_change_offers_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'over_the_box_service_name_migration_change_offers_post_request is required' if over_the_box_service_name_migration_change_offers_post_request.nil?

        @connection.call(
          :POST,
          '/overTheBox/{serviceName}/migration/changeOffers'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: over_the_box_service_name_migration_change_offers_post_request
        )
      end

      def offers(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/overTheBox/{serviceName}/migration/offers'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
