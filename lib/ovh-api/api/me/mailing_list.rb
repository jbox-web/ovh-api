# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::MailingList
      def initialize(connection)
        @connection = connection
      end

      def available_lists_get
        @connection.call(
          :GET,
          '/me/mailingList/availableLists',
          type: nil,
          auth: []
        )
      end

      def subscribe_post(me_mailing_list_subscribe_post_request:)
        raise ArgumentError, 'me_mailing_list_subscribe_post_request is required' if me_mailing_list_subscribe_post_request.nil?

        @connection.call(
          :POST,
          '/me/mailingList/subscribe',
          type: nil,
          auth: [],
          body: me_mailing_list_subscribe_post_request
        )
      end
    end
  end
end
