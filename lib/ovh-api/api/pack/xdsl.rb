# frozen_string_literal: true

module Ovh::Api
  module Api
    class Pack::Xdsl
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/pack/xdsl',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def pack_name_address_move_move_offer_post(pack_name:, pack_xdsl_pack_name_address_move_move_offer_post_request:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_address_move_move_offer_post_request is required' if pack_xdsl_pack_name_address_move_move_offer_post_request.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/addressMove/moveOffer'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_address_move_move_offer_post_request
        )
      end

      def pack_name_address_move_offers_post(pack_name:, body:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/addressMove/offers'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def pack_name_address_move_services_to_delete_unpack_terms_post(pack_name:, pack_xdsl_pack_name_address_move_services_to_delete_unpack_ter_hf6fc1f68:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_address_move_services_to_delete_unpack_ter_hf6fc1f68 is required' if pack_xdsl_pack_name_address_move_services_to_delete_unpack_ter_hf6fc1f68.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/addressMove/servicesToDeleteUnpackTerms'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_address_move_services_to_delete_unpack_ter_hf6fc1f68
        )
      end

      def pack_name_can_cancel_resiliation_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/canCancelResiliation'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_cancel_resiliation_post(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/cancelResiliation'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_change_contact_post(pack_name:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/changeContact'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def pack_name_contact_owner_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/contactOwner'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_domain_options_tlds_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/domain/options/tlds'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_domain_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/domain/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_domain_services_post(pack_name:, pack_xdsl_pack_name_domain_services_post_request:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_domain_services_post_request is required' if pack_xdsl_pack_name_domain_services_post_request.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/domain/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_domain_services_post_request
        )
      end

      def pack_name_email_pro_options_domains_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/emailPro/options/domains'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_email_pro_options_is_email_available_get(email:, pack_name:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/emailPro/options/isEmailAvailable'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          query: { 'email' => email }
        )
      end

      def pack_name_email_pro_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/emailPro/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_email_pro_services_post(pack_name:, pack_xdsl_pack_name_email_pro_services_post_request:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_email_pro_services_post_request is required' if pack_xdsl_pack_name_email_pro_services_post_request.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/emailPro/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_email_pro_services_post_request
        )
      end

      def pack_name_exchange_account_services_domain_get(domain:, pack_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/exchangeAccount/services/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_exchange_account_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/exchangeAccount/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_exchange_individual_options_domains_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/exchangeIndividual/options/domains'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_exchange_individual_options_is_email_available_get(email:, pack_name:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/exchangeIndividual/options/isEmailAvailable'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          query: { 'email' => email }
        )
      end

      def pack_name_exchange_organization_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/exchangeOrganization/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_hosted_email_options_domains_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/hostedEmail/options/domains'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_hosted_email_services_domain_account_get(domain:, pack_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/hostedEmail/services/{domain}/account'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_hosted_email_services_domain_change_password_post(domain:, pack_name:, body:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/hostedEmail/services/{domain}/changePassword'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def pack_name_hosted_email_services_domain_configuration_get(domain:, pack_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/hostedEmail/services/{domain}/configuration'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_hosted_email_services_domain_delete(domain:, pack_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :DELETE,
          '/pack/xdsl/{packName}/hostedEmail/services/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_hosted_email_services_domain_get(domain:, pack_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/hostedEmail/services/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_hosted_email_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/hostedEmail/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_hosted_email_services_post(pack_name:, pack_xdsl_pack_name_email_pro_services_post_request:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_email_pro_services_post_request is required' if pack_xdsl_pack_name_email_pro_services_post_request.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/hostedEmail/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_email_pro_services_post_request
        )
      end

      def pack_name_migration_migrate_post(pack_name:, pack_xdsl_pack_name_migration_migrate_post_request:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_migration_migrate_post_request is required' if pack_xdsl_pack_name_migration_migrate_post_request.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/migration/migrate'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_migration_migrate_post_request
        )
      end

      def pack_name_migration_offers_post(pack_name:, body: nil)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/migration/offers'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def pack_name_migration_services_to_delete_unpack_terms_post(pack_name:, pack_xdsl_pack_name_migration_services_to_delete_unpack_terms_ph48bc4df1:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_migration_services_to_delete_unpack_terms_ph48bc4df1 is required' if pack_xdsl_pack_name_migration_services_to_delete_unpack_terms_ph48bc4df1.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/migration/servicesToDeleteUnpackTerms'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_migration_services_to_delete_unpack_terms_ph48bc4df1
        )
      end

      def pack_name_order_follow_up_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/orderFollowUp'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_promotion_code_capabilities_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/promotionCode/capabilities'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_promotion_code_generate_post(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/promotionCode/generate'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_put(pack_name:, pack_xdsl_pack_adsl:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_adsl is required' if pack_xdsl_pack_adsl.nil?

        @connection.call(
          :PUT,
          '/pack/xdsl/{packName}'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_adsl
        )
      end

      def pack_name_resiliate_post(pack_name:, pack_xdsl_pack_name_resiliate_post_request:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_resiliate_post_request is required' if pack_xdsl_pack_name_resiliate_post_request.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/resiliate'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_resiliate_post_request
        )
      end

      def pack_name_resiliation_follow_up_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/resiliationFollowUp'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_resiliation_terms_get(pack_name:, resiliation_date: nil)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/resiliationTerms'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          query: { 'resiliationDate' => resiliation_date }
        )
      end

      def pack_name_service_infos_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/serviceInfos'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_service_infos_put(pack_name:, services_service:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/pack/xdsl/{packName}/serviceInfos'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def pack_name_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_shipping_addresses_get(context:, pack_name:)
        raise ArgumentError, 'context is required' if context.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/shippingAddresses'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          query: { 'context' => context }
        )
      end

      def pack_name_sub_services_domain_get(domain:, pack_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/subServices/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_sub_services_domain_keep_service_terms_get(domain:, pack_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/subServices/{domain}/keepServiceTerms'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_sub_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/subServices'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_tasks_get(pack_name:, function: nil, status: nil)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/tasks'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status }
        )
      end

      def pack_name_tasks_id_get(id:, pack_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/tasks/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_voip_billing_account_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/voipBillingAccount/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_voip_ecofax_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/voipEcofax/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_voip_ecofax_services_post(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/voipEcofax/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_voip_line_options_custom_shipping_address_post(pack_name:, pack_xdsl_pack_name_voip_line_options_custom_shipping_address_ph5b5f455f:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_voip_line_options_custom_shipping_address_ph5b5f455f is required' if pack_xdsl_pack_name_voip_line_options_custom_shipping_address_ph5b5f455f.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/voipLine/options/customShippingAddress'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_voip_line_options_custom_shipping_address_ph5b5f455f
        )
      end

      def pack_name_voip_line_options_hardwares_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/voipLine/options/hardwares'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_voip_line_options_shipping_addresses_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/voipLine/options/shippingAddresses'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_voip_line_services_domain_get(domain:, pack_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/voipLine/services/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_voip_line_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/voipLine/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pack_name_voip_line_services_post(pack_name:, pack_xdsl_pack_name_voip_line_services_post_request:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?
        raise ArgumentError, 'pack_xdsl_pack_name_voip_line_services_post_request is required' if pack_xdsl_pack_name_voip_line_services_post_request.nil?

        @connection.call(
          :POST,
          '/pack/xdsl/{packName}/voipLine/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: [],
          body: pack_xdsl_pack_name_voip_line_services_post_request
        )
      end

      def pack_name_xdsl_access_services_get(pack_name:)
        raise ArgumentError, 'pack_name is required' if pack_name.nil?

        @connection.call(
          :GET,
          '/pack/xdsl/{packName}/xdslAccess/services'
            .gsub('{packName}', ERB::Util.url_encode(pack_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
