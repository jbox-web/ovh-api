# frozen_string_literal: true

module Ovh::Api
  module Api
    class Xdsl::Incidents
      def initialize(connection)
        @connection = connection
      end

      def get(creation_date: nil, end_date: nil)
        @connection.call(
          :GET,
          '/xdsl/incidents',
          type: nil,
          auth: [],
          query: { 'creationDate' => creation_date, 'endDate' => end_date }
        )
      end

      def id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/xdsl/incidents/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
