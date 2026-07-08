# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Document
      def initialize(connection)
        @connection = connection
      end

      def cors_post(body:)
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/document/cors',
          type: nil,
          auth: [],
          body: body
        )
      end

      def get
        @connection.call(
          :GET,
          '/me/document',
          type: nil,
          auth: []
        )
      end

      def id_delete(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/me/document/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/document/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def id_put(id:, nichandle_document_document:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'nichandle_document_document is required' if nichandle_document_document.nil?

        @connection.call(
          :PUT,
          '/me/document/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: nichandle_document_document
        )
      end

      def post(me_document_post_request:)
        raise ArgumentError, 'me_document_post_request is required' if me_document_post_request.nil?

        @connection.call(
          :POST,
          '/me/document',
          type: nil,
          auth: [],
          body: me_document_post_request
        )
      end
    end
  end
end
