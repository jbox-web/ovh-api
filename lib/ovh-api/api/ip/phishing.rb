# frozen_string_literal: true

module Ovh::Api
  module Api
    class Ip::Phishing
      def initialize(connection)
        @connection = connection
      end

      def get(id:, ip:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/phishing/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(ip:, ip_on_antiphishing: nil, state: nil)
        raise ArgumentError, 'ip is required' if ip.nil?

        @connection.call(
          :GET,
          '/ip/{ip}/phishing'
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s)),
          type: nil,
          auth: [],
          query: { 'ipOnAntiphishing' => ip_on_antiphishing, 'state' => state }
        )
      end
    end
  end
end
