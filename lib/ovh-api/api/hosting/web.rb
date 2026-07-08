# frozen_string_literal: true

module Ovh::Api
  module Api
    class Hosting::Web
      def initialize(connection)
        @connection = connection
      end

      def attached_domain_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/hosting/web/attachedDomain',
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end

      def available_offer_get(domain:)
        raise ArgumentError, 'domain is required' if domain.nil?

        @connection.call(
          :GET,
          '/hosting/web/availableOffer',
          type: nil,
          auth: [],
          query: { 'domain' => domain }
        )
      end

      def cdn_log_kind_get
        @connection.call(
          :GET,
          '/hosting/web/cdn/log/kind',
          type: nil,
          auth: []
        )
      end

      def cdn_log_kind_name_get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/hosting/web/cdn/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/hosting/web',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def incident_get
        @connection.call(
          :GET,
          '/hosting/web/incident',
          type: nil,
          auth: []
        )
      end

      def local_seo_directories_list_get(country:, offer:)
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/hosting/web/localSeo/directoriesList',
          type: nil,
          auth: [],
          query: { 'country' => country, 'offer' => offer }
        )
      end

      def local_seo_email_availability_get(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/hosting/web/localSeo/emailAvailability',
          type: nil,
          auth: [],
          query: { 'email' => email }
        )
      end

      def local_seo_visibility_check_post(hosting_web_local_seo_visibility_check_post_request:)
        raise ArgumentError, 'hosting_web_local_seo_visibility_check_post_request is required' if hosting_web_local_seo_visibility_check_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/localSeo/visibilityCheck',
          type: nil,
          auth: [],
          body: hosting_web_local_seo_visibility_check_post_request
        )
      end

      def local_seo_visibility_check_result_get(directory:, id:, token:)
        raise ArgumentError, 'directory is required' if directory.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'token is required' if token.nil?

        @connection.call(
          :GET,
          '/hosting/web/localSeo/visibilityCheckResult',
          type: nil,
          auth: [],
          query: { 'directory' => directory, 'id' => id, 'token' => token }
        )
      end

      def module_list_get(active: nil, branch: nil, latest: nil)
        @connection.call(
          :GET,
          '/hosting/web/moduleList',
          type: nil,
          auth: [],
          query: { 'active' => active, 'branch' => branch, 'latest' => latest }
        )
      end

      def module_list_id_get(id:)
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/hosting/web/moduleList/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def offer_capabilities_get(offer:)
        raise ArgumentError, 'offer is required' if offer.nil?

        @connection.call(
          :GET,
          '/hosting/web/offerCapabilities',
          type: nil,
          auth: [],
          query: { 'offer' => offer }
        )
      end

      def service_name_abuse_state_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/abuseState'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_delete(domain:, service_name:, bypass_dns_configuration: nil)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/attachedDomain/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'bypassDNSConfiguration' => bypass_dns_configuration }
        )
      end

      def service_name_attached_domain_domain_dig_status_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/digStatus'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/attachedDomain/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_purge_cache_post(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/purgeCache'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_put(domain:, service_name:, hosting_web_attached_domain:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_attached_domain is required' if hosting_web_attached_domain.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/attachedDomain/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_attached_domain
        )
      end

      def service_name_attached_domain_domain_restart_post(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/restart'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_ssl_delete(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/ssl'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_ssl_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/ssl'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_ssl_post(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/ssl'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_ssl_put(domain:, service_name:, hosting_web_ssl_update_input:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_ssl_update_input is required' if hosting_web_ssl_update_input.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/ssl'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_ssl_update_input
        )
      end

      def service_name_attached_domain_domain_ssl_regenerate_post(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/ssl/regenerate'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_domain_ssl_report_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/attachedDomain/{domain}/ssl/report'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_attached_domain_get(service_name:, domain: nil, path: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/attachedDomain'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'domain' => domain, 'path' => path }
        )
      end

      def service_name_attached_domain_post(service_name:, hosting_web_attached_domain:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_attached_domain is required' if hosting_web_attached_domain.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/attachedDomain'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_attached_domain
        )
      end

      def service_name_available_configurations_get(service_name:, language: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/availableConfigurations'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'language' => language }
        )
      end

      def service_name_boost_history_date_get(date:, service_name:)
        raise ArgumentError, 'date is required' if date.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/boostHistory/{date}'
            .gsub('{date}', ERB::Util.url_encode(date.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_boost_history_get(service_name:, date: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/boostHistory'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'date' => date }
        )
      end

      def service_name_cdn_available_options_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/availableOptions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_domain_domain_name_get(service_name:, domain_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_domain_domain_name_logs_get(service_name:, domain_name:, date: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/logs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: [],
          query: { 'date' => date }
        )
      end

      def service_name_cdn_domain_domain_name_option_get(service_name:, domain_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/option'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_domain_domain_name_option_option_name_delete(service_name:, domain_name:, option_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/option/{optionName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_domain_domain_name_option_option_name_get(service_name:, domain_name:, option_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'option_name is required' if option_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/option/{optionName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_domain_domain_name_option_option_name_put(service_name:, domain_name:, option_name:, cdn_domain_option:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'option_name is required' if option_name.nil?
        raise ArgumentError, 'cdn_domain_option is required' if cdn_domain_option.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/option/{optionName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s))
            .gsub('{optionName}', ERB::Util.url_encode(option_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_domain_option
        )
      end

      def service_name_cdn_domain_domain_name_option_post(service_name:, domain_name:, cdn_domain_add_option:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?
        raise ArgumentError, 'cdn_domain_add_option is required' if cdn_domain_add_option.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/option'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_domain_add_option
        )
      end

      def service_name_cdn_domain_domain_name_purge_post(service_name:, domain_name:, pattern: nil, pattern_type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/purge'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: [],
          query: { 'pattern' => pattern, 'patternType' => pattern_type }
        )
      end

      def service_name_cdn_domain_domain_name_refresh_post(service_name:, domain_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/refresh'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_domain_domain_name_statistics_get(service_name:, domain_name:, period: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'domain_name is required' if domain_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/domain/{domainName}/statistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{domainName}', ERB::Util.url_encode(domain_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_cdn_domain_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/domain'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_log_subscription_get(service_name:, kind: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/log/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_cdn_log_subscription_post(service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/cdn/log/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_cdn_log_subscription_subscription_id_delete(service_name:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/cdn/log/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_log_subscription_subscription_id_get(service_name:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/log/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_log_url_post(service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/cdn/log/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_cdn_operation_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/operation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_operation_id_get(service_name:, id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'id is required' if id.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/operation/{id}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cdn/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cdn_service_infos_update_post(service_name:, service_renew_type:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'service_renew_type is required' if service_renew_type.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/cdn/serviceInfosUpdate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: service_renew_type
        )
      end

      def service_name_cdn_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/cdn/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_change_contact_post(service_name:, services_change_contact:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_change_contact is required' if services_change_contact.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_change_contact
        )
      end

      def service_name_configuration_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/configuration'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_configuration_put(service_name:, hosting_web_configuration:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_configuration is required' if hosting_web_configuration.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/configuration'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_configuration
        )
      end

      def service_name_confirm_termination_post(service_name:, services_confirm_termination:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_confirm_termination is required' if services_confirm_termination.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_confirm_termination
        )
      end

      def service_name_cron_available_language_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cronAvailableLanguage'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cron_get(service_name:, command: nil, description: nil, email: nil, language: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cron'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'command' => command, 'description' => description, 'email' => email, 'language' => language }
        )
      end

      def service_name_cron_id_delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/cron/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cron_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/cron/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cron_id_put(id:, service_name:, hosting_web_cron:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_cron is required' if hosting_web_cron.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/cron/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_cron
        )
      end

      def service_name_cron_post(service_name:, hosting_web_cron:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_cron is required' if hosting_web_cron.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/cron'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_cron
        )
      end

      def service_name_database_available_type_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/databaseAvailableType'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_available_version_get(service_name:, type:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/databaseAvailableVersion'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def service_name_database_creation_capabilities_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/databaseCreationCapabilities'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_get(service_name:, mode: nil, name: nil, server: nil, type: nil, user: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'mode' => mode, 'name' => name, 'server' => server, 'type' => type, 'user' => user }
        )
      end

      def service_name_database_name_capabilities_get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database/{name}/capabilities'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_change_password_post(name:, service_name:, body:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database/{name}/changePassword'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_database_name_copy_get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database/{name}/copy'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_copy_id_delete(id:, name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/database/{name}/copy/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_copy_id_get(id:, name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database/{name}/copy/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_copy_post(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database/{name}/copy'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_copy_restore_post(name:, service_name:, hosting_web_service_name_database_name_copy_restore_post_request:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_database_name_copy_restore_post_request is required' if hosting_web_service_name_database_name_copy_restore_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database/{name}/copyRestore'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_database_name_copy_restore_post_request
        )
      end

      def service_name_database_name_delete(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/database/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_dump_get(name:, service_name:, creation_date_from: nil, creation_date_to: nil, deletion_date_from: nil, deletion_date_to: nil, type: nil)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database/{name}/dump'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDate.from' => creation_date_from, 'creationDate.to' => creation_date_to, 'deletionDate.from' => deletion_date_from, 'deletionDate.to' => deletion_date_to, 'type' => type }
        )
      end

      def service_name_database_name_dump_id_delete(id:, name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/database/{name}/dump/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_dump_id_get(id:, name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database/{name}/dump/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_dump_id_restore_post(id:, name:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database/{name}/dump/{id}/restore'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_dump_post(name:, service_name:, hosting_web_service_name_database_name_dump_post_request:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_database_name_dump_post_request is required' if hosting_web_service_name_database_name_dump_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database/{name}/dump'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_database_name_dump_post_request
        )
      end

      def service_name_database_name_get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_import_post(name:, service_name:, hosting_web_service_name_database_name_import_post_request:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_database_name_import_post_request is required' if hosting_web_service_name_database_name_import_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database/{name}/import'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_database_name_import_post_request
        )
      end

      def service_name_database_name_metrics_token_get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database/{name}/metricsToken'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_database_name_request_post(name:, service_name:, body:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database/{name}/request'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_database_name_restore_post(name:, service_name:, hosting_web_service_name_database_name_dump_post_request:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_database_name_dump_post_request is required' if hosting_web_service_name_database_name_dump_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database/{name}/restore'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_database_name_dump_post_request
        )
      end

      def service_name_database_name_statistics_get(name:, period:, service_name:, type:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/database/{name}/statistics'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end

      def service_name_database_post(service_name:, hosting_web_service_name_database_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_database_post_request is required' if hosting_web_service_name_database_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/database'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_database_post_request
        )
      end

      def service_name_dump_get(service_name:, creation_date_from: nil, creation_date_to: nil, database_name: nil, deletion_date_from: nil, deletion_date_to: nil, orphan: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/dump'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'creationDate.from' => creation_date_from, 'creationDate.to' => creation_date_to, 'databaseName' => database_name, 'deletionDate.from' => deletion_date_from, 'deletionDate.to' => deletion_date_to, 'orphan' => orphan }
        )
      end

      def service_name_dump_id_delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/dump/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_dump_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/dump/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_email_bounces_get(limit:, service_name:)
        raise ArgumentError, 'limit is required' if limit.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/email/bounces'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'limit' => limit }
        )
      end

      def service_name_email_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/email'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_email_option_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/emailOption'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_email_option_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/emailOption/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_email_option_id_service_infos_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/emailOption/{id}/serviceInfos'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_email_option_id_terminate_post(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/emailOption/{id}/terminate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_email_put(service_name:, hosting_web_email:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_email is required' if hosting_web_email.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/email'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_email
        )
      end

      def service_name_email_request_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/email/request'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_email_volumes_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/email/volumes'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_env_var_get(service_name:, type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/envVar'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'type' => type }
        )
      end

      def service_name_env_var_key_delete(key:, service_name:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/envVar/{key}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_env_var_key_get(key:, service_name:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/envVar/{key}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_env_var_key_put(key:, service_name:, hosting_web_env_var:)
        raise ArgumentError, 'key is required' if key.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_env_var is required' if hosting_web_env_var.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/envVar/{key}'
            .gsub('{key}', ERB::Util.url_encode(key.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_env_var
        )
      end

      def service_name_env_var_post(service_name:, hosting_web_env_var_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_env_var_input is required' if hosting_web_env_var_input.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/envVar'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_env_var_input
        )
      end

      def service_name_extra_sql_perso_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/extraSqlPerso'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_extra_sql_perso_id_databases_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/extraSqlPerso/{id}/databases'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_extra_sql_perso_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/extraSqlPerso/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_extra_sql_perso_id_service_infos_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/extraSqlPerso/{id}/serviceInfos'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_extra_sql_perso_id_service_infos_update_post(id:, service_name:, service_renew_type:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'service_renew_type is required' if service_renew_type.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/extraSqlPerso/{id}/serviceInfosUpdate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: service_renew_type
        )
      end

      def service_name_extra_sql_perso_id_terminate_post(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/extraSqlPerso/{id}/terminate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_freedom_get(service_name:, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/freedom'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'status' => status }
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_indy_get(service_name:, login: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/indy'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'login' => login }
        )
      end

      def service_name_indy_login_get(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/indy/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_key_ssh_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/key/ssh'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_key_ssh_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/key/ssh'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_local_seo_account_get(service_name:, email: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/localSeo/account'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'email' => email }
        )
      end

      def service_name_local_seo_account_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/localSeo/account/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_local_seo_account_id_login_post(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/localSeo/account/{id}/login'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_local_seo_email_availability_get(email:, service_name:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/localSeo/emailAvailability'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'email' => email }
        )
      end

      def service_name_local_seo_location_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/localSeo/location'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_local_seo_location_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/localSeo/location/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_local_seo_location_id_service_infos_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/localSeo/location/{id}/serviceInfos'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_local_seo_location_id_service_infos_update_post(id:, service_name:, service_renew_type:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'service_renew_type is required' if service_renew_type.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/localSeo/location/{id}/serviceInfosUpdate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: service_renew_type
        )
      end

      def service_name_local_seo_location_id_terminate_post(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/localSeo/location/{id}/terminate'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_kind_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/log/kind'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_kind_name_get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_subscription_get(service_name:, kind: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/log/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_log_subscription_post(service_name:, dbaas_logs_log_subscription_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_subscription_creation is required' if dbaas_logs_log_subscription_creation.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/log/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_subscription_creation
        )
      end

      def service_name_log_subscription_subscription_id_delete(service_name:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/log/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_subscription_subscription_id_get(service_name:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/log/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_url_post(service_name:, dbaas_logs_log_url_creation:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dbaas_logs_log_url_creation is required' if dbaas_logs_log_url_creation.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/log/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_metrics_token_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/metricsToken'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_module_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/module'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_module_id_delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/module/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_module_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/module/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_module_post(service_name:, hosting_web_service_name_module_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_module_post_request is required' if hosting_web_service_name_module_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/module'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_module_post_request
        )
      end

      def service_name_ovh_config_capabilities_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ovhConfigCapabilities'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ovh_config_get(service_name:, historical: nil, path: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ovhConfig'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'historical' => historical, 'path' => path }
        )
      end

      def service_name_ovh_config_id_change_configuration_post(id:, service_name:, hosting_web_service_name_ovh_config_id_change_configuration_post_request: nil)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/ovhConfig/{id}/changeConfiguration'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_ovh_config_id_change_configuration_post_request
        )
      end

      def service_name_ovh_config_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ovhConfig/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ovh_config_id_rollback_post(id:, service_name:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/ovhConfig/{id}/rollback'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_ovh_config_recommended_values_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ovhConfigRecommendedValues'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ovh_config_refresh_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/ovhConfigRefresh'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_own_logs_get(service_name:, fqdn: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ownLogs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'fqdn' => fqdn }
        )
      end

      def service_name_own_logs_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ownLogs/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_own_logs_id_user_logs_get(id:, service_name:, login: nil)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ownLogs/{id}/userLogs'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'login' => login }
        )
      end

      def service_name_own_logs_id_user_logs_login_change_password_post(id:, login:, service_name:, body:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/ownLogs/{id}/userLogs/{login}/changePassword'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_own_logs_id_user_logs_login_delete(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/ownLogs/{id}/userLogs/{login}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_own_logs_id_user_logs_login_get(id:, login:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ownLogs/{id}/userLogs/{login}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_own_logs_id_user_logs_login_put(id:, login:, service_name:, hosting_web_user_logs:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_user_logs is required' if hosting_web_user_logs.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/ownLogs/{id}/userLogs/{login}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_user_logs
        )
      end

      def service_name_own_logs_id_user_logs_post(id:, service_name:, hosting_web_service_name_own_logs_id_user_logs_post_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_own_logs_id_user_logs_post_request is required' if hosting_web_service_name_own_logs_id_user_logs_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/ownLogs/{id}/userLogs'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_own_logs_id_user_logs_post_request
        )
      end

      def service_name_private_database_creation_capabilities_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/privateDatabaseCreationCapabilities'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_private_databases_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/privateDatabases'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, hosting_web_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service is required' if hosting_web_service.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service
        )
      end

      def service_name_request_boost_post(service_name:, hosting_web_request_boost_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_request_boost_input is required' if hosting_web_request_boost_input.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/requestBoost'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_request_boost_input
        )
      end

      def service_name_request_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/request'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_restore_snapshot_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/restoreSnapshot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_runtime_available_types_get(service_name:, language: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/runtimeAvailableTypes'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'language' => language }
        )
      end

      def service_name_runtime_get(service_name:, name: nil, type: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/runtime'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'name' => name, 'type' => type }
        )
      end

      def service_name_runtime_id_attached_domains_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/runtime/{id}/attachedDomains'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_runtime_id_delete(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/runtime/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_runtime_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/runtime/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_runtime_id_put(id:, service_name:, hosting_web_runtime:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_runtime is required' if hosting_web_runtime.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/runtime/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_runtime
        )
      end

      def service_name_runtime_post(service_name:, hosting_web_service_name_runtime_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/runtime'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_runtime_post_request
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_put(service_name:, services_service:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'services_service is required' if services_service.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_ssl_delete(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/ssl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ssl_domains_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ssl/domains'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ssl_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ssl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ssl_post(service_name:, hosting_web_ssl_input:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_ssl_input is required' if hosting_web_ssl_input.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/ssl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_ssl_input
        )
      end

      def service_name_ssl_regenerate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/ssl/regenerate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ssl_report_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/ssl/report'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_statistics_get(period:, service_name:, type:)
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/statistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end

      def service_name_tasks_get(service_name:, function: nil, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/tasks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status }
        )
      end

      def service_name_tasks_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/tasks/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_token_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/token'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_unblock_tcp_out_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/unblockTCPOut'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_get(service_name:, home: nil, login: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'home' => home, 'login' => login }
        )
      end

      def service_name_user_login_change_password_post(login:, service_name:, body:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/user/{login}/changePassword'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_user_login_delete(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/user/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_login_get(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/user/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_login_put(login:, service_name:, hosting_web_user:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_user is required' if hosting_web_user.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/user/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_user
        )
      end

      def service_name_user_logs_get(service_name:, login: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/userLogs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'login' => login }
        )
      end

      def service_name_user_logs_login_change_password_post(login:, service_name:, body:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/userLogs/{login}/changePassword'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_user_logs_login_delete(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/userLogs/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_logs_login_get(login:, service_name:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/userLogs/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_user_logs_login_put(login:, service_name:, hosting_web_user_logs:)
        raise ArgumentError, 'login is required' if login.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_user_logs is required' if hosting_web_user_logs.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/userLogs/{login}'
            .gsub('{login}', ERB::Util.url_encode(login.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_user_logs
        )
      end

      def service_name_user_logs_post(service_name:, hosting_web_service_name_own_logs_id_user_logs_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_own_logs_id_user_logs_post_request is required' if hosting_web_service_name_own_logs_id_user_logs_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/userLogs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_own_logs_id_user_logs_post_request
        )
      end

      def service_name_user_logs_token_get(service_name:, attached_domain: nil, remote_check: nil, ttl: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/userLogsToken'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'attachedDomain' => attached_domain, 'remoteCheck' => remote_check, 'ttl' => ttl }
        )
      end

      def service_name_user_post(service_name:, hosting_web_service_name_user_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_service_name_user_post_request is required' if hosting_web_service_name_user_post_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/user'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_service_name_user_post_request
        )
      end

      def service_name_vcs_webhooks_get(path:, service_name:, vcs:)
        raise ArgumentError, 'path is required' if path.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'vcs is required' if vcs.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/vcs/webhooks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'path' => path, 'vcs' => vcs }
        )
      end

      def service_name_website_creation_capabilities_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/websiteCreationCapabilities'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_website_get(service_name:, path: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/website'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'path' => path }
        )
      end

      def service_name_website_id_delete(delete_files:, id:, service_name:)
        raise ArgumentError, 'delete_files is required' if delete_files.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/hosting/web/{serviceName}/website/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'deleteFiles' => delete_files }
        )
      end

      def service_name_website_id_deploy_post(id:, service_name:, hosting_web_website_deployment_request:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_website_deployment_request is required' if hosting_web_website_deployment_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/website/{id}/deploy'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_website_deployment_request
        )
      end

      def service_name_website_id_deployment_deployment_id_get(deployment_id:, id:, service_name:)
        raise ArgumentError, 'deployment_id is required' if deployment_id.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/website/{id}/deployment/{deploymentId}'
            .gsub('{deploymentId}', ERB::Util.url_encode(deployment_id.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_website_id_deployment_deployment_id_logs_get(deployment_id:, id:, service_name:)
        raise ArgumentError, 'deployment_id is required' if deployment_id.nil?
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/website/{id}/deployment/{deploymentId}/logs'
            .gsub('{deploymentId}', ERB::Util.url_encode(deployment_id.to_s))
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_website_id_deployment_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/website/{id}/deployment'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_website_id_get(id:, service_name:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/hosting/web/{serviceName}/website/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_website_id_put(id:, service_name:, hosting_web_website_update:)
        raise ArgumentError, 'id is required' if id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_website_update is required' if hosting_web_website_update.nil?

        @connection.call(
          :PUT,
          '/hosting/web/{serviceName}/website/{id}'
            .gsub('{id}', ERB::Util.url_encode(id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_website_update
        )
      end

      def service_name_website_post(service_name:, hosting_web_website_creation_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'hosting_web_website_creation_request is required' if hosting_web_website_creation_request.nil?

        @connection.call(
          :POST,
          '/hosting/web/{serviceName}/website'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: hosting_web_website_creation_request
        )
      end

      def vcs_supported_get
        @connection.call(
          :GET,
          '/hosting/web/vcs/supported',
          type: nil,
          auth: []
        )
      end
    end
  end
end
