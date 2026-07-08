# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::SubAccount
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/me/subAccount',
          type: nil,
          auth: []
        )
      end

      def id_create_consumer_key_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/subAccount/{id}/createConsumerKey'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/subAccount/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_put(id:, nichandle_sub_account:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'nichandle_sub_account is required' if nichandle_sub_account.nil?

        @connection.call(
          :PUT,
          '/me/subAccount/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: nichandle_sub_account
        )
      end

      def post(body: nil)
        @connection.call(
          :POST,
          '/me/subAccount',
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
