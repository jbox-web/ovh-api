# frozen_string_literal: true

module Ovh::Api
  module Api
    class HorizonView::DomainTrust
      def initialize(connection)
        @connection = connection
      end

      def add_child_domain(domain_trust_id:, service_name:, horizon_view_service_name_domain_trust_domain_trust_id_add_chi_h098d1704:)
        raise ArgumentError, 'domain_trust_id is required' if domain_trust_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_domain_trust_domain_trust_id_add_chi_h098d1704 is required' if horizon_view_service_name_domain_trust_domain_trust_id_add_chi_h098d1704.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/domainTrust/{domainTrustId}/addChildDomain'
            .gsub('{domainTrustId}', ERB::Util.url_encode(domain_trust_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_domain_trust_domain_trust_id_add_chi_h098d1704
        )
      end

      def add_domain_controller(domain_trust_id:, service_name:, horizon_view_service_name_domain_trust_domain_trust_id_add_dom_h11ef23b8:)
        raise ArgumentError, 'domain_trust_id is required' if domain_trust_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_domain_trust_domain_trust_id_add_dom_h11ef23b8 is required' if horizon_view_service_name_domain_trust_domain_trust_id_add_dom_h11ef23b8.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/domainTrust/{domainTrustId}/addDomainController'
            .gsub('{domainTrustId}', ERB::Util.url_encode(domain_trust_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_domain_trust_domain_trust_id_add_dom_h11ef23b8
        )
      end

      def add_domain_user_on_composer(domain_trust_id:, service_name:, horizon_view_service_name_domain_trust_domain_trust_id_add_dom_h1552549c:)
        raise ArgumentError, 'domain_trust_id is required' if domain_trust_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_domain_trust_domain_trust_id_add_dom_h1552549c is required' if horizon_view_service_name_domain_trust_domain_trust_id_add_dom_h1552549c.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/domainTrust/{domainTrustId}/addDomainUserOnComposer'
            .gsub('{domainTrustId}', ERB::Util.url_encode(domain_trust_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_domain_trust_domain_trust_id_add_dom_h1552549c
        )
      end

      def create(service_name:, horizon_view_service_name_domain_trust_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_domain_trust_post_request is required' if horizon_view_service_name_domain_trust_post_request.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/domainTrust'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_domain_trust_post_request
        )
      end

      def create_trust(domain_trust_id:, service_name:, horizon_view_service_name_domain_trust_domain_trust_id_create_th33534517:)
        raise ArgumentError, 'domain_trust_id is required' if domain_trust_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'horizon_view_service_name_domain_trust_domain_trust_id_create_th33534517 is required' if horizon_view_service_name_domain_trust_domain_trust_id_create_th33534517.nil?

        @connection.call(
          :POST,
          '/horizonView/{serviceName}/domainTrust/{domainTrustId}/createTrust'
            .gsub('{domainTrustId}', ERB::Util.url_encode(domain_trust_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: horizon_view_service_name_domain_trust_domain_trust_id_create_th33534517
        )
      end

      def get(domain_trust_id:, service_name:)
        raise ArgumentError, 'domain_trust_id is required' if domain_trust_id.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/domainTrust/{domainTrustId}'
            .gsub('{domainTrustId}', ERB::Util.url_encode(domain_trust_id.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def list(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/horizonView/{serviceName}/domainTrust'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
