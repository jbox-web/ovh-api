# frozen_string_literal: true

module Ovh::Api
  module Api
    class Cdn::Dedicated
      def initialize(connection)
        @connection = connection
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/cdn/dedicated',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def log_kind_get
        @connection.call(
          :GET,
          '/cdn/dedicated/log/kind',
          type: nil,
          auth: []
        )
      end

      def log_kind_name_get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/log/kind/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def pops_get
        @connection.call(
          :GET,
          '/cdn/dedicated/pops',
          type: nil,
          auth: []
        )
      end

      def pops_name_get(name:)
        raise ArgumentError, 'name is required' if name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/pops/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_change_contact_post(service_name:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def service_name_domains_domain_backends_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/backends'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_backends_ip_delete(domain:, ip:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cdn/dedicated/{serviceName}/domains/{domain}/backends/{ip}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_backends_ip_get(domain:, ip:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/backends/{ip}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{ip}', ERB::Util.url_encode(ip.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_backends_post(domain:, service_name:, body:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/domains/{domain}/backends'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_domains_domain_cache_rules_cache_rule_id_delete(cache_rule_id:, domain:, service_name:)
        raise ArgumentError, 'cache_rule_id is required' if cache_rule_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cdn/dedicated/{serviceName}/domains/{domain}/cacheRules/{cacheRuleId}'
            .gsub('{cacheRuleId}', ERB::Util.url_encode(cache_rule_id.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_cache_rules_cache_rule_id_flush_post(cache_rule_id:, domain:, service_name:)
        raise ArgumentError, 'cache_rule_id is required' if cache_rule_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/domains/{domain}/cacheRules/{cacheRuleId}/flush'
            .gsub('{cacheRuleId}', ERB::Util.url_encode(cache_rule_id.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_cache_rules_cache_rule_id_get(cache_rule_id:, domain:, service_name:)
        raise ArgumentError, 'cache_rule_id is required' if cache_rule_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/cacheRules/{cacheRuleId}'
            .gsub('{cacheRuleId}', ERB::Util.url_encode(cache_rule_id.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_cache_rules_cache_rule_id_put(cache_rule_id:, domain:, service_name:, cdnanycast_cache_rule:)
        raise ArgumentError, 'cache_rule_id is required' if cache_rule_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cdnanycast_cache_rule is required' if cdnanycast_cache_rule.nil?

        @connection.call(
          :PUT,
          '/cdn/dedicated/{serviceName}/domains/{domain}/cacheRules/{cacheRuleId}'
            .gsub('{cacheRuleId}', ERB::Util.url_encode(cache_rule_id.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdnanycast_cache_rule
        )
      end

      def service_name_domains_domain_cache_rules_cache_rule_id_tasks_get(cache_rule_id:, domain:, service_name:)
        raise ArgumentError, 'cache_rule_id is required' if cache_rule_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/cacheRules/{cacheRuleId}/tasks'
            .gsub('{cacheRuleId}', ERB::Util.url_encode(cache_rule_id.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_cache_rules_cache_rule_id_tasks_task_id_get(cache_rule_id:, domain:, service_name:, task_id:)
        raise ArgumentError, 'cache_rule_id is required' if cache_rule_id.nil?
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/cacheRules/{cacheRuleId}/tasks/{taskId}'
            .gsub('{cacheRuleId}', ERB::Util.url_encode(cache_rule_id.to_s))
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_cache_rules_get(domain:, service_name:, file_match: nil)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/cacheRules'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'fileMatch' => file_match }
        )
      end

      def service_name_domains_domain_cache_rules_post(domain:, service_name:, cdn_dedicated_service_name_domains_domain_cache_rules_post_request:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cdn_dedicated_service_name_domains_domain_cache_rules_post_request is required' if cdn_dedicated_service_name_domains_domain_cache_rules_post_request.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/domains/{domain}/cacheRules'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_domains_domain_cache_rules_post_request
        )
      end

      def service_name_domains_domain_delete(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/cdn/dedicated/{serviceName}/domains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_flush_post(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/domains/{domain}/flush'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_logs_post(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/domains/{domain}/logs'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_put(domain:, service_name:, cdnanycast_domain:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cdnanycast_domain is required' if cdnanycast_domain.nil?

        @connection.call(
          :PUT,
          '/cdn/dedicated/{serviceName}/domains/{domain}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdnanycast_domain
        )
      end

      def service_name_domains_domain_statistics_get(domain:, period:, service_name:, type:, value:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?
        raise ArgumentError, 'value is required' if value.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/statistics'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type, 'value' => value }
        )
      end

      def service_name_domains_domain_tasks_get(domain:, service_name:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/tasks'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_domain_tasks_task_id_get(domain:, service_name:, task_id:)
        raise ArgumentError, 'domain is required' if domain.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains/{domain}/tasks/{taskId}'
            .gsub('{domain}', ERB::Util.url_encode(domain.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/domains'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_domains_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/domains'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_subscription_get(service_name:, kind: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/log/subscription'
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
          '/cdn/dedicated/{serviceName}/log/subscription'
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
          '/cdn/dedicated/{serviceName}/log/subscription/{subscriptionId}'
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
          '/cdn/dedicated/{serviceName}/log/subscription/{subscriptionId}'
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
          '/cdn/dedicated/{serviceName}/log/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_logs_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/logs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_quota_get(period:, service_name:)
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/quota'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period }
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/serviceInfos'
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
          '/cdn/dedicated/{serviceName}/serviceInfos'
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
          '/cdn/dedicated/{serviceName}/ssl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ssl_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/ssl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ssl_post(service_name:, cdn_dedicated_service_name_ssl_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cdn_dedicated_service_name_ssl_post_request is required' if cdn_dedicated_service_name_ssl_post_request.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/ssl'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_ssl_post_request
        )
      end

      def service_name_ssl_tasks_get(service_name:, function: nil, status: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/ssl/tasks'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'function' => function, 'status' => status }
        )
      end

      def service_name_ssl_tasks_task_id_get(service_name:, task_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'task_id is required' if task_id.nil?

        @connection.call(
          :GET,
          '/cdn/dedicated/{serviceName}/ssl/tasks/{taskId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{taskId}', ERB::Util.url_encode(task_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ssl_update_post(service_name:, cdn_dedicated_service_name_ssl_update_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cdn_dedicated_service_name_ssl_update_post_request is required' if cdn_dedicated_service_name_ssl_update_post_request.nil?

        @connection.call(
          :POST,
          '/cdn/dedicated/{serviceName}/ssl/update'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_ssl_update_post_request
        )
      end
    end
  end
end
