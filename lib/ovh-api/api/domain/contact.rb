# frozen_string_literal: true

module Ovh::Api
  module Api
    class Domain::Contact
      def initialize(connection)
        @connection = connection
      end

      def contact_id_get(contact_id:)
        raise ArgumentError, 'contact_id is required' if contact_id.nil?

        @connection.call(
          :GET,
          '/domain/contact/{contactId}'
            .gsub('{contactId}', ERB::Util.url_encode(contact_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def contact_id_put(contact_id:, domain_contact:)
        raise ArgumentError, 'contact_id is required' if contact_id.nil?
        raise ArgumentError, 'domain_contact is required' if domain_contact.nil?

        @connection.call(
          :PUT,
          '/domain/contact/{contactId}'
            .gsub('{contactId}', ERB::Util.url_encode(contact_id.to_s)),
          type: nil,
          auth: [],
          body: domain_contact
        )
      end

      def get
        @connection.call(
          :GET,
          '/domain/contact',
          type: nil,
          auth: []
        )
      end

      def post(domain_contact:)
        raise ArgumentError, 'domain_contact is required' if domain_contact.nil?

        @connection.call(
          :POST,
          '/domain/contact',
          type: nil,
          auth: [],
          body: domain_contact
        )
      end
    end
  end
end
