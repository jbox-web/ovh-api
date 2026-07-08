# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Upgrade
      def initialize(connection)
        @connection = connection
      end

      def bandwidth_vrack_get
        @connection.call(
          :GET,
          '/order/upgrade/bandwidthVrack',
          type: nil,
          auth: []
        )
      end

      def bandwidth_vrack_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/bandwidthVrack/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def bandwidth_vrack_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/bandwidthVrack/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def bandwidth_vrack_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/bandwidthVrack/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def baremetal_private_bandwidth_get
        @connection.call(
          :GET,
          '/order/upgrade/baremetalPrivateBandwidth',
          type: nil,
          auth: []
        )
      end

      def baremetal_private_bandwidth_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/baremetalPrivateBandwidth/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def baremetal_private_bandwidth_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/baremetalPrivateBandwidth/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def baremetal_private_bandwidth_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/baremetalPrivateBandwidth/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def baremetal_public_bandwidth_get
        @connection.call(
          :GET,
          '/order/upgrade/baremetalPublicBandwidth',
          type: nil,
          auth: []
        )
      end

      def baremetal_public_bandwidth_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/baremetalPublicBandwidth/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def baremetal_public_bandwidth_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/baremetalPublicBandwidth/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def baremetal_public_bandwidth_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/baremetalPublicBandwidth/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def cephaas_get
        @connection.call(
          :GET,
          '/order/upgrade/cephaas',
          type: nil,
          auth: []
        )
      end

      def cephaas_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/cephaas/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cephaas_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/cephaas/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def cephaas_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/cephaas/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def cloud_db_domain_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/order/upgrade/cloudDB/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def cloud_db_domain_plan_code_get(domain:, plan_code:, quantity:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?

        @connection.call(
          :GET,
          '/order/upgrade/cloudDB/{domain}/{planCode}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def cloud_db_domain_plan_code_post(domain:, plan_code:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/cloudDB/{domain}/{planCode}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def cloud_db_get
        @connection.call(
          :GET,
          '/order/upgrade/cloudDB',
          type: nil,
          auth: []
        )
      end

      def email_domain_get
        @connection.call(
          :GET,
          '/order/upgrade/emailDomain',
          type: nil,
          auth: []
        )
      end

      def email_domain_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/emailDomain/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_domain_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/emailDomain/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def email_domain_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/emailDomain/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def ip_loadbalancing_get
        @connection.call(
          :GET,
          '/order/upgrade/ipLoadbalancing',
          type: nil,
          auth: []
        )
      end

      def ip_loadbalancing_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/ipLoadbalancing/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def ip_loadbalancing_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/ipLoadbalancing/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def ip_loadbalancing_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/ipLoadbalancing/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def license_hycu_get
        @connection.call(
          :GET,
          '/order/upgrade/licenseHycu',
          type: nil,
          auth: []
        )
      end

      def license_hycu_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/licenseHycu/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def license_hycu_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/licenseHycu/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def license_hycu_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/licenseHycu/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def license_plesk_get
        @connection.call(
          :GET,
          '/order/upgrade/licensePlesk',
          type: nil,
          auth: []
        )
      end

      def license_plesk_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/licensePlesk/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def license_plesk_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/licensePlesk/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def license_plesk_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/licensePlesk/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def licensec_panel_get
        @connection.call(
          :GET,
          '/order/upgrade/licensecPanel',
          type: nil,
          auth: []
        )
      end

      def licensec_panel_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/licensecPanel/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def licensec_panel_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/licensecPanel/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def licensec_panel_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/licensecPanel/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def logs_get
        @connection.call(
          :GET,
          '/order/upgrade/logs',
          type: nil,
          auth: []
        )
      end

      def logs_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/logs/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def logs_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/logs/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def logs_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/logs/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def managed_cms_get
        @connection.call(
          :GET,
          '/order/upgrade/managedCMS',
          type: nil,
          auth: []
        )
      end

      def managed_cms_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/managedCMS/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def managed_cms_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/managedCMS/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def managed_cms_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/managedCMS/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def metrics_get
        @connection.call(
          :GET,
          '/order/upgrade/metrics',
          type: nil,
          auth: []
        )
      end

      def metrics_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/metrics/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def metrics_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/metrics/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def metrics_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/metrics/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def microsoft_exchange_get
        @connection.call(
          :GET,
          '/order/upgrade/microsoftExchange',
          type: nil,
          auth: []
        )
      end

      def microsoft_exchange_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/microsoftExchange/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def microsoft_exchange_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/microsoftExchange/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def microsoft_exchange_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/microsoftExchange/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def private_cloud_get
        @connection.call(
          :GET,
          '/order/upgrade/privateCloud',
          type: nil,
          auth: []
        )
      end

      def private_cloud_management_fee_get
        @connection.call(
          :GET,
          '/order/upgrade/privateCloudManagementFee',
          type: nil,
          auth: []
        )
      end

      def private_cloud_management_fee_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/privateCloudManagementFee/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def private_cloud_management_fee_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/privateCloudManagementFee/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def private_cloud_management_fee_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/privateCloudManagementFee/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def private_cloud_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/privateCloud/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def private_cloud_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/privateCloud/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def private_cloud_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/privateCloud/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def private_sql_domain_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/order/upgrade/privateSQL/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def private_sql_domain_plan_code_get(domain:, plan_code:, quantity:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?

        @connection.call(
          :GET,
          '/order/upgrade/privateSQL/{domain}/{planCode}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def private_sql_domain_plan_code_post(domain:, plan_code:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/privateSQL/{domain}/{planCode}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def private_sql_get
        @connection.call(
          :GET,
          '/order/upgrade/privateSQL',
          type: nil,
          auth: []
        )
      end

      def ssl_gateway_get
        @connection.call(
          :GET,
          '/order/upgrade/sslGateway',
          type: nil,
          auth: []
        )
      end

      def ssl_gateway_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/sslGateway/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def ssl_gateway_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/sslGateway/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def ssl_gateway_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/sslGateway/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def vps_additional_disk_get
        @connection.call(
          :GET,
          '/order/upgrade/vpsAdditionalDisk',
          type: nil,
          auth: []
        )
      end

      def vps_additional_disk_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/vpsAdditionalDisk/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def vps_additional_disk_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/vpsAdditionalDisk/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def vps_additional_disk_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/vpsAdditionalDisk/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def vps_get
        @connection.call(
          :GET,
          '/order/upgrade/vps',
          type: nil,
          auth: []
        )
      end

      def vps_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/vps/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def vps_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/vps/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def vps_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/vps/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def web_hosting_get
        @connection.call(
          :GET,
          '/order/upgrade/webHosting',
          type: nil,
          auth: []
        )
      end

      def web_hosting_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/webHosting/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def web_hosting_service_name_plan_code_get(plan_code:, quantity:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/webHosting/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def web_hosting_service_name_plan_code_post(plan_code:, service_name:, order_upgrade_bandwidth_vrack_service_name_plan_code_post_request:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_upgrade_bandwidth_vrack_service_name_plan_code_post_request is required' if order_upgrade_bandwidth_vrack_service_name_plan_code_post_request.nil?

        @connection.call(
          :POST,
          '/order/upgrade/webHosting/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_upgrade_bandwidth_vrack_service_name_plan_code_post_request
        )
      end

      def zimbra_get
        @connection.call(
          :GET,
          '/order/upgrade/zimbra',
          type: nil,
          auth: []
        )
      end

      def zimbra_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/zimbra/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zimbra_service_name_plan_code_get(plan_code:, service_name:)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/upgrade/zimbra/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def zimbra_service_name_plan_code_post(plan_code:, service_name:, body: nil)
        raise ArgumentError, 'plan_code is required' if plan_code.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/upgrade/zimbra/{serviceName}/{planCode}'
            .gsub('{planCode}', ERB::Util.url_encode(plan_code.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
