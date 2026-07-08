# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::SshKey
      def initialize(connection)
        @connection = connection
      end

      def get
        @connection.call(
          :GET,
          '/me/sshKey',
          type: nil,
          auth: []
        )
      end

      def key_name_delete(key_name:)
        raise ArgumentError, 'key_name is required' if key_name.nil?

        @connection.call(
          :DELETE,
          '/me/sshKey/{keyName}'
            .gsub('{keyName}', ERB::Util.url_encode(key_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def key_name_get(key_name:)
        raise ArgumentError, 'key_name is required' if key_name.nil?

        @connection.call(
          :GET,
          '/me/sshKey/{keyName}'
            .gsub('{keyName}', ERB::Util.url_encode(key_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def post(me_ssh_key_post_request:)
        raise ArgumentError, 'me_ssh_key_post_request is required' if me_ssh_key_post_request.nil?

        @connection.call(
          :POST,
          '/me/sshKey',
          type: nil,
          auth: [],
          body: me_ssh_key_post_request
        )
      end
    end
  end
end
