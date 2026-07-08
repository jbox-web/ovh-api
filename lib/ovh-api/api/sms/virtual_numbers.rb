# frozen_string_literal: true

module Ovh::Api
  module Api
    class Sms::VirtualNumbers
      def initialize(connection)
        @connection = connection
      end

      def chat_access(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}/chatAccess'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def chat_access_delete(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/virtualNumbers/{number}/chatAccess'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def chat_access_post(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/virtualNumbers/{number}/chatAccess'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/sms/virtualNumbers',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def get_get(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def incoming(number:, service_name:, creation_datetime_from: nil, creation_datetime_to: nil, sender: nil, tag: nil)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}/incoming'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to, 'sender' => sender, 'tag' => tag }
        )
      end

      def incoming_delete(id:, number:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/virtualNumbers/{number}/incoming/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def incoming_get(id:, number:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}/incoming/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def jobs(number:, service_name:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}/jobs'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def jobs_delete(id:, number:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/virtualNumbers/{number}/jobs/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def jobs_get(id:, number:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}/jobs/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def jobs_post(number:, service_name:, sms_service_name_virtual_numbers_number_jobs_post_request:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'sms_service_name_virtual_numbers_number_jobs_post_request is required' if sms_service_name_virtual_numbers_number_jobs_post_request.nil?

        @connection.call(
          :POST,
          '/sms/{serviceName}/virtualNumbers/{number}/jobs'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: sms_service_name_virtual_numbers_number_jobs_post_request
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def number_get(number:)
        raise ArgumentError, 'number is required' if number.nil?

        @connection.call(
          :GET,
          '/sms/virtualNumbers/{number}'
            .gsub('{number}', ERB::Util.url_encode(number.to_s)),
          type: nil,
          auth: []
        )
      end

      def number_service_infos_get(number:)
        raise ArgumentError, 'number is required' if number.nil?

        @connection.call(
          :GET,
          '/sms/virtualNumbers/{number}/serviceInfos'
            .gsub('{number}', ERB::Util.url_encode(number.to_s)),
          type: nil,
          auth: []
        )
      end

      def number_service_infos_put(number:, services_service:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/sms/virtualNumbers/{number}/serviceInfos'
            .gsub('{number}', ERB::Util.url_encode(number.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def outgoing(number:, service_name:, creation_datetime_from: nil, creation_datetime_to: nil, delivery_receipt: nil, differed_delivery: nil, ptt: nil, receiver: nil, sender: nil, tag: nil)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}/outgoing'
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to, 'deliveryReceipt' => delivery_receipt, 'differedDelivery' => differed_delivery, 'ptt' => ptt, 'receiver' => receiver, 'sender' => sender, 'tag' => tag }
        )
      end

      def outgoing_delete(id:, number:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/sms/{serviceName}/virtualNumbers/{number}/outgoing/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def outgoing_get(id:, number:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}/outgoing/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def outgoing_hlr(id:, number:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/sms/{serviceName}/virtualNumbers/{number}/outgoing/{id}/hlr'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{number}', ERB::Util.url_encode(number.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
