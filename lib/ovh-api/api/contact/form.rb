# frozen_string_literal: true

module Ovh::Api
  module Api
    class Contact::Form
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/contact/form',
          type: nil,
          auth: []
        )
      end

      def send_post(contact_form_send_post_request:)
        raise ArgumentError, 'contact_form_send_post_request is required' if contact_form_send_post_request.nil?

        @connection.call(
          :POST,
          '/contact/form/send',
          type: nil,
          auth: [],
          body: contact_form_send_post_request
        )
      end
    end
  end
end
