# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony::Scheduler
      def initialize(connection)
        @connection = connection
      end

      def events(billing_account:, service_name:, categories: nil, date_end_from: nil, date_end_to: nil, date_start_from: nil, date_start_to: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/scheduler/{serviceName}/events'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'categories' => categories, 'dateEnd.from' => date_end_from, 'dateEnd.to' => date_end_to, 'dateStart.from' => date_start_from, 'dateStart.to' => date_start_to }
        )
      end

      def events_delete(billing_account:, service_name:, uid:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uid is required' if uid.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/scheduler/{serviceName}/events/{uid}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uid}', ERB::Util.url_encode(uid.to_s)),
          type: nil,
          auth: []
        )
      end

      def events_get(billing_account:, service_name:, uid:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uid is required' if uid.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/scheduler/{serviceName}/events/{uid}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uid}', ERB::Util.url_encode(uid.to_s)),
          type: nil,
          auth: []
        )
      end

      def events_post(billing_account:, service_name:, telephony_billing_account_scheduler_service_name_events_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_billing_account_scheduler_service_name_events_post_request is required' if telephony_billing_account_scheduler_service_name_events_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/scheduler/{serviceName}/events'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_scheduler_service_name_events_post_request
        )
      end

      def events_put(billing_account:, service_name:, uid:, telephony_scheduler_event:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'uid is required' if uid.nil?
        raise ArgumentError, 'telephony_scheduler_event is required' if telephony_scheduler_event.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/scheduler/{serviceName}/events/{uid}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{uid}', ERB::Util.url_encode(uid.to_s)),
          type: nil,
          auth: [],
          body: telephony_scheduler_event
        )
      end

      def get(billing_account:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/scheduler/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def import_ics_calendar(billing_account:, service_name:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/scheduler/{serviceName}/importIcsCalendar'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def list(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/scheduler'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def update(billing_account:, service_name:, telephony_scheduler:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'telephony_scheduler is required' if telephony_scheduler.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/scheduler/{serviceName}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: telephony_scheduler
        )
      end
    end
  end
end
