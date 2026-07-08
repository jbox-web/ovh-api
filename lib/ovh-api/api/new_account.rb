# frozen_string_literal: true

module Ovh::Api
  module Api
    class NewAccount
      def initialize(connection)
        @connection = connection
      end

      def area_get(country:)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/newAccount/area',
          type: nil,
          auth: [],
          query: { 'country' => country }
        )
      end

      def contracts_get(company:, subsidiary:)
        raise ArgumentError, 'company is required' if company.nil?
        raise ArgumentError, 'subsidiary is required' if subsidiary.nil?

        @connection.call(
          :GET,
          '/newAccount/contracts',
          type: nil,
          auth: [],
          query: { 'company' => company, 'subsidiary' => subsidiary }
        )
      end

      def corporation_type_get(country:)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/newAccount/corporationType',
          type: nil,
          auth: [],
          query: { 'country' => country }
        )
      end

      def countries_get(ovh_company:, ovh_subsidiary:)
        raise ArgumentError, 'ovh_company is required' if ovh_company.nil?
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/newAccount/countries',
          type: nil,
          auth: [],
          query: { 'ovhCompany' => ovh_company, 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def creation_rules_get(country:, legalform:, ovh_company:, ovh_subsidiary:)
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'legalform is required' if legalform.nil?
        raise ArgumentError, 'ovh_company is required' if ovh_company.nil?
        raise ArgumentError, 'ovh_subsidiary is required' if ovh_subsidiary.nil?

        @connection.call(
          :GET,
          '/newAccount/creationRules',
          type: nil,
          auth: [],
          query: { 'country' => country, 'legalform' => legalform, 'ovhCompany' => ovh_company, 'ovhSubsidiary' => ovh_subsidiary }
        )
      end

      def legalform_get(country:)
        raise ArgumentError, 'country is required' if country.nil?

        @connection.call(
          :GET,
          '/newAccount/legalform',
          type: nil,
          auth: [],
          query: { 'country' => country }
        )
      end

      def post(new_account_post_request:)
        raise ArgumentError, 'new_account_post_request is required' if new_account_post_request.nil?

        @connection.call(
          :POST,
          '/newAccount',
          type: nil,
          auth: [],
          body: new_account_post_request
        )
      end

      def rules_post(new_account_rules_post_request: nil)
        @connection.call(
          :POST,
          '/newAccount/rules',
          type: nil,
          auth: [],
          body: new_account_rules_post_request
        )
      end
    end
  end
end
