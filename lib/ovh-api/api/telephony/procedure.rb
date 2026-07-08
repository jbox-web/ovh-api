# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Procedure
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/telephony/procedure',
          type: nil,
          auth: []
        )
      end

      def id_cancel_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/telephony/procedure/{id}/cancel'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/procedure/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def post(telephony_procedure_post_request: nil)
        @connection.call(
          :POST,
          '/telephony/procedure',
          type: nil,
          auth: [],
          body: telephony_procedure_post_request
        )
      end

      def required_get
        @connection.call(
          :GET,
          '/telephony/procedure/required',
          type: nil,
          auth: []
        )
      end
    end
  end
end
