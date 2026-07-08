# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Abuse
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/me/abuse',
          type: nil,
          auth: []
        )
      end

      def id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/abuse/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
