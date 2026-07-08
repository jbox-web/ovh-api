# frozen_string_literal: true

module Ovh::Api
  module Api
    class Connectivity
      def initialize(connection)
        @connection = connection
      end

      def eligibility_recall_get
        @connection.call(
          :GET,
          '/connectivity/eligibility/recall',
          type: nil,
          auth: []
        )
      end

      def eligibility_recall_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/connectivity/eligibility/recall/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def eligibility_recall_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/connectivity/eligibility/recall/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def eligibility_recall_id_put(id:, connectivity_eligibility_eligibility_recall_post:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'connectivity_eligibility_eligibility_recall_post is required' if connectivity_eligibility_eligibility_recall_post.nil?

        @connection.call(
          :PUT,
          '/connectivity/eligibility/recall/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: connectivity_eligibility_eligibility_recall_post
        )
      end

      def eligibility_recall_post(connectivity_eligibility_eligibility_recall_post:)
        raise ArgumentError, 'connectivity_eligibility_eligibility_recall_post is required' if connectivity_eligibility_eligibility_recall_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/recall',
          type: nil,
          auth: [],
          body: connectivity_eligibility_eligibility_recall_post
        )
      end

      def eligibility_search_addresses_post(connectivity_eligibility_search_addresses_post:)
        raise ArgumentError, 'connectivity_eligibility_search_addresses_post is required' if connectivity_eligibility_search_addresses_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/addresses',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_addresses_post
        )
      end

      def eligibility_search_building_details_post(connectivity_eligibility_search_building_details_post:)
        raise ArgumentError, 'connectivity_eligibility_search_building_details_post is required' if connectivity_eligibility_search_building_details_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/buildingDetails',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_building_details_post
        )
      end

      def eligibility_search_buildings_by_line_post(connectivity_eligibility_search_buildings_by_line_post:)
        raise ArgumentError, 'connectivity_eligibility_search_buildings_by_line_post is required' if connectivity_eligibility_search_buildings_by_line_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/buildingsByLine',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_buildings_by_line_post
        )
      end

      def eligibility_search_buildings_post(connectivity_eligibility_search_buildings_post:)
        raise ArgumentError, 'connectivity_eligibility_search_buildings_post is required' if connectivity_eligibility_search_buildings_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/buildings',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_buildings_post
        )
      end

      def eligibility_search_cities_post(connectivity_eligibility_search_cities:)
        raise ArgumentError, 'connectivity_eligibility_search_cities is required' if connectivity_eligibility_search_cities.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/cities',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_cities
        )
      end

      def eligibility_search_lines_post(connectivity_eligibility_search_lines_post:)
        raise ArgumentError, 'connectivity_eligibility_search_lines_post is required' if connectivity_eligibility_search_lines_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/lines',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_lines_post
        )
      end

      def eligibility_search_meetings_post(connectivity_eligibility_search_meetings_post:)
        raise ArgumentError, 'connectivity_eligibility_search_meetings_post is required' if connectivity_eligibility_search_meetings_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/meetings',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_meetings_post
        )
      end

      def eligibility_search_street_numbers_details_post(connectivity_eligibility_search_street_numbers_details_post:)
        raise ArgumentError, 'connectivity_eligibility_search_street_numbers_details_post is required' if connectivity_eligibility_search_street_numbers_details_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/streetNumbers/details',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_street_numbers_details_post
        )
      end

      def eligibility_search_street_numbers_post(connectivity_eligibility_search_street_numbers_post:)
        raise ArgumentError, 'connectivity_eligibility_search_street_numbers_post is required' if connectivity_eligibility_search_street_numbers_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/streetNumbers',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_street_numbers_post
        )
      end

      def eligibility_search_streets_post(connectivity_eligibility_search_streets_post:)
        raise ArgumentError, 'connectivity_eligibility_search_streets_post is required' if connectivity_eligibility_search_streets_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/search/streets',
          type: nil,
          auth: [],
          body: connectivity_eligibility_search_streets_post
        )
      end

      def eligibility_test_address_partners_post(connectivity_eligibility_test_address_partners_post:)
        raise ArgumentError, 'connectivity_eligibility_test_address_partners_post is required' if connectivity_eligibility_test_address_partners_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/test/address/partners',
          type: nil,
          auth: [],
          body: connectivity_eligibility_test_address_partners_post
        )
      end

      def eligibility_test_address_post(connectivity_eligibility_test_address_post:)
        raise ArgumentError, 'connectivity_eligibility_test_address_post is required' if connectivity_eligibility_test_address_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/test/address',
          type: nil,
          auth: [],
          body: connectivity_eligibility_test_address_post
        )
      end

      def eligibility_test_building_partners_post(connectivity_eligibility_test_building_partners_post:)
        raise ArgumentError, 'connectivity_eligibility_test_building_partners_post is required' if connectivity_eligibility_test_building_partners_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/test/building/partners',
          type: nil,
          auth: [],
          body: connectivity_eligibility_test_building_partners_post
        )
      end

      def eligibility_test_building_post(connectivity_eligibility_test_building_post:)
        raise ArgumentError, 'connectivity_eligibility_test_building_post is required' if connectivity_eligibility_test_building_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/test/building',
          type: nil,
          auth: [],
          body: connectivity_eligibility_test_building_post
        )
      end

      def eligibility_test_get(eligibility_reference:)
        raise ArgumentError, 'eligibility_reference is required' if eligibility_reference.nil?

        @connection.call(
          :GET,
          '/connectivity/eligibility/test',
          type: nil,
          auth: [],
          query: { 'eligibilityReference' => eligibility_reference }
        )
      end

      def eligibility_test_line_partners_post(connectivity_eligibility_test_line_partners_post:)
        raise ArgumentError, 'connectivity_eligibility_test_line_partners_post is required' if connectivity_eligibility_test_line_partners_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/test/line/partners',
          type: nil,
          auth: [],
          body: connectivity_eligibility_test_line_partners_post
        )
      end

      def eligibility_test_line_post(connectivity_eligibility_test_line_post:)
        raise ArgumentError, 'connectivity_eligibility_test_line_post is required' if connectivity_eligibility_test_line_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/test/line',
          type: nil,
          auth: [],
          body: connectivity_eligibility_test_line_post
        )
      end

      def eligibility_test_otp_partners_post(connectivity_eligibility_test_otp_partners_post:)
        raise ArgumentError, 'connectivity_eligibility_test_otp_partners_post is required' if connectivity_eligibility_test_otp_partners_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/test/otp/partners',
          type: nil,
          auth: [],
          body: connectivity_eligibility_test_otp_partners_post
        )
      end

      def eligibility_test_otp_post(connectivity_eligibility_test_otp_post:)
        raise ArgumentError, 'connectivity_eligibility_test_otp_post is required' if connectivity_eligibility_test_otp_post.nil?

        @connection.call(
          :POST,
          '/connectivity/eligibility/test/otp',
          type: nil,
          auth: [],
          body: connectivity_eligibility_test_otp_post
        )
      end

      def monitoring_generic_incident_partners_get(creation_date: nil, end_date: nil, status: nil)
        @connection.call(
          :GET,
          '/connectivity/monitoring/genericIncident/partners',
          type: nil,
          auth: [],
          query: { 'creationDate' => creation_date, 'endDate' => end_date, 'status' => status }
        )
      end

      def monitoring_generic_incident_public_get(creation_date: nil, end_date: nil, status: nil)
        @connection.call(
          :GET,
          '/connectivity/monitoring/genericIncident/public',
          type: nil,
          auth: [],
          query: { 'creationDate' => creation_date, 'endDate' => end_date, 'status' => status }
        )
      end
    end
  end
end
