# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Service
      def initialize(connection)
        @connection = connection
      end

      def cancel_termination(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/service/{serviceName}/cancelTermination'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def change_of_billing_account(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/service/{serviceName}/changeOfBillingAccount'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def delete(billing_account:, reason:, service_name:, details: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'reason is required' if reason.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/service/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'details' => details, 'reason' => reason }
        )
      end

      def diagnostic_reports(billing_account:, day_interval:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'day_interval is required' if day_interval.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/diagnosticReports'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'dayInterval' => day_interval }
        )
      end

      def directory(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/directory'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def directory_fetch_entreprise_informations(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/service/{serviceName}/directory/fetchEntrepriseInformations'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def directory_get_directory_service_code(ape_code:, billing_account:, service_name:)
        raise ArgumentError, 'ape_code is required' if ape_code.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/directory/getDirectoryServiceCode'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'apeCode' => ape_code }
        )
      end

      def directory_get_way_types(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/directory/getWayTypes'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def directory_put(billing_account:, service_name:, telephony_directory_info:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_directory_info is required' if telephony_directory_info.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/service/{serviceName}/directory'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_directory_info
        )
      end

      def event_token(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def event_token_delete(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/service/{serviceName}/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def event_token_post(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/service/{serviceName}/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def fax_consumption(billing_account:, service_name:, creation_datetime_from: nil, creation_datetime_to: nil, way_type: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/faxConsumption'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to, 'wayType' => way_type }
        )
      end

      def fax_consumption_get(billing_account:, consumption_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'consumption_id is required' if consumption_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/faxConsumption/{consumptionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{consumptionId}', ERB::Util.url_encode(consumption_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def offer_change(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/offerChange'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def offer_change_delete(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/service/{serviceName}/offerChange'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def offer_change_post(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/service/{serviceName}/offerChange'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def offer_changes(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/offerChanges'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def offer_task(billing_account:, service_name:, action: nil, status: nil, type: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/offerTask'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'action' => action, 'status' => status, 'type' => type }
        )
      end

      def offer_task_get(billing_account:, service_name:, task_id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/offerTask/{taskId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def offer_task_put(billing_account:, service_name:, task_id:, telephony_offer_task:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?
        raise ArgumentError, 'telephony_offer_task is required' if telephony_offer_task.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/service/{serviceName}/offerTask/{taskId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: [],
          body: telephony_offer_task
        )
      end

      def previous_voice_consumption(billing_account:, service_name:, creation_datetime_from: nil, creation_datetime_to: nil, destination_type: nil, plan_type: nil, way_type: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/previousVoiceConsumption'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to, 'destinationType' => destination_type, 'planType' => plan_type, 'wayType' => way_type }
        )
      end

      def previous_voice_consumption_get(billing_account:, consumption_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'consumption_id is required' if consumption_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/previousVoiceConsumption/{consumptionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{consumptionId}', ERB::Util.url_encode(consumption_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def repayment_consumption(billing_account:, service_name:, creation_datetime_from: nil, creation_datetime_to: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/repaymentConsumption'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to }
        )
      end

      def repayment_consumption_get(billing_account:, consumption_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'consumption_id is required' if consumption_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/repaymentConsumption/{consumptionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{consumptionId}', ERB::Util.url_encode(consumption_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def task(billing_account:, service_name:, action: nil, service_type: nil, status: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/task'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'action' => action, 'serviceType' => service_type, 'status' => status }
        )
      end

      def task_get(billing_account:, service_name:, task_id:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/task/{taskId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(billing_account:, service_name:, telephony_telephony_service:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_telephony_service is required' if telephony_telephony_service.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/service/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_telephony_service
        )
      end

      def voice_consumption(billing_account:, service_name:, creation_datetime_from: nil, creation_datetime_to: nil, destination_type: nil, plan_type: nil, way_type: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/voiceConsumption'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDatetime.from' => creation_datetime_from, 'creationDatetime.to' => creation_datetime_to, 'destinationType' => destination_type, 'planType' => plan_type, 'wayType' => way_type }
        )
      end

      def voice_consumption_get(billing_account:, consumption_id:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'consumption_id is required' if consumption_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/service/{serviceName}/voiceConsumption/{consumptionId}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{consumptionId}', ERB::Util.url_encode(consumption_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
