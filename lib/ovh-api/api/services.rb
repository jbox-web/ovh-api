# frozen_string_literal: true

module Ovh::Api
  module Api
    class Services
      def initialize(connection)
        @connection = connection
      end

      def get(order_by: nil, resource_name: nil, routes: nil, sort: nil)
        @connection.call(
          :GET,
          '/services',
          type: nil,
          auth: [],
          query: { 'orderBy' => order_by, 'resourceName' => resource_name, 'routes' => routes, 'sort' => sort }
        )
      end

      def service_id_billing_engagement_available_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/billing/engagement/available'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_billing_engagement_end_rule_put(service_id:, services_billing_engagement_update_end_rule_request:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_billing_engagement_update_end_rule_request is required' if services_billing_engagement_update_end_rule_request.nil?

        @connection.call(
          :PUT,
          '/services/{serviceId}/billing/engagement/endRule'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_billing_engagement_update_end_rule_request
        )
      end

      def service_id_billing_engagement_flush_post(service_id:, services_billing_engagement_engagement_flush_request:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_billing_engagement_engagement_flush_request is required' if services_billing_engagement_engagement_flush_request.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/billing/engagement/flush'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_billing_engagement_engagement_flush_request
        )
      end

      def service_id_billing_engagement_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/billing/engagement'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_billing_engagement_request_delete(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :DELETE,
          '/services/{serviceId}/billing/engagement/request'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_billing_engagement_request_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/billing/engagement/request'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_billing_engagement_request_post(service_id:, services_billing_engagement_engagement_request_creation:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_billing_engagement_engagement_request_creation is required' if services_billing_engagement_engagement_request_creation.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/billing/engagement/request'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_billing_engagement_engagement_request_creation
        )
      end

      def service_id_billing_invoices_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/billing/invoices'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_billing_invoices_invoice_id_get(invoice_id:, service_id:)
        raise ArgumentError, 'invoice_id is required' if invoice_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/billing/invoices/{invoiceId}'
            .gsub('{invoiceId}', ERB::Util.url_encode(invoice_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_delete(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :DELETE,
          '/services/{serviceId}'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_options_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/options'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_put(service_id:, services_update_service:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_update_service is required' if services_update_service.nil?

        @connection.call(
          :PUT,
          '/services/{serviceId}'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_update_service
        )
      end

      def service_id_renew_period_capacities_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/renewPeriodCapacities'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_savings_plans_contracts_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/savingsPlans/contracts'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_savings_plans_subscribable_get(service_id:, product_code: nil)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/savingsPlans/subscribable'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          query: { 'productCode' => product_code }
        )
      end

      def service_id_savings_plans_subscribe_execute_post(service_id:, services_savings_plans_subscribe:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_savings_plans_subscribe is required' if services_savings_plans_subscribe.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/savingsPlans/subscribe/execute'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_savings_plans_subscribe
        )
      end

      def service_id_savings_plans_subscribe_simulate_post(service_id:, services_savings_plans_subscribe:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_savings_plans_subscribe is required' if services_savings_plans_subscribe.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/savingsPlans/subscribe/simulate'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_savings_plans_subscribe
        )
      end

      def service_id_savings_plans_subscribed_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/savingsPlans/subscribed'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_savings_plans_subscribed_savings_plan_id_change_period_end_action_post(savings_plan_id:, service_id:, services_savings_plans_change_period_end_action:)
        raise ArgumentError, 'savings_plan_id is required' if savings_plan_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_savings_plans_change_period_end_action is required' if services_savings_plans_change_period_end_action.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/savingsPlans/subscribed/{savingsPlanId}/changePeriodEndAction'
            .gsub('{savingsPlanId}', ERB::Util.url_encode(savings_plan_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_savings_plans_change_period_end_action
        )
      end

      def service_id_savings_plans_subscribed_savings_plan_id_change_size_post(savings_plan_id:, service_id:, services_savings_plans_change_size:)
        raise ArgumentError, 'savings_plan_id is required' if savings_plan_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_savings_plans_change_size is required' if services_savings_plans_change_size.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/savingsPlans/subscribed/{savingsPlanId}/changeSize'
            .gsub('{savingsPlanId}', ERB::Util.url_encode(savings_plan_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_savings_plans_change_size
        )
      end

      def service_id_savings_plans_subscribed_savings_plan_id_get(savings_plan_id:, service_id:)
        raise ArgumentError, 'savings_plan_id is required' if savings_plan_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/savingsPlans/subscribed/{savingsPlanId}'
            .gsub('{savingsPlanId}', ERB::Util.url_encode(savings_plan_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_savings_plans_subscribed_savings_plan_id_periods_get(savings_plan_id:, service_id:)
        raise ArgumentError, 'savings_plan_id is required' if savings_plan_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/savingsPlans/subscribed/{savingsPlanId}/periods'
            .gsub('{savingsPlanId}', ERB::Util.url_encode(savings_plan_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_savings_plans_subscribed_savings_plan_id_put(savings_plan_id:, service_id:, services_savings_plans_savings_plan:)
        raise ArgumentError, 'savings_plan_id is required' if savings_plan_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_savings_plans_savings_plan is required' if services_savings_plans_savings_plan.nil?

        @connection.call(
          :PUT,
          '/services/{serviceId}/savingsPlans/subscribed/{savingsPlanId}'
            .gsub('{savingsPlanId}', ERB::Util.url_encode(savings_plan_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_savings_plans_savings_plan
        )
      end

      def service_id_savings_plans_subscribed_savings_plan_id_terminate_post(savings_plan_id:, service_id:, services_savings_plans_terminate:)
        raise ArgumentError, 'savings_plan_id is required' if savings_plan_id.nil?
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_savings_plans_terminate is required' if services_savings_plans_terminate.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/savingsPlans/subscribed/{savingsPlanId}/terminate'
            .gsub('{savingsPlanId}', ERB::Util.url_encode(savings_plan_id.to_s))
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_savings_plans_terminate
        )
      end

      def service_id_technical_details_get(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :GET,
          '/services/{serviceId}/technicalDetails'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_terminate_confirm_post(service_id:, services_terminate_confirm_service_termination_request:)
        raise ArgumentError, 'service_id is required' if service_id.nil?
        raise ArgumentError, 'services_terminate_confirm_service_termination_request is required' if services_terminate_confirm_service_termination_request.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/terminate/confirm'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: [],
          body: services_terminate_confirm_service_termination_request
        )
      end

      def service_id_terminate_post(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/terminate'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_id_terminate_skip_retention_period_post(service_id:)
        raise ArgumentError, 'service_id is required' if service_id.nil?

        @connection.call(
          :POST,
          '/services/{serviceId}/terminate/skipRetentionPeriod'
            .gsub('{serviceId}', ERB::Util.url_encode(service_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
