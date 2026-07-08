# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Receivers
      def initialize(connection)
        @connection = connection
      end

      def clean(service_name:, slot_id:, sms_service_name_receivers_slot_id_clean_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?
        raise ArgumentError, 'sms_service_name_receivers_slot_id_clean_post_request is required' if sms_service_name_receivers_slot_id_clean_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/receivers/{slotId}/clean'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_receivers_slot_id_clean_post_request
        )
      end

      def create(service_name:, sms_service_name_receivers_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_receivers_post_request is required' if sms_service_name_receivers_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/receivers'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_receivers_post_request
        )
      end

      def csv(service_name:, slot_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/receivers/{slotId}/csv'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def delete(service_name:, slot_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/receivers/{slotId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, slot_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/receivers/{slotId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/receivers'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(service_name:, slot_id:, sms_receiver:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?
        raise ArgumentError, 'sms_receiver is required' if sms_receiver.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/receivers/{slotId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: [],
          body: sms_receiver
        )
      end
    end
  end
end
