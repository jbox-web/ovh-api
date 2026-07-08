# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Phonebook
      def initialize(connection)
        @connection = connection
      end

      def create(billing_account:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/phonebook'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(billing_account:, book_key:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/phonebook/{bookKey}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s)),
          type: nil,
          auth: []
        )
      end

      def export(billing_account:, book_key:, format:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'format is required' if format.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/phonebook/{bookKey}/export'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s)),
          type: nil,
          auth: [],
          query: { 'format' => format }
        )
      end

      def get(billing_account:, book_key:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/phonebook/{bookKey}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s)),
          type: nil,
          auth: []
        )
      end

      def import(billing_account:, book_key:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/phonebook/{bookKey}/import'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/phonebook'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def phonebook_contact(billing_account:, book_key:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/phonebook/{bookKey}/phonebookContact'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s)),
          type: nil,
          auth: []
        )
      end

      def phonebook_contact_delete(billing_account:, book_key:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/phonebook/{bookKey}/phonebookContact/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def phonebook_contact_get(billing_account:, book_key:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/phonebook/{bookKey}/phonebookContact/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def phonebook_contact_post(billing_account:, book_key:, telephony_billing_account_line_service_name_phone_phonebook_bo_hc298ed8e:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'telephony_billing_account_line_service_name_phone_phonebook_bo_hc298ed8e is required' if telephony_billing_account_line_service_name_phone_phonebook_bo_hc298ed8e.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/phonebook/{bookKey}/phonebookContact'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_line_service_name_phone_phonebook_bo_hc298ed8e
        )
      end

      def phonebook_contact_put(billing_account:, book_key:, id:, telephony_phonebook_contact:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'telephony_phonebook_contact is required' if telephony_phonebook_contact.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/phonebook/{bookKey}/phonebookContact/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: telephony_phonebook_contact
        )
      end

      def update(billing_account:, book_key:, telephony_phonebook_master:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'telephony_phonebook_master is required' if telephony_phonebook_master.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/phonebook/{bookKey}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s)),
          type: nil,
          auth: [],
          body: telephony_phonebook_master
        )
      end
    end
  end
end
