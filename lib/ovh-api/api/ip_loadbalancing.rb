# frozen_string_literal: true

module Ovh::Api
  module Api
    class IpLoadbalancing
      def initialize(connection)
        @connection = connection
      end

      def available_zones_get
        @connection.call(
          :GET,
          '/ipLoadbalancing/availableZones',
          type: nil,
          auth: []
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/ipLoadbalancing',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_available_farm_probes_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/availableFarmProbes'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_available_farm_type_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/availableFarmType'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_available_frontend_type_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/availableFrontendType'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_available_route_actions_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/availableRouteActions'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_available_route_rules_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/availableRouteRules'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_change_contact_post(service_name:, cdn_dedicated_service_name_change_contact_post_request: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cdn_dedicated_service_name_change_contact_post_request
        )
      end

      def service_name_confirm_termination_post(service_name:, cloud_project_service_name_confirm_termination_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'cloud_project_service_name_confirm_termination_post_request is required' if cloud_project_service_name_confirm_termination_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/confirmTermination'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: cloud_project_service_name_confirm_termination_post_request
        )
      end

      def service_name_defined_farms_get(service_name:, vrack_network_id: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/definedFarms'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'vrackNetworkId' => vrack_network_id }
        )
      end

      def service_name_defined_frontends_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/definedFrontends'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_defined_routes_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/definedRoutes'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_free_certificate_post(service_name:, request_body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'request_body is required' if request_body.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/freeCertificate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: request_body
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_farm_farm_id_delete(farm_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/http/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_farm_farm_id_get(farm_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_farm_farm_id_put(farm_id:, service_name:, ip_loadbalancing_backend_http_backend_http:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_backend_http_backend_http is required' if ip_loadbalancing_backend_http_backend_http.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/http/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_backend_http_backend_http
        )
      end

      def service_name_http_farm_farm_id_server_get(farm_id:, service_name:, address: nil, cookie: nil, status: nil)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/farm/{farmId}/server'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'address' => address, 'cookie' => cookie, 'status' => status }
        )
      end

      def service_name_http_farm_farm_id_server_post(farm_id:, service_name:, ip_loadbalancing_service_name_http_farm_farm_id_server_post_request:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_http_farm_farm_id_server_post_request is required' if ip_loadbalancing_service_name_http_farm_farm_id_server_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/http/farm/{farmId}/server'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_http_farm_farm_id_server_post_request
        )
      end

      def service_name_http_farm_farm_id_server_server_id_delete(farm_id:, server_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/http/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_farm_farm_id_server_server_id_get(farm_id:, server_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_farm_farm_id_server_server_id_put(farm_id:, server_id:, service_name:, ip_loadbalancing_backend_http_customer_server_backend_http_server:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_backend_http_customer_server_backend_http_server is required' if ip_loadbalancing_backend_http_customer_server_backend_http_server.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/http/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_backend_http_customer_server_backend_http_server
        )
      end

      def service_name_http_farm_get(service_name:, vrack_network_id: nil, zone: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/farm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'vrackNetworkId' => vrack_network_id, 'zone' => zone }
        )
      end

      def service_name_http_farm_post(service_name:, ip_loadbalancing_service_name_http_farm_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_http_farm_post_request is required' if ip_loadbalancing_service_name_http_farm_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/http/farm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_http_farm_post_request
        )
      end

      def service_name_http_frontend_frontend_id_delete(frontend_id:, service_name:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/http/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_frontend_frontend_id_get(frontend_id:, service_name:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_frontend_frontend_id_put(frontend_id:, service_name:, ip_loadbalancing_frontend_http_frontend_http:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_frontend_http_frontend_http is required' if ip_loadbalancing_frontend_http_frontend_http.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/http/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_frontend_http_frontend_http
        )
      end

      def service_name_http_frontend_get(service_name:, default_farm_id: nil, default_ssl_id: nil, port: nil, zone: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/frontend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'defaultFarmId' => default_farm_id, 'defaultSslId' => default_ssl_id, 'port' => port, 'zone' => zone }
        )
      end

      def service_name_http_frontend_post(service_name:, ip_loadbalancing_service_name_http_frontend_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_http_frontend_post_request is required' if ip_loadbalancing_service_name_http_frontend_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/http/frontend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_http_frontend_post_request
        )
      end

      def service_name_http_route_get(service_name:, frontend_id: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/route'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'frontendId' => frontend_id }
        )
      end

      def service_name_http_route_post(service_name:, ip_loadbalancing_service_name_http_route_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_http_route_post_request is required' if ip_loadbalancing_service_name_http_route_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/http/route'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_http_route_post_request
        )
      end

      def service_name_http_route_route_id_delete(route_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/http/route/{routeId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_route_route_id_get(route_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/route/{routeId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_route_route_id_put(route_id:, service_name:, ip_loadbalancing_route_http_route_http:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_route_http_route_http is required' if ip_loadbalancing_route_http_route_http.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/http/route/{routeId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_route_http_route_http
        )
      end

      def service_name_http_route_route_id_rule_get(route_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/route/{routeId}/rule'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_route_route_id_rule_post(route_id:, service_name:, ip_loadbalancing_service_name_http_route_route_id_rule_post_request:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_http_route_route_id_rule_post_request is required' if ip_loadbalancing_service_name_http_route_route_id_rule_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/http/route/{routeId}/rule'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_http_route_route_id_rule_post_request
        )
      end

      def service_name_http_route_route_id_rule_rule_id_delete(route_id:, rule_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/http/route/{routeId}/rule/{ruleId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_route_route_id_rule_rule_id_get(route_id:, rule_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/http/route/{routeId}/rule/{ruleId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_http_route_route_id_rule_rule_id_put(route_id:, rule_id:, service_name:, ip_loadbalancing_route_rule_route_rule:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_route_rule_route_rule is required' if ip_loadbalancing_route_rule_route_rule.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/http/route/{routeId}/rule/{ruleId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_route_rule_route_rule
        )
      end

      def service_name_instances_state_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/instancesState'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_kind_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/log/kind'
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
          '/ipLoadbalancing/{serviceName}/log/kind/{name}'
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
          '/ipLoadbalancing/{serviceName}/log/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'kind' => kind }
        )
      end

      def service_name_log_subscription_post(service_name:, dedicated_cloud_service_name_log_subscription_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'dedicated_cloud_service_name_log_subscription_post_request is required' if dedicated_cloud_service_name_log_subscription_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/log/subscription'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dedicated_cloud_service_name_log_subscription_post_request
        )
      end

      def service_name_log_subscription_subscription_id_delete(service_name:, subscription_id:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'subscription_id is required' if subscription_id.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/log/subscription/{subscriptionId}'
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
          '/ipLoadbalancing/{serviceName}/log/subscription/{subscriptionId}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{subscriptionId}', ERB::Util.url_encode(subscription_id.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_url_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/log/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_metrics_token_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/metricsToken'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_nat_ip_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/natIp'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_pending_changes_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/pendingChanges'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, ip_loadbalancing_ip:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_ip is required' if ip_loadbalancing_ip.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_ip
        )
      end

      def service_name_refresh_post(service_name:, body: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/refresh'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/serviceInfos'
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
          '/ipLoadbalancing/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_status_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/status'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_farm_farm_id_delete(farm_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/tcp/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_farm_farm_id_get(farm_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_farm_farm_id_put(farm_id:, service_name:, ip_loadbalancing_backend_tcp_backend_tcp:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_backend_tcp_backend_tcp is required' if ip_loadbalancing_backend_tcp_backend_tcp.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/tcp/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_backend_tcp_backend_tcp
        )
      end

      def service_name_tcp_farm_farm_id_server_get(farm_id:, service_name:, address: nil, status: nil)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/farm/{farmId}/server'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'address' => address, 'status' => status }
        )
      end

      def service_name_tcp_farm_farm_id_server_post(farm_id:, service_name:, ip_loadbalancing_service_name_tcp_farm_farm_id_server_post_request:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_tcp_farm_farm_id_server_post_request is required' if ip_loadbalancing_service_name_tcp_farm_farm_id_server_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/tcp/farm/{farmId}/server'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_tcp_farm_farm_id_server_post_request
        )
      end

      def service_name_tcp_farm_farm_id_server_server_id_delete(farm_id:, server_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/tcp/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_farm_farm_id_server_server_id_get(farm_id:, server_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_farm_farm_id_server_server_id_put(farm_id:, server_id:, service_name:, ip_loadbalancing_backend_tcp_customer_server_backend_tcp_server:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_backend_tcp_customer_server_backend_tcp_server is required' if ip_loadbalancing_backend_tcp_customer_server_backend_tcp_server.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/tcp/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_backend_tcp_customer_server_backend_tcp_server
        )
      end

      def service_name_tcp_farm_get(service_name:, vrack_network_id: nil, zone: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/farm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'vrackNetworkId' => vrack_network_id, 'zone' => zone }
        )
      end

      def service_name_tcp_farm_post(service_name:, ip_loadbalancing_service_name_tcp_farm_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_tcp_farm_post_request is required' if ip_loadbalancing_service_name_tcp_farm_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/tcp/farm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_tcp_farm_post_request
        )
      end

      def service_name_tcp_frontend_frontend_id_delete(frontend_id:, service_name:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/tcp/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_frontend_frontend_id_get(frontend_id:, service_name:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_frontend_frontend_id_put(frontend_id:, service_name:, ip_loadbalancing_frontend_tcp_frontend_tcp:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_frontend_tcp_frontend_tcp is required' if ip_loadbalancing_frontend_tcp_frontend_tcp.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/tcp/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_frontend_tcp_frontend_tcp
        )
      end

      def service_name_tcp_frontend_get(service_name:, default_farm_id: nil, default_ssl_id: nil, port: nil, zone: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/frontend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'defaultFarmId' => default_farm_id, 'defaultSslId' => default_ssl_id, 'port' => port, 'zone' => zone }
        )
      end

      def service_name_tcp_frontend_post(service_name:, ip_loadbalancing_service_name_tcp_frontend_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_tcp_frontend_post_request is required' if ip_loadbalancing_service_name_tcp_frontend_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/tcp/frontend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_tcp_frontend_post_request
        )
      end

      def service_name_tcp_route_get(service_name:, frontend_id: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/route'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'frontendId' => frontend_id }
        )
      end

      def service_name_tcp_route_post(service_name:, ip_loadbalancing_service_name_tcp_route_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_tcp_route_post_request is required' if ip_loadbalancing_service_name_tcp_route_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/tcp/route'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_tcp_route_post_request
        )
      end

      def service_name_tcp_route_route_id_delete(route_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/tcp/route/{routeId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_route_route_id_get(route_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/route/{routeId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_route_route_id_put(route_id:, service_name:, ip_loadbalancing_route_tcp_route_tcp:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_route_tcp_route_tcp is required' if ip_loadbalancing_route_tcp_route_tcp.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/tcp/route/{routeId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_route_tcp_route_tcp
        )
      end

      def service_name_tcp_route_route_id_rule_get(route_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/route/{routeId}/rule'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_route_route_id_rule_post(route_id:, service_name:, ip_loadbalancing_service_name_http_route_route_id_rule_post_request:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_http_route_route_id_rule_post_request is required' if ip_loadbalancing_service_name_http_route_route_id_rule_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/tcp/route/{routeId}/rule'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_http_route_route_id_rule_post_request
        )
      end

      def service_name_tcp_route_route_id_rule_rule_id_delete(route_id:, rule_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/tcp/route/{routeId}/rule/{ruleId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_route_route_id_rule_rule_id_get(route_id:, rule_id:, service_name:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/tcp/route/{routeId}/rule/{ruleId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_tcp_route_route_id_rule_rule_id_put(route_id:, rule_id:, service_name:, ip_loadbalancing_route_rule_route_rule:)
        raise ArgumentError, 'route_id is required' if route_id.nil?
        raise ArgumentError, 'rule_id is required' if rule_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_route_rule_route_rule is required' if ip_loadbalancing_route_rule_route_rule.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/tcp/route/{routeId}/rule/{ruleId}'
            .gsub('{routeId}', ERB::Util.url_encode(route_id.to_s))
            .gsub('{ruleId}', ERB::Util.url_encode(rule_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_route_rule_route_rule
        )
      end

      def service_name_terminate_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/terminate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_udp_farm_farm_id_delete(farm_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/udp/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_udp_farm_farm_id_get(farm_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/udp/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_udp_farm_farm_id_put(farm_id:, service_name:, ip_loadbalancing_backend_udp_backend_udp:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_backend_udp_backend_udp is required' if ip_loadbalancing_backend_udp_backend_udp.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/udp/farm/{farmId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_backend_udp_backend_udp
        )
      end

      def service_name_udp_farm_farm_id_server_get(farm_id:, service_name:, address: nil, status: nil)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/udp/farm/{farmId}/server'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'address' => address, 'status' => status }
        )
      end

      def service_name_udp_farm_farm_id_server_post(farm_id:, service_name:, ip_loadbalancing_service_name_udp_farm_farm_id_server_post_request:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_udp_farm_farm_id_server_post_request is required' if ip_loadbalancing_service_name_udp_farm_farm_id_server_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/udp/farm/{farmId}/server'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_udp_farm_farm_id_server_post_request
        )
      end

      def service_name_udp_farm_farm_id_server_server_id_delete(farm_id:, server_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/udp/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_udp_farm_farm_id_server_server_id_get(farm_id:, server_id:, service_name:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/udp/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_udp_farm_farm_id_server_server_id_put(farm_id:, server_id:, service_name:, ip_loadbalancing_backend_udp_customer_server_backend_udp_server:)
        raise ArgumentError, 'farm_id is required' if farm_id.nil?
        raise ArgumentError, 'server_id is required' if server_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_backend_udp_customer_server_backend_udp_server is required' if ip_loadbalancing_backend_udp_customer_server_backend_udp_server.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/udp/farm/{farmId}/server/{serverId}'
            .gsub('{farmId}', ERB::Util.url_encode(farm_id.to_s))
            .gsub('{serverId}', ERB::Util.url_encode(server_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_backend_udp_customer_server_backend_udp_server
        )
      end

      def service_name_udp_farm_get(service_name:, vrack_network_id: nil, zone: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/udp/farm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'vrackNetworkId' => vrack_network_id, 'zone' => zone }
        )
      end

      def service_name_udp_farm_post(service_name:, ip_loadbalancing_service_name_udp_farm_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_udp_farm_post_request is required' if ip_loadbalancing_service_name_udp_farm_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/udp/farm'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_udp_farm_post_request
        )
      end

      def service_name_udp_frontend_frontend_id_delete(frontend_id:, service_name:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/ipLoadbalancing/{serviceName}/udp/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_udp_frontend_frontend_id_get(frontend_id:, service_name:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/udp/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_udp_frontend_frontend_id_put(frontend_id:, service_name:, ip_loadbalancing_frontend_udp_frontend_udp:)
        raise ArgumentError, 'frontend_id is required' if frontend_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_frontend_udp_frontend_udp is required' if ip_loadbalancing_frontend_udp_frontend_udp.nil?

        @connection.call(
          :PUT,
          '/ipLoadbalancing/{serviceName}/udp/frontend/{frontendId}'
            .gsub('{frontendId}', ERB::Util.url_encode(frontend_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_frontend_udp_frontend_udp
        )
      end

      def service_name_udp_frontend_get(service_name:, default_farm_id: nil, port: nil, zone: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/ipLoadbalancing/{serviceName}/udp/frontend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'defaultFarmId' => default_farm_id, 'port' => port, 'zone' => zone }
        )
      end

      def service_name_udp_frontend_post(service_name:, ip_loadbalancing_service_name_udp_frontend_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'ip_loadbalancing_service_name_udp_frontend_post_request is required' if ip_loadbalancing_service_name_udp_frontend_post_request.nil?

        @connection.call(
          :POST,
          '/ipLoadbalancing/{serviceName}/udp/frontend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: ip_loadbalancing_service_name_udp_frontend_post_request
        )
      end
    end
  end
end
