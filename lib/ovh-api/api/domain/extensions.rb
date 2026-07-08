# frozen_string_literal: true

module Ovh::Api
  module Api
    class Domain::Extensions
      def initialize(connection)
        @connection = connection
      end

      def by_category_get(category_type: nil)
        @connection.call(
          :GET,
          '/domain/extensions/byCategory',
          type: nil,
          auth: [],
          query: { 'categoryType' => category_type }
        )
      end

      def get(geolocalizations: nil, order_by: nil, ovh_subsidiary: nil, thematics: nil)
        @connection.call(
          :GET,
          '/domain/extensions',
          type: nil,
          auth: [],
          query: { 'geolocalizations' => geolocalizations, 'orderBy' => order_by, 'ovhSubsidiary' => ovh_subsidiary, 'thematics' => thematics }
        )
      end

      def highlighted_get(ovh_subsidiary: nil)
        @connection.call(
          :GET,
          '/domain/extensions/highlighted',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def name_get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/domain/extensions/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def name_registry_configurations_get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/domain/extensions/{name}/registryConfigurations'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pricing_attributes_get(ovh_subsidiary: nil)
        @connection.call(
          :GET,
          '/domain/extensions/pricingAttributes',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end
    end
  end
end
