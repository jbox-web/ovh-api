# frozen_string_literal: true

module Ovh::Api
  module Api
    class Xdsl::TemplateModem
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/xdsl/templateModem',
          type: nil,
          auth: []
        )
      end

      def name_delete(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :DELETE,
          '/xdsl/templateModem/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def name_get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/xdsl/templateModem/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def name_put(name:, xdsl_template_modem:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'xdsl_template_modem is required' if xdsl_template_modem.nil?

        @connection.call(
          :PUT,
          '/xdsl/templateModem/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_template_modem
        )
      end

      def post(xdsl_template_modem_post:)
        raise ArgumentError, 'xdsl_template_modem_post is required' if xdsl_template_modem_post.nil?

        @connection.call(
          :POST,
          '/xdsl/templateModem',
          type: nil,
          auth: [],
          body: xdsl_template_modem_post
        )
      end
    end
  end
end
