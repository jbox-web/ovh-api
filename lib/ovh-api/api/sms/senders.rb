# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Senders
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, sms_service_name_senders_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_senders_post_request is required' if sms_service_name_senders_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/senders'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_senders_post_request
        )
      end

      def delete(sender:, service_name:)
        raise ArgumentError, 'sender is required' if sender.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/senders/{sender}'
            .gsub('{sender}', ERB::Util.url_encode(sender.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def documents(sender:, service_name:)
        raise ArgumentError, 'sender is required' if sender.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/senders/{sender}/documents'
            .gsub('{sender}', ERB::Util.url_encode(sender.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def documents_get(document_id:, sender:, service_name:)
        raise ArgumentError, 'document_id is required' if document_id.nil?
        raise ArgumentError, 'sender is required' if sender.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/senders/{sender}/documents/{documentID}'
            .gsub('{documentID}', ERB::Util.url_encode(document_id.to_s))
            .gsub('{sender}', ERB::Util.url_encode(sender.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def documents_post(sender:, service_name:, sms_service_name_senders_sender_documents_post_request:)
        raise ArgumentError, 'sender is required' if sender.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_senders_sender_documents_post_request is required' if sms_service_name_senders_sender_documents_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/senders/{sender}/documents'
            .gsub('{sender}', ERB::Util.url_encode(sender.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_senders_sender_documents_post_request
        )
      end

      def documents_put(document_id:, sender:, service_name:, sms_sender_document:)
        raise ArgumentError, 'document_id is required' if document_id.nil?
        raise ArgumentError, 'sender is required' if sender.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_sender_document is required' if sms_sender_document.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/senders/{sender}/documents/{documentID}'
            .gsub('{documentID}', ERB::Util.url_encode(document_id.to_s))
            .gsub('{sender}', ERB::Util.url_encode(sender.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_sender_document
        )
      end

      def get(sender:, service_name:)
        raise ArgumentError, 'sender is required' if sender.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/senders/{sender}'
            .gsub('{sender}', ERB::Util.url_encode(sender.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/senders'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(sender:, service_name:, sms_sender:)
        raise ArgumentError, 'sender is required' if sender.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_sender is required' if sms_sender.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/senders/{sender}'
            .gsub('{sender}', ERB::Util.url_encode(sender.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_sender
        )
      end

      def validate(sender:, service_name:, body:)
        raise ArgumentError, 'sender is required' if sender.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/senders/{sender}/validate'
            .gsub('{sender}', ERB::Util.url_encode(sender.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
