# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::IpOrganisation
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/me/ipOrganisation',
          type: nil,
          auth: []
        )
      end

      def organisation_id_delete(organisation_id:)
        raise ArgumentError, 'organisation_id is required' if organisation_id.nil?

        @connection.call(
          :DELETE,
          '/me/ipOrganisation/{organisationId}'
            .gsub('{organisationId}', ERB::Util.url_encode(organisation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def organisation_id_get(organisation_id:)
        raise ArgumentError, 'organisation_id is required' if organisation_id.nil?

        @connection.call(
          :GET,
          '/me/ipOrganisation/{organisationId}'
            .gsub('{organisationId}', ERB::Util.url_encode(organisation_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def organisation_id_put(organisation_id:, nichandle_ipv4_org:)
        raise ArgumentError, 'organisation_id is required' if organisation_id.nil?
        raise ArgumentError, 'nichandle_ipv4_org is required' if nichandle_ipv4_org.nil?

        @connection.call(
          :PUT,
          '/me/ipOrganisation/{organisationId}'
            .gsub('{organisationId}', ERB::Util.url_encode(organisation_id.to_s)),
          type: nil,
          auth: [],
          body: nichandle_ipv4_org
        )
      end

      def post(me_ip_organisation_post_request:)
        raise ArgumentError, 'me_ip_organisation_post_request is required' if me_ip_organisation_post_request.nil?

        @connection.call(
          :POST,
          '/me/ipOrganisation',
          type: nil,
          auth: [],
          body: me_ip_organisation_post_request
        )
      end
    end
  end
end
