# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Sounds
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/telephony/sounds',
          type: nil,
          auth: []
        )
      end

      def id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/telephony/sounds/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/sounds/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_put(id:, telephony_sound:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'telephony_sound is required' if telephony_sound.nil?

        @connection.call(
          :PUT,
          '/telephony/sounds/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: telephony_sound
        )
      end

      def post(telephony_sounds_post_request:)
        raise ArgumentError, 'telephony_sounds_post_request is required' if telephony_sounds_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/sounds',
          type: nil,
          auth: [],
          body: telephony_sounds_post_request
        )
      end
    end
  end
end
