# frozen_string_literal: true

module Ovh::Api
  module Api
    class Me::Task
      def initialize(connection)
        @connection = connection
      end

      def contact_change_get(asking_account: nil, state: nil, to_account: nil)
        @connection.call(
          :GET,
          '/me/task/contactChange',
          type: nil,
          auth: [],
          query: { 'askingAccount' => asking_account, 'state' => state, 'toAccount' => to_account }
        )
      end

      def contact_change_id_accept_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/task/contactChange/{id}/accept'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def contact_change_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/task/contactChange/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def contact_change_id_refuse_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/task/contactChange/{id}/refuse'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def contact_change_id_resend_email_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/task/contactChange/{id}/resendEmail'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def dns_get(function: nil, status: nil, zone: nil)
        @connection.call(
          :GET,
          '/me/task/dns',
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status, 'zone' => zone }
        )
      end

      def dns_id_accelerate_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/task/dns/{id}/accelerate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def dns_id_cancel_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/task/dns/{id}/cancel'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def dns_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/task/dns/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def dns_id_relaunch_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/task/dns/{id}/relaunch'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_get(domain: nil, function: nil, status: nil, type: nil)
        @connection.call(
          :GET,
          '/me/task/domain',
          type: nil,
          auth: [],
          query: { 'domain' => domain, 'function' => function, 'status' => status, 'type' => type }
        )
      end

      def domain_id_accelerate_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/task/domain/{id}/accelerate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_id_argument_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/task/domain/{id}/argument'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_id_argument_key_get(id:, key:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'key is required' if key.nil?

        @connection.call(
          :GET,
          '/me/task/domain/{id}/argument/{key}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{key}', ERB::Util.url_encode(key.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_id_argument_key_put(id:, key:, nichandle_domain_task_argument:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'nichandle_domain_task_argument is required' if nichandle_domain_task_argument.nil?

        @connection.call(
          :PUT,
          '/me/task/domain/{id}/argument/{key}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{key}', ERB::Util.url_encode(key.to_s)),
          type: nil,
          auth: [],
          body: nichandle_domain_task_argument
        )
      end

      def domain_id_cancel_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/task/domain/{id}/cancel'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/task/domain/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_id_progressbar_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/task/domain/{id}/progressbar'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def domain_id_relaunch_post(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/me/task/domain/{id}/relaunch'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_change_get(state: nil)
        @connection.call(
          :GET,
          '/me/task/emailChange',
          type: nil,
          auth: [],
          query: { 'state' => state }
        )
      end

      def email_change_id_accept_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/task/emailChange/{id}/accept'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def email_change_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/me/task/emailChange/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_change_id_refuse_post(id:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/me/task/emailChange/{id}/refuse'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
