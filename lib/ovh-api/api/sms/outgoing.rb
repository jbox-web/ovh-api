# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Outgoing
      def initialize(connection)
        @connection = connection
      end

      def delete(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/outgoing/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/outgoing/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def hlr(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/outgoing/{id}/hlr'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:, batch_id: nil, creation_datetime_from: nil, creation_datetime_to: nil, delivery_receipt: nil, differed_delivery: nil, message_id: nil, ptt: nil, receiver: nil, sender: nil, tag: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/outgoing'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'batchID' => batch_id, 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to, 'deliveryReceipt' => delivery_receipt, 'differedDelivery' => differed_delivery, 'messageID' => message_id, 'ptt' => ptt, 'receiver' => receiver, 'sender' => sender, 'tag' => tag }
        )
      end
    end
  end
end
