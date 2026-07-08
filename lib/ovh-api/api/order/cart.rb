# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Cart
      def initialize(connection)
        @connection = connection
      end

      def cart_id_advisory_services_hosting_web_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/advisoryServicesHostingWeb'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_advisory_services_hosting_web_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/advisoryServicesHostingWeb/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_advisory_services_hosting_web_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/advisoryServicesHostingWeb/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_advisory_services_hosting_web_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/advisoryServicesHostingWeb'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_advisory_services_public_cloud_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/advisoryServicesPublicCloud'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_advisory_services_public_cloud_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/advisoryServicesPublicCloud/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_advisory_services_public_cloud_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/advisoryServicesPublicCloud/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_advisory_services_public_cloud_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/advisoryServicesPublicCloud'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_advisory_services_telecom_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/advisoryServicesTelecom'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_advisory_services_telecom_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/advisoryServicesTelecom/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_advisory_services_telecom_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/advisoryServicesTelecom/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_advisory_services_telecom_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/advisoryServicesTelecom'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_analytics_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/analytics'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_analytics_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/analytics/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_analytics_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/analytics/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_analytics_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/analytics'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_assign_post(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/assign'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_backup_services_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/backupServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_backup_services_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/backupServices/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_backup_services_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/backupServices/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_backup_services_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/backupServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_baremetal_servers_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/baremetalServers'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_baremetal_servers_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/baremetalServers/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_baremetal_servers_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/baremetalServers/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_baremetal_servers_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/baremetalServers'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_bring_your_own_ip_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/bringYourOwnIp'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_bring_your_own_ip_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/bringYourOwnIp'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_cdn_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cdn'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_cdn_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cdn/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_cdn_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cdn/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_cdn_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cdn'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_cephaas_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cephaas'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_cephaas_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cephaas/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_cephaas_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cephaas/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_cephaas_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cephaas'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_checkout_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/checkout'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_checkout_post(cart_id:, order_cart_checkout:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_checkout is required' if order_cart_checkout.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/checkout'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_checkout
        )
      end

      def cart_id_cloud_db_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cloudDB'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_cloud_db_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cloudDB'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_cloud_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cloud'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_cloud_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cloud/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_cloud_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cloud/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_cloud_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cloud'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_cloudweb_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cloudweb'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_cloudweb_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/cloudweb/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_cloudweb_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cloudweb/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_cloudweb_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/cloudweb'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_coupon_delete(cart_id:, coupon:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'coupon is required' if coupon.nil?

        @connection.call(
          :DELETE,
          '/order/cart/{cartId}/coupon'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'coupon' => coupon }
        )
      end

      def cart_id_coupon_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/coupon'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_coupon_post(cart_id:, order_cart_coupon_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_coupon_creation is required' if order_cart_coupon_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/coupon'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_coupon_creation
        )
      end

      def cart_id_csp2_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/csp2'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_csp2_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/csp2/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_csp2_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/csp2/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_csp2_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/csp2'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dbaas_timeseries_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dbaasTimeseries'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_dbaas_timeseries_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dbaasTimeseries'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dedicated_cloud_get(cart_id:, family: nil, plan_code: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedCloud'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'family' => family, 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_cloud_options_get(cart_id:, plan_code:, family: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedCloud/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'family' => family, 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_cloud_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedCloud/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_dedicated_cloud_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedCloud'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dedicated_direct_sales_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedDirectSales'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_dedicated_direct_sales_options_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedDirectSales/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_dedicated_direct_sales_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedDirectSales/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_dedicated_direct_sales_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedDirectSales'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dedicated_get(cart_id:, family: nil, plan_code: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicated'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'family' => family, 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_labs_get(cart_id:, plan_code: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedLabs'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_labs_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedLabs/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_labs_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedLabs/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_dedicated_labs_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedLabs'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dedicated_legacy_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedLegacy'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_dedicated_legacy_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedLegacy/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_legacy_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedLegacy/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_dedicated_legacy_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedLegacy'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dedicated_options_get(cart_id:, plan_code:, family: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicated/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'family' => family, 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicated/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_dedicated_pci_vps_get(cart_id:, family: nil, plan_code: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedPciVps'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'family' => family, 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_pci_vps_options_get(cart_id:, plan_code:, family: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedPciVps/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'family' => family, 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_pci_vps_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedPciVps/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_dedicated_pci_vps_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedPciVps'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dedicated_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicated'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dedicated_reseller_get(cart_id:, family: nil, plan_code: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'family' => family, 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_reseller_options_get(cart_id:, plan_code:, family: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dedicatedReseller/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'family' => family, 'planCode' => plan_code }
        )
      end

      def cart_id_dedicated_reseller_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedReseller/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_dedicated_reseller_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dedicatedReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_delete(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :DELETE,
          '/order/cart/{cartId}'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_deskaas_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/deskaas'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_deskaas_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/deskaas'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_discover_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/discover'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_discover_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/discover/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_discover_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/discover/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_discover_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/discover'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_dns_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dns'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_dns_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/dns/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_dns_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dns/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_dns_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/dns'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_domain_get(cart_id:, domain:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/domain'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end

      def cart_id_domain_options_get(cart_id:, domain:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/domain/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end

      def cart_id_domain_options_post(cart_id:, order_cart_generic_domain_options_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_domain_options_creation is required' if order_cart_generic_domain_options_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/domain/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_domain_options_creation
        )
      end

      def cart_id_domain_packs_get(cart_id:, domain:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/domainPacks'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end

      def cart_id_domain_packs_post(cart_id:, order_cart_domain_packs_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_domain_packs_creation is required' if order_cart_domain_packs_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/domainPacks'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_domain_packs_creation
        )
      end

      def cart_id_domain_post(cart_id:, order_cart_generic_domain_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_domain_creation is required' if order_cart_generic_domain_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/domain'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_domain_creation
        )
      end

      def cart_id_domain_restore_get(cart_id:, domain:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/domainRestore'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end

      def cart_id_eco_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/eco'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_eco_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/eco/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_eco_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/eco/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_eco_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/eco'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_email_domain_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/emailDomain'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_email_domain_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/emailDomain'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_emailpro_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/emailpro'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_emailpro_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/emailpro/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_emailpro_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/emailpro/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_emailpro_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/emailpro'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_exchange_enterprise_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/exchangeEnterprise'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_exchange_enterprise_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/exchangeEnterprise/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_exchange_enterprise_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/exchangeEnterprise/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_exchange_enterprise_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/exchangeEnterprise'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_exchange_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/exchange'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_exchange_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/exchange/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_exchange_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/exchange/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_exchange_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/exchange'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_ip_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ip'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_ip_loadbalancing_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ipLoadbalancing'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_ip_loadbalancing_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ipLoadbalancing/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_ip_loadbalancing_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ipLoadbalancing/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_ip_loadbalancing_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ipLoadbalancing'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_ip_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ip/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_ip_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ip/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_ip_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ip'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_ip_reseller_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ipReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_ip_reseller_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ipReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_isp_public_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ispPublic'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_isp_public_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ispPublic/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_isp_public_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ispPublic/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_isp_public_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ispPublic'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_isp_reseller_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ispReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_isp_reseller_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ispReseller/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_isp_reseller_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ispReseller/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_isp_reseller_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ispReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_item_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/item'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_item_item_id_configuration_configuration_id_delete(cart_id:, configuration_id:, item_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'configuration_id is required' if configuration_id.nil?
        raise ArgumentError, 'item_id is required' if item_id.nil?

        @connection.call(
          :DELETE,
          '/order/cart/{cartId}/item/{itemId}/configuration/{configurationId}'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s))
            .gsub('{configurationId}', ERB::Util.url_encode(configuration_id.to_s))
            .gsub('{itemId}', ERB::Util.url_encode(item_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_item_item_id_configuration_configuration_id_get(cart_id:, configuration_id:, item_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'configuration_id is required' if configuration_id.nil?
        raise ArgumentError, 'item_id is required' if item_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/item/{itemId}/configuration/{configurationId}'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s))
            .gsub('{configurationId}', ERB::Util.url_encode(configuration_id.to_s))
            .gsub('{itemId}', ERB::Util.url_encode(item_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_item_item_id_configuration_get(cart_id:, item_id:, label: nil)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'item_id is required' if item_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/item/{itemId}/configuration'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s))
            .gsub('{itemId}', ERB::Util.url_encode(item_id.to_s)),
          type: nil,
          auth: [],
          query: { 'label' => label }
        )
      end

      def cart_id_item_item_id_configuration_post(cart_id:, item_id:, order_cart_item_configuration_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'item_id is required' if item_id.nil?
        raise ArgumentError, 'order_cart_item_configuration_creation is required' if order_cart_item_configuration_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/item/{itemId}/configuration'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s))
            .gsub('{itemId}', ERB::Util.url_encode(item_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_item_configuration_creation
        )
      end

      def cart_id_item_item_id_delete(cart_id:, item_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'item_id is required' if item_id.nil?

        @connection.call(
          :DELETE,
          '/order/cart/{cartId}/item/{itemId}'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s))
            .gsub('{itemId}', ERB::Util.url_encode(item_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_item_item_id_get(cart_id:, item_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'item_id is required' if item_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/item/{itemId}'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s))
            .gsub('{itemId}', ERB::Util.url_encode(item_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_item_item_id_put(cart_id:, item_id:, order_cart_item_update:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'item_id is required' if item_id.nil?
        raise ArgumentError, 'order_cart_item_update is required' if order_cart_item_update.nil?

        @connection.call(
          :PUT,
          '/order/cart/{cartId}/item/{itemId}'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s))
            .gsub('{itemId}', ERB::Util.url_encode(item_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_item_update
        )
      end

      def cart_id_item_item_id_required_configuration_get(cart_id:, item_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'item_id is required' if item_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/item/{itemId}/requiredConfiguration'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s))
            .gsub('{itemId}', ERB::Util.url_encode(item_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_kubernetes_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/kubernetes'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_kubernetes_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/kubernetes/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_kubernetes_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/kubernetes/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_kubernetes_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/kubernetes'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_license_hycu_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/licenseHycu'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_license_hycu_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/licenseHycu'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_license_plesk_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/licensePlesk'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_license_plesk_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/licensePlesk/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_license_plesk_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/licensePlesk/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_license_plesk_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/licensePlesk'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_license_sql_server_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/licenseSqlServer'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_license_sql_server_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/licenseSqlServer'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_license_windows_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/licenseWindows'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_license_windows_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/licenseWindows'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_licensec_panel_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/licensecPanel'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_licensec_panel_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/licensecPanel'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_logs_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/logs'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_logs_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/logs/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_logs_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/logs/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_logs_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/logs'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_managed_cms_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/managedCMS'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_managed_cms_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/managedCMS/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_managed_cms_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/managedCMS/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_managed_cms_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/managedCMS'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_managed_services_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/managedServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_managed_services_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/managedServices/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_managed_services_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/managedServices/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_managed_services_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/managedServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_metrics_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/metrics'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_metrics_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/metrics/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_metrics_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/metrics/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_metrics_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/metrics'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_microsoft_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/microsoft'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_microsoft_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/microsoft/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_microsoft_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/microsoft/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_microsoft_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/microsoft'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_nasha_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/nasha'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_nasha_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/nasha/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_nasha_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/nasha/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_nasha_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/nasha'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_netapp_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/netapp'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_netapp_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/netapp/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_netapp_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/netapp/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_netapp_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/netapp'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_nutanix_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/nutanix'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_nutanix_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/nutanix/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_nutanix_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/nutanix/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_nutanix_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/nutanix'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_office365_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/office365'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_office365_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/office365/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_office365_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/office365/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_office365_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/office365'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_office365_prepaid_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/office365Prepaid'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_office365_prepaid_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/office365Prepaid/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_office365_prepaid_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/office365Prepaid/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_office365_prepaid_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/office365Prepaid'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_office_prepaid_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/officePrepaid'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_office_prepaid_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/officePrepaid/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_office_prepaid_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/officePrepaid/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_office_prepaid_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/officePrepaid'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_okms_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/okms'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_okms_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/okms'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_otb_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/otb'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_otb_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/otb/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_otb_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/otb/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_otb_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/otb'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_otb_reseller_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/otbReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_otb_reseller_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/otbReseller/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_otb_reseller_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/otbReseller/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_otb_reseller_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/otbReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_ovh_cloud_connect_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/ovhCloudConnect'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_ovh_cloud_connect_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/ovhCloudConnect'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_paasmon_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/paasmon'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_paasmon_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/paasmon'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_packs_professional_services_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/packsProfessionalServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_packs_professional_services_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/packsProfessionalServices/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_packs_professional_services_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/packsProfessionalServices/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_packs_professional_services_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/packsProfessionalServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_power_hosting_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/powerHosting'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_power_hosting_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/powerHosting'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_private_cloud_cdi_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudCDI'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_private_cloud_cdi_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudCDI/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_private_cloud_cdi_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudCDI/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_private_cloud_cdi_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudCDI'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_private_cloud_dc_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudDC'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_private_cloud_dc_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudDC/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_private_cloud_dc_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudDC/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_private_cloud_dc_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudDC'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_private_cloud_enterprise_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudEnterprise'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_private_cloud_enterprise_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudEnterprise/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_private_cloud_enterprise_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudEnterprise/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_private_cloud_enterprise_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudEnterprise'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_private_cloud_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloud'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_private_cloud_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloud/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_private_cloud_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloud/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_private_cloud_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloud'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_private_cloud_reseller_enterprise_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudResellerEnterprise'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_private_cloud_reseller_enterprise_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudResellerEnterprise/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_private_cloud_reseller_enterprise_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudResellerEnterprise/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_private_cloud_reseller_enterprise_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudResellerEnterprise'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_private_cloud_reseller_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_private_cloud_reseller_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudReseller/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_private_cloud_reseller_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudReseller/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_private_cloud_reseller_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_private_cloud_sddc_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudSDDC'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_private_cloud_sddc_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateCloudSDDC/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_private_cloud_sddc_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudSDDC/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_private_cloud_sddc_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateCloudSDDC'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_private_sql_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/privateSQL'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_private_sql_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/privateSQL'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_put(cart_id:, order_cart_update:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_update is required' if order_cart_update.nil?

        @connection.call(
          :PUT,
          '/order/cart/{cartId}'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_update
        )
      end

      def cart_id_reseller_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/reseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_reseller_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/reseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_sharepoint_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sharepoint'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_sharepoint_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sharepoint/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_sharepoint_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sharepoint/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_sharepoint_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sharepoint'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_sms_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sms'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_sms_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sms'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_snc_network_services_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sncNetworkServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_snc_network_services_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sncNetworkServices/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_snc_network_services_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sncNetworkServices/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_snc_network_services_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sncNetworkServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_ssl_comodo_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sslComodo'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_ssl_comodo_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sslComodo/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_ssl_comodo_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sslComodo/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_ssl_comodo_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sslComodo'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_ssl_gateway_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sslGateway'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_ssl_gateway_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/sslGateway/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_ssl_gateway_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sslGateway/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_ssl_gateway_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/sslGateway'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_summary_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/summary'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_support_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/support'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_support_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/support'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_telephony_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/telephony'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_telephony_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/telephony/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_telephony_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/telephony/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_telephony_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/telephony'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_vcda_migration_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vcdaMigration'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_vcda_migration_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vcdaMigration/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_vcda_migration_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vcdaMigration/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_vcda_migration_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vcdaMigration'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_vdi_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vdi'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_vdi_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vdi/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_vdi_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vdi/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_vdi_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vdi'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_veeam_enterprise_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/veeamEnterprise'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_veeam_enterprise_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/veeamEnterprise/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_veeam_enterprise_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/veeamEnterprise/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_veeam_enterprise_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/veeamEnterprise'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_veeamcc_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/veeamcc'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_veeamcc_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/veeamcc/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_veeamcc_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/veeamcc/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_veeamcc_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/veeamcc'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_videocenter_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/videocenter'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_videocenter_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/videocenter/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_videocenter_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/videocenter/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_videocenter_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/videocenter'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_vmware_cloud_director_backup_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vmwareCloudDirectorBackup'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_vmware_cloud_director_backup_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vmwareCloudDirectorBackup/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_vmware_cloud_director_backup_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vmwareCloudDirectorBackup/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_vmware_cloud_director_backup_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vmwareCloudDirectorBackup'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_vmware_cloud_director_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vmwareCloudDirector'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_vmware_cloud_director_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vmwareCloudDirector/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_vmware_cloud_director_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vmwareCloudDirector/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_vmware_cloud_director_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vmwareCloudDirector'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_vps_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vps'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_vps_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vps/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_vps_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vps/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_vps_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vps'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_vrack_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vrack'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_vrack_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vrack/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_vrack_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vrack/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_vrack_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vrack'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_vrack_reseller_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vrackReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_vrack_reseller_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vrackReseller'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_vrack_services_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/vrackServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_vrack_services_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/vrackServices'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_web_hosting_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/webHosting'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_web_hosting_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/webHosting/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_web_hosting_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/webHosting/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_web_hosting_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/webHosting'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_xdsl_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/xdsl'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_xdsl_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/xdsl/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_xdsl_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/xdsl/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_xdsl_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/xdsl'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def cart_id_zimbra_get(cart_id:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/zimbra'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def cart_id_zimbra_options_get(cart_id:, plan_code:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'plan_code is required' if plan_code.nil?

        @connection.call(
          :GET,
          '/order/cart/{cartId}/zimbra/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          query: { 'planCode' => plan_code }
        )
      end

      def cart_id_zimbra_options_post(cart_id:, order_cart_generic_option_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_option_creation is required' if order_cart_generic_option_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/zimbra/options'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_option_creation
        )
      end

      def cart_id_zimbra_post(cart_id:, order_cart_generic_product_creation:)
        raise ArgumentError, 'cart_id is required' if cart_id.nil?
        raise ArgumentError, 'order_cart_generic_product_creation is required' if order_cart_generic_product_creation.nil?

        @connection.call(
          :POST,
          '/order/cart/{cartId}/zimbra'
            .gsub('{cartId}', ERB::Util.url_encode(cart_id.to_s)),
          type: nil,
          auth: [],
          body: order_cart_generic_product_creation
        )
      end

      def get(description: nil)
        @connection.call(
          :GET,
          '/order/cart',
          type: nil,
          auth: [],
          query: { 'description' => description }
        )
      end

      def post(order_cart_creation:)
        raise ArgumentError, 'order_cart_creation is required' if order_cart_creation.nil?

        @connection.call(
          :POST,
          '/order/cart',
          type: nil,
          auth: [],
          body: order_cart_creation
        )
      end
    end
  end
end
