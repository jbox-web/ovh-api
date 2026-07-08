# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Phonebooks
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/phonebooks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(book_key:, service_name:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/phonebooks/{bookKey}'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def export(book_key:, format:, service_name:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'format is required' if format.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/phonebooks/{bookKey}/export'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'format' => format }
        )
      end

      def get(book_key:, service_name:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/phonebooks/{bookKey}'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def import(book_key:, service_name:, body:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/phonebooks/{bookKey}/import'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/phonebooks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def phonebook_contact(book_key:, service_name:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/phonebooks/{bookKey}/phonebookContact'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def phonebook_contact_delete(book_key:, id:, service_name:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/phonebooks/{bookKey}/phonebookContact/{id}'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def phonebook_contact_get(book_key:, id:, service_name:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/phonebooks/{bookKey}/phonebookContact/{id}'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def phonebook_contact_post(book_key:, service_name:, sms_service_name_phonebooks_book_key_phonebook_contact_post_request:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_phonebooks_book_key_phonebook_contact_post_request is required' if sms_service_name_phonebooks_book_key_phonebook_contact_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/phonebooks/{bookKey}/phonebookContact'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_phonebooks_book_key_phonebook_contact_post_request
        )
      end

      def phonebook_contact_put(book_key:, id:, service_name:, sms_phonebook_contact:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_phonebook_contact is required' if sms_phonebook_contact.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/phonebooks/{bookKey}/phonebookContact/{id}'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_phonebook_contact
        )
      end

      def update(book_key:, service_name:, sms_phonebook:)
        raise ArgumentError, 'book_key is required' if book_key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_phonebook is required' if sms_phonebook.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/phonebooks/{bookKey}'
            .gsub('{bookKey}', ERB::Util.url_encode(book_key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_phonebook
        )
      end
    end
  end
end
