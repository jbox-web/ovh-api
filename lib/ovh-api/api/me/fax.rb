# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Fax
      def initialize(connection)
        @connection = connection
      end

      def custom_domains_get
        @connection.call(
          :GET,
          '/me/fax/customDomains',
          type: nil,
          auth: []
        )
      end

      def custom_domains_id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/fax/customDomains/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def custom_domains_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/fax/customDomains/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def custom_domains_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/fax/customDomains',
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
