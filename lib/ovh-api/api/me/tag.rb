# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Tag
      def initialize(connection)
        @connection = connection
      end

      def available_get
        @connection.call(
          :GET,
          '/me/tag/available',
          type: nil,
          auth: []
        )
      end

      def get
        @connection.call(
          :GET,
          '/me/tag',
          type: nil,
          auth: []
        )
      end

      def post(me_tag_creation:)
        raise ArgumentError, 'me_tag_creation is required' if me_tag_creation.nil?

        @connection.call(
          :POST,
          '/me/tag',
          type: nil,
          auth: [],
          body: me_tag_creation
        )
      end

      def tag_delete(tag:)
        raise ArgumentError, 'tag is required' if tag.nil?

        @connection.call(
          :DELETE,
          '/me/tag/{tag}'
            .gsub('{tag}', ERB::Util.url_encode(tag.to_s)),
          type: nil,
          auth: []
        )
      end

      def tag_get(tag:)
        raise ArgumentError, 'tag is required' if tag.nil?

        @connection.call(
          :GET,
          '/me/tag/{tag}'
            .gsub('{tag}', ERB::Util.url_encode(tag.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
