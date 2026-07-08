# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Contact
      def initialize(connection)
        @connection = connection
      end

      def contact_id_fields_get(contact_id:)
        raise ArgumentError, 'contact_id is required' if contact_id.nil?

        @connection.call(
          :GET,
          '/me/contact/{contactId}/fields'
            .gsub('{contactId}', ERB::Util.url_encode(contact_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def contact_id_get(contact_id:)
        raise ArgumentError, 'contact_id is required' if contact_id.nil?

        @connection.call(
          :GET,
          '/me/contact/{contactId}'
            .gsub('{contactId}', ERB::Util.url_encode(contact_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def contact_id_put(contact_id:, me_contact_contact:)
        raise ArgumentError, 'contact_id is required' if contact_id.nil?
        raise ArgumentError, 'me_contact_contact is required' if me_contact_contact.nil?

        @connection.call(
          :PUT,
          '/me/contact/{contactId}'
            .gsub('{contactId}', ERB::Util.url_encode(contact_id.to_s)),
          type: nil,
          auth: [],
          body: me_contact_contact
        )
      end

      def get
        @connection.call(
          :GET,
          '/me/contact',
          type: nil,
          auth: []
        )
      end

      def post(me_contact_contact:)
        raise ArgumentError, 'me_contact_contact is required' if me_contact_contact.nil?

        @connection.call(
          :POST,
          '/me/contact',
          type: nil,
          auth: [],
          body: me_contact_contact
        )
      end
    end
  end
end
