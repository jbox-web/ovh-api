# frozen_string_literal: true

module Ovh::Api
  module Api
    class Telephony
      def initialize(connection)
        @connection = connection
      end

      def accessories_get(country:, brand: nil)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/telephony/accessories',
          type: nil,
          auth: [],
          query: { 'brand' => brand, 'country' => country }
        )
      end

      def available_default_sip_domains_get(type:)
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/telephony/availableDefaultSipDomains',
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def billing_account_allowed_credit_threshold_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/allowedCreditThreshold'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_amount_security_deposit_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/amountSecurityDeposit'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_billing_account_site_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/billingAccountSite'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_billing_account_site_post(billing_account:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/billingAccountSite'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def billing_account_can_transfer_security_deposit_post(billing_account:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/canTransferSecurityDeposit'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def billing_account_cancel_termination_post(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/cancelTermination'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_change_contact_post(billing_account:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/changeContact'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def billing_account_delete(billing_account:, reason:, details: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'reason is required' if reason.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'details' => details, 'reason' => reason }
        )
      end

      def billing_account_event_token_delete(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_event_token_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_event_token_post(billing_account:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/eventToken'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def billing_account_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_has_special_numbers_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/hasSpecialNumbers'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_old_phone_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/oldPhone'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_put(billing_account:, telephony_billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'telephony_billing_account is required' if telephony_billing_account.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account
        )
      end

      def billing_account_service_infos_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/serviceInfos'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_service_infos_put(billing_account:, services_service:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/serviceInfos'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def billing_account_softphone_logo_delete(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :DELETE,
          '/telephony/{billingAccount}/softphone/logo'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_softphone_logo_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/softphone/logo'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_softphone_logo_put(billing_account:, telephony_softphone_logo:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'telephony_softphone_logo is required' if telephony_softphone_logo.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/softphone/logo'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: telephony_softphone_logo
        )
      end

      def billing_account_softphone_theme_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/telephony/{billingAccount}/softphone/theme'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_softphone_theme_put(billing_account:, telephony_softphone_theme_input:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'telephony_softphone_theme_input is required' if telephony_softphone_theme_input.nil?

        @connection.call(
          :PUT,
          '/telephony/{billingAccount}/softphone/theme'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: telephony_softphone_theme_input
        )
      end

      def billing_account_transfer_security_deposit_post(billing_account:, telephony_billing_account_transfer_security_deposit_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'telephony_billing_account_transfer_security_deposit_post_request is required' if telephony_billing_account_transfer_security_deposit_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/{billingAccount}/transferSecurityDeposit'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: telephony_billing_account_transfer_security_deposit_post_request
        )
      end

      def current_order_ids_get
        @connection.call(
          :GET,
          '/telephony/currentOrderIds',
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/telephony',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def reseller_panel_generate_password_post
        @connection.call(
          :POST,
          '/telephony/resellerPanel/generatePassword',
          type: nil,
          auth: []
        )
      end

      def reseller_panel_status_get
        @connection.call(
          :GET,
          '/telephony/resellerPanel/status',
          type: nil,
          auth: []
        )
      end

      def search_services_get(axiom:)
        raise ArgumentError, 'axiom is required' if axiom.nil?

        @connection.call(
          :GET,
          '/telephony/searchServices',
          type: nil,
          auth: [],
          query: { 'axiom' => axiom }
        )
      end

      def set_default_sip_domain_post(telephony_set_default_sip_domain_post_request:)
        raise ArgumentError, 'telephony_set_default_sip_domain_post_request is required' if telephony_set_default_sip_domain_post_request.nil?

        @connection.call(
          :POST,
          '/telephony/setDefaultSipDomain',
          type: nil,
          auth: [],
          body: telephony_set_default_sip_domain_post_request
        )
      end

      def softphone_store_links_get
        @connection.call(
          :GET,
          '/telephony/softphone/storeLinks',
          type: nil,
          auth: []
        )
      end

      def softphone_themes_get
        @connection.call(
          :GET,
          '/telephony/softphone/themes',
          type: nil,
          auth: []
        )
      end

      def softphone_themes_theme_id_get(theme_id:)
        raise ArgumentError, 'theme_id is required' if theme_id.nil?

        @connection.call(
          :GET,
          '/telephony/softphone/themes/{themeId}'
            .gsub('{themeId}', ERB::Util.url_encode(theme_id.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
