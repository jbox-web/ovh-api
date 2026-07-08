# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order
      def initialize(connection)
        @connection = connection
      end

      def cart_service_option_backup_services_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/backupServices',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_backup_services_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/backupServices/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_baremetal_servers_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/baremetalServers',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_baremetal_servers_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/baremetalServers/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_baremetal_servers_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/baremetalServers/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_cloud_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/cloud',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_cloud_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/cloud/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_cloud_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/cloud/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_dedicated_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/dedicated',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_dedicated_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/dedicated/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_dedicated_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/dedicated/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_dns_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/dns',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_dns_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/dns/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_dns_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/dns/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_domain_get(whois_owner: nil)
        @connection.call(
          :GET,
          '/order/cartServiceOption/domain',
          type: nil,
          auth: [],
          query: { 'whoisOwner' => whois_owner }
        )
      end

      def cart_service_option_domain_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/domain/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_domain_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/domain/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_emailpro_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/emailpro',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_emailpro_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/emailpro/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_emailpro_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/emailpro/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_ip_loadbalancing_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/ipLoadbalancing',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_ip_loadbalancing_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/ipLoadbalancing/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_ip_loadbalancing_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/ipLoadbalancing/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_license_hycu_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/licenseHycu',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_license_hycu_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/licenseHycu/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_license_hycu_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/licenseHycu/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_logs_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/logs',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_logs_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/logs/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_logs_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/logs/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_microsoft_exchange_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/microsoftExchange',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_microsoft_exchange_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/microsoftExchange/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_microsoft_exchange_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/microsoftExchange/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_microsoft_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/microsoft',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_microsoft_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/microsoft/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_microsoft_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/microsoft/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_nutanix_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/nutanix',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_nutanix_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/nutanix/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_nutanix_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/nutanix/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_office365_prepaid_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/office365Prepaid',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_office365_prepaid_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/office365Prepaid/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_office365_prepaid_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/office365Prepaid/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_office_prepaid_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/officePrepaid',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_office_prepaid_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/officePrepaid/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_office_prepaid_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/officePrepaid/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_private_cloud_enterprise_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/privateCloudEnterprise',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_private_cloud_enterprise_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/privateCloudEnterprise/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_private_cloud_enterprise_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/privateCloudEnterprise/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_private_cloud_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/privateCloud',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_private_cloud_reseller_enterprise_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/privateCloudResellerEnterprise',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_private_cloud_reseller_enterprise_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/privateCloudResellerEnterprise/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_private_cloud_reseller_enterprise_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/privateCloudResellerEnterprise/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_private_cloud_reseller_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/privateCloudReseller',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_private_cloud_reseller_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/privateCloudReseller/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_private_cloud_reseller_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/privateCloudReseller/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_private_cloud_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/privateCloud/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_private_cloud_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/privateCloud/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_sharepoint_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/sharepoint',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_sharepoint_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/sharepoint/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_sharepoint_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/sharepoint/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_sms_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/sms',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_sms_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/sms/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_sms_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/sms/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_snc_network_services_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/sncNetworkServices',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_snc_network_services_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/sncNetworkServices/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_snc_network_services_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/sncNetworkServices/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_ssl_gateway_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/sslGateway',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_ssl_gateway_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/sslGateway/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_ssl_gateway_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/sslGateway/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_vcda_migration_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/vcdaMigration',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vcda_migration_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/vcdaMigration/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vdi_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/vdi',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vdi_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/vdi/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vdi_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/vdi/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_vmware_cloud_director_backup_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/vmwareCloudDirectorBackup',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vmware_cloud_director_backup_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/vmwareCloudDirectorBackup/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vmware_cloud_director_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/vmwareCloudDirector',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vmware_cloud_director_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/vmwareCloudDirector/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vmware_cloud_director_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/vmwareCloudDirector/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_vps_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/vps',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vps_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/vps/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vps_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/vps/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_vrack_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/vrack',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vrack_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/vrack/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_vrack_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/vrack/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def cart_service_option_web_hosting_get
        @connection.call(
          :GET,
          '/order/cartServiceOption/webHosting',
          type: nil,
          auth: []
        )
      end

      def cart_service_option_web_hosting_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/cartServiceOption/webHosting/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_service_option_web_hosting_service_name_post(service_name:, order_cart_service_option_baremetal_servers_service_name_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_cart_service_option_baremetal_servers_service_name_post_request is required' if order_cart_service_option_baremetal_servers_service_name_post_request.nil?

        @connection.call(
          :POST,
          '/order/cartServiceOption/webHosting/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_cart_service_option_baremetal_servers_service_name_post_request
        )
      end

      def catalog_formatted_bring_your_own_ip_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/bringYourOwnIp',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_cloud_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/cloud',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_dedicated_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/dedicated',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_discover_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/discover',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_get
        @connection.call(
          :GET,
          '/order/catalog/formatted',
          type: nil,
          auth: []
        )
      end

      def catalog_formatted_ip_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/ip',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_license_hycu_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/licenseHycu',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_license_plesk_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/licensePlesk',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_license_sql_server_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/licenseSqlServer',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_license_windows_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/licenseWindows',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_licensec_panel_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/licensecPanel',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_logs_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/logs',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_private_cloud_cdi_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/privateCloudCDI',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_private_cloud_dc_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/privateCloudDC',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_private_cloud_enterprise_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/privateCloudEnterprise',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_private_cloud_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/privateCloud',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_private_cloud_reseller_enterprise_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/privateCloudResellerEnterprise',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_private_cloud_reseller_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/privateCloudReseller',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_private_cloud_sddc_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/privateCloudSDDC',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_reseller_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/reseller',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_formatted_vps_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/formatted/vps',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_private_domain_reseller_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/private/domainReseller',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_private_private_cloud_get(catalog_name:, ovh_subsidiary:)
        raise ArgumentError, 'catalog_name is required' if catalog_name.nil?
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/private/privateCloud',
          type: nil,
          auth: [],
          query: { 'catalogName' => catalog_name, 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_advisory_services_hosting_web_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/advisoryServicesHostingWeb',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_advisory_services_public_cloud_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/advisoryServicesPublicCloud',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_advisory_services_telecom_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/advisoryServicesTelecom',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_backup_services_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/backupServices',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_baremetal_servers_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/baremetalServers',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_cephaas_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/cephaas',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_cloud_db_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/cloudDB',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_cloud_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/cloud',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_dns_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/dns',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_domain_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/domain',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_domain_info_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/domain/info',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_domain_plan_get(ovh_subsidiary:, x_pagination_cursor: nil, x_pagination_size: nil, plan_code: nil)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/domain/plan',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary, 'planCode' => plan_code },
          headers: { 'X-Pagination-Cursor' => x_pagination_cursor, 'X-Pagination-Size' => x_pagination_size }
        )
      end

      def catalog_public_eco_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/eco',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_email_domain_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/emailDomain',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_emailpro_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/emailpro',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_exchange_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/exchange',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_ip_loadbalancing_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/ipLoadbalancing',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_license_hycu_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/licenseHycu',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_license_plesk_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/licensePlesk',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_license_sql_server_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/licenseSqlServer',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_license_windows_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/licenseWindows',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_licensec_panel_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/licensecPanel',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_logs_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/logs',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_managed_cms_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/managedCMS',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_nasha_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/nasha',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_netapp_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/netapp',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_nutanix_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/nutanix',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_office365_prepaid_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/office365Prepaid',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_office_prepaid_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/officePrepaid',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_okms_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/okms',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_ovh_cloud_connect_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/ovhCloudConnect',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_packs_professional_services_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/packsProfessionalServices',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_private_cloud_enterprise_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/privateCloudEnterprise',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_private_cloud_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/privateCloud',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_private_sql_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/privateSQL',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_ssl_gateway_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/sslGateway',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_telephony_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/telephony',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_vcda_migration_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/vcdaMigration',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_videocenter_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/videocenter',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_vmware_cloud_director_backup_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/vmwareCloudDirectorBackup',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_vmware_cloud_director_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/vmwareCloudDirector',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_vps_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/vps',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_web_hosting_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/webHosting',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_web_paa_s_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/webPaaS',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def catalog_public_zimbra_get(ovh_subsidiary:)
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/order/catalog/public/zimbra',
          type: nil,
          auth: [],
          query: { 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def email_domain_domain_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/order/email/domain/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_domain_domain_upgrade_duration_get(domain:, duration:, offer:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/order/email/domain/{domain}/upgrade/{duration}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'offer' => offer }
        )
      end

      def email_domain_domain_upgrade_duration_post(domain:, duration:, body:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/email/domain/{domain}/upgrade/{duration}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def email_domain_domain_upgrade_get(domain:, offer:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/order/email/domain/{domain}/upgrade'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s)),
          type: nil,
          auth: [],
          query: { 'offer' => offer }
        )
      end

      def email_domain_get
        @connection.call(
          :GET,
          '/order/email/domain',
          type: nil,
          auth: []
        )
      end

      def email_domain_new_duration_get(domain:, duration:, offer:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/order/email/domain/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'domain' => domain, 'offer' => offer }
        )
      end

      def email_domain_new_duration_post(duration:, order_email_domain_new_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'order_email_domain_new_duration_post_request is required' if order_email_domain_new_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/email/domain/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: order_email_domain_new_duration_post_request
        )
      end

      def email_domain_new_get(domain:, offer:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/order/email/domain/new',
          type: nil,
          auth: [],
          query: { 'domain' => domain, 'offer' => offer }
        )
      end

      def email_exchange_get
        @connection.call(
          :GET,
          '/order/email/exchange',
          type: nil,
          auth: []
        )
      end

      def email_exchange_organization_name_service_exchange_service_account_duration_get(duration:, exchange_service:, licence:, number:, organization_name:, storage_quota: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'licence is required' if licence.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/account/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'licence' => licence, 'number' => number, 'storageQuota' => storage_quota }
        )
      end

      def email_exchange_organization_name_service_exchange_service_account_duration_post(duration:, exchange_service:, organization_name:, order_email_exchange_organization_name_service_exchange_servic_h7c921e0b:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'order_email_exchange_organization_name_service_exchange_servic_h7c921e0b is required' if order_email_exchange_organization_name_service_exchange_servic_h7c921e0b.nil?

        @connection.call(
          :POST,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/account/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: order_email_exchange_organization_name_service_exchange_servic_h7c921e0b
        )
      end

      def email_exchange_organization_name_service_exchange_service_account_get(exchange_service:, licence:, number:, organization_name:, storage_quota: nil)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'licence is required' if licence.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/account'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'licence' => licence, 'number' => number, 'storageQuota' => storage_quota }
        )
      end

      def email_exchange_organization_name_service_exchange_service_account_upgrade_duration_get(duration:, exchange_service:, new_quota:, organization_name:, primary_email_address:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'new_quota is required' if new_quota.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/accountUpgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'newQuota' => new_quota, 'primaryEmailAddress' => primary_email_address }
        )
      end

      def email_exchange_organization_name_service_exchange_service_account_upgrade_duration_post(duration:, exchange_service:, organization_name:, order_email_exchange_organization_name_service_exchange_servic_h3e7069df:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'order_email_exchange_organization_name_service_exchange_servic_h3e7069df is required' if order_email_exchange_organization_name_service_exchange_servic_h3e7069df.nil?

        @connection.call(
          :POST,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/accountUpgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: order_email_exchange_organization_name_service_exchange_servic_h3e7069df
        )
      end

      def email_exchange_organization_name_service_exchange_service_account_upgrade_get(exchange_service:, new_quota:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'new_quota is required' if new_quota.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/accountUpgrade'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'newQuota' => new_quota, 'primaryEmailAddress' => primary_email_address }
        )
      end

      def email_exchange_organization_name_service_exchange_service_disk_space_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/diskSpace'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_exchange_organization_name_service_exchange_service_disk_space_post(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/diskSpace'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_exchange_organization_name_service_exchange_service_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_exchange_organization_name_service_exchange_service_outlook_duration_get(duration:, exchange_service:, licence:, organization_name:, primary_email_address:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'licence is required' if licence.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/outlook/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'licence' => licence, 'primaryEmailAddress' => primary_email_address }
        )
      end

      def email_exchange_organization_name_service_exchange_service_outlook_duration_post(duration:, exchange_service:, organization_name:, order_email_exchange_organization_name_service_exchange_servic_h5e44d093:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'order_email_exchange_organization_name_service_exchange_servic_h5e44d093 is required' if order_email_exchange_organization_name_service_exchange_servic_h5e44d093.nil?

        @connection.call(
          :POST,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/outlook/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          body: order_email_exchange_organization_name_service_exchange_servic_h5e44d093
        )
      end

      def email_exchange_organization_name_service_exchange_service_outlook_get(exchange_service:, licence:, organization_name:, primary_email_address:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'licence is required' if licence.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?
        raise ArgumentError, 'primary_email_address is required' if primary_email_address.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/outlook'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: [],
          query: { 'licence' => licence, 'primaryEmailAddress' => primary_email_address }
        )
      end

      def email_exchange_organization_name_service_exchange_service_upgrade_get(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/upgrade'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_exchange_organization_name_service_exchange_service_upgrade_post(exchange_service:, organization_name:)
        raise ArgumentError, 'exchange_service is required' if exchange_service.nil?
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :POST,
          '/order/email/exchange/{organizationName}/service/{exchangeService}/upgrade'
            .gsub('{exchangeService}', ERB::Util.url_encode(exchange_service.to_s))
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_exchange_organization_name_service_get(organization_name:)
        raise ArgumentError, 'organization_name is required' if organization_name.nil?

        @connection.call(
          :GET,
          '/order/email/exchange/{organizationName}/service'
            .gsub('{organizationName}', ERB::Util.url_encode(organization_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_pro_get
        @connection.call(
          :GET,
          '/order/email/pro',
          type: nil,
          auth: []
        )
      end

      def email_pro_service_account_duration_get(duration:, number:, service:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/order/email/pro/{service}/account/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          query: { 'number' => number }
        )
      end

      def email_pro_service_account_duration_post(duration:, service:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service is required' if service.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/email/pro/{service}/account/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def email_pro_service_account_get(number:, service:)
        raise ArgumentError, 'number is required' if number.nil?
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/order/email/pro/{service}/account'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: [],
          query: { 'number' => number }
        )
      end

      def email_pro_service_get(service:)
        raise ArgumentError, 'service is required' if service.nil?

        @connection.call(
          :GET,
          '/order/email/pro/{service}'
            .gsub('{service}', ERB::Util.url_encode(service.to_s)),
          type: nil,
          auth: []
        )
      end

      def hosting_web_get
        @connection.call(
          :GET,
          '/order/hosting/web',
          type: nil,
          auth: []
        )
      end

      def hosting_web_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/hosting/web/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hosting_web_service_name_upgrade_duration_get(duration:, offer:, service_name:, start_time: nil, waive_retractation_period: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'offer is required' if offer.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/hosting/web/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'offer' => offer, 'startTime' => start_time, 'waiveRetractationPeriod' => waive_retractation_period }
        )
      end

      def hosting_web_service_name_upgrade_duration_post(duration:, service_name:, order_hosting_web_service_name_upgrade_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_hosting_web_service_name_upgrade_duration_post_request is required' if order_hosting_web_service_name_upgrade_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/hosting/web/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_hosting_web_service_name_upgrade_duration_post_request
        )
      end

      def hosting_web_service_name_upgrade_get(offer:, service_name:, start_time: nil, waive_retractation_period: nil)
        raise ArgumentError, 'offer is required' if offer.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/hosting/web/{serviceName}/upgrade'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'offer' => offer, 'startTime' => start_time, 'waiveRetractationPeriod' => waive_retractation_period }
        )
      end

      def saas_csp2_new_duration_get(duration:, gift_code: nil, office_business_quantity: nil, office_pro_plus_quantity: nil)
        raise ArgumentError, 'duration is required' if duration.nil?

        @connection.call(
          :GET,
          '/order/saas/csp2/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'giftCode' => gift_code, 'officeBusinessQuantity' => office_business_quantity, 'officeProPlusQuantity' => office_pro_plus_quantity }
        )
      end

      def saas_csp2_new_duration_post(duration:, order_license_office_new_duration_post_request: nil)
        raise ArgumentError, 'duration is required' if duration.nil?

        @connection.call(
          :POST,
          '/order/saas/csp2/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: order_license_office_new_duration_post_request
        )
      end

      def saas_csp2_new_get(gift_code: nil, office_business_quantity: nil, office_pro_plus_quantity: nil)
        @connection.call(
          :GET,
          '/order/saas/csp2/new',
          type: nil,
          auth: [],
          query: { 'giftCode' => gift_code, 'officeBusinessQuantity' => office_business_quantity, 'officeProPlusQuantity' => office_pro_plus_quantity }
        )
      end
    end
  end
end
