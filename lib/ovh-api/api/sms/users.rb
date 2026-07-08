# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::Users
      def initialize(connection)
        @connection = connection
      end

      def create(service_name:, sms_service_name_users_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_users_post_request is required' if sms_service_name_users_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/users'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_users_post_request
        )
      end

      def delete(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/users/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def document(login:, service_name:, way_type:, creation_datetime_from: nil, creation_datetime_to: nil, tag: nil)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'way_type is required' if way_type.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/document'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to, 'tag' => tag, 'wayType' => way_type }
        )
      end

      def get(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def incoming(login:, service_name:, sender: nil, tag: nil)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/incoming'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'sender' => sender, 'tag' => tag }
        )
      end

      def incoming_delete(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/users/{login}/incoming/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def incoming_get(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/incoming/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def jobs(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/jobs'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def jobs_delete(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/users/{login}/jobs/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def jobs_get(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/jobs/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def jobs_post(login:, service_name:, sms_service_name_jobs_post_request:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_jobs_post_request is required' if sms_service_name_jobs_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/users/{login}/jobs'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_jobs_post_request
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def outgoing(login:, service_name:, delivery_receipt: nil, differed_delivery: nil, ptt: nil, receiver: nil, sender: nil, tag: nil)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/outgoing'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'deliveryReceipt' => delivery_receipt, 'differedDelivery' => differed_delivery, 'ptt' => ptt, 'receiver' => receiver, 'sender' => sender, 'tag' => tag }
        )
      end

      def outgoing_delete(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/users/{login}/outgoing/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def outgoing_get(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/outgoing/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def outgoing_hlr(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/outgoing/{id}/hlr'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def receivers(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/receivers'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def receivers_clean(login:, service_name:, slot_id:, sms_service_name_receivers_slot_id_clean_post_request:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?
        raise ArgumentError, 'sms_service_name_receivers_slot_id_clean_post_request is required' if sms_service_name_receivers_slot_id_clean_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/users/{login}/receivers/{slotId}/clean'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_receivers_slot_id_clean_post_request
        )
      end

      def receivers_csv(login:, service_name:, slot_id:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/receivers/{slotId}/csv'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def receivers_delete(login:, service_name:, slot_id:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/users/{login}/receivers/{slotId}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def receivers_get(login:, service_name:, slot_id:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/users/{login}/receivers/{slotId}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def receivers_post(login:, service_name:, sms_service_name_receivers_post_request:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_receivers_post_request is required' if sms_service_name_receivers_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/users/{login}/receivers'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_receivers_post_request
        )
      end

      def receivers_put(login:, service_name:, slot_id:, sms_receiver:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'slot_id is required' if slot_id.nil?
        raise ArgumentError, 'sms_receiver is required' if sms_receiver.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/users/{login}/receivers/{slotId}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{slotId}', ERB::Util.url_encode(slot_id.to_s)),
          type: nil,
          auth: [],
          body: sms_receiver
        )
      end

      def update(login:, service_name:, sms_user:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_user is required' if sms_user.nil?

        @connection.call(
          :PUT,
          '/sms/{serviceName}/users/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_user
        )
      end
    end
  end
end
