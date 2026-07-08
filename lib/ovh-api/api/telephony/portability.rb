# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Portability
      def initialize(connection)
        @connection = connection
      end

      def can_be_cancelled(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability/{id}/canBeCancelled'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def can_be_executed(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability/{id}/canBeExecuted'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cancel(billing_account:, id:, body: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/portability/{id}/cancel'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def change_date(billing_account:, id:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/portability/{id}/changeDate'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def date_can_be_changed(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability/{id}/dateCanBeChanged'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def document(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability/{id}/document'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def document_delete(billing_account:, document_id:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'document_id is required' if document_id.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/portability/{id}/document/{documentId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{documentId}', ERB::Util.url_encode(document_id.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def document_get(billing_account:, document_id:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'document_id is required' if document_id.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability/{id}/document/{documentId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{documentId}', ERB::Util.url_encode(document_id.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def document_post(billing_account:, id:, sms_service_name_senders_sender_documents_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'sms_service_name_senders_sender_documents_post_request is required' if sms_service_name_senders_sender_documents_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/portability/{id}/document'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_senders_sender_documents_post_request
        )
      end

      def document_put(billing_account:, document_id:, id:, telephony_portability_document:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'document_id is required' if document_id.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'telephony_portability_document is required' if telephony_portability_document.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/portability/{id}/document/{documentId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{documentId}', ERB::Util.url_encode(document_id.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: telephony_portability_document
        )
      end

      def execute(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/portability/{id}/execute'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability/{id}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def relaunch(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability/{id}/relaunch'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def relaunch_post(billing_account:, id:, complex_type_safe_key_value_string:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'complex_type_safe_key_value_string is required' if complex_type_safe_key_value_string.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/portability/{id}/relaunch'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: [],
          body: complex_type_safe_key_value_string
        )
      end

      def status(billing_account:, id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/portability/{id}/status'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
