# frozen_string_literal: true

module Ovh::Api
  module Api
    class Price
      def initialize(connection)
        @connection = connection
      end

      def hosting_private_database_private_database_name_get(private_database_name:)
        raise ArgumentError, 'private_database_name is required' if private_database_name.nil?

        @connection.call(
          :GET,
          '/price/hosting/privateDatabase/{privateDatabaseName}'
            .gsub('{privateDatabaseName}', ERB::Util.url_encode(private_database_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hosting_web_cdn_cdn_name_get(cdn_name:)
        raise ArgumentError, 'cdn_name is required' if cdn_name.nil?

        @connection.call(
          :GET,
          '/price/hosting/web/cdn/{cdnName}'
            .gsub('{cdnName}', ERB::Util.url_encode(cdn_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hosting_web_extra_sql_perso_extra_sql_perso_name_get(extra_sql_perso_name:)
        raise ArgumentError, 'extra_sql_perso_name is required' if extra_sql_perso_name.nil?

        @connection.call(
          :GET,
          '/price/hosting/web/extraSqlPerso/{extraSqlPersoName}'
            .gsub('{extraSqlPersoName}', ERB::Util.url_encode(extra_sql_perso_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def hosting_web_ssl_ssl_name_get(ssl_name:)
        raise ArgumentError, 'ssl_name is required' if ssl_name.nil?

        @connection.call(
          :GET,
          '/price/hosting/web/ssl/{sslName}'
            .gsub('{sslName}', ERB::Util.url_encode(ssl_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def saas_csp2_license_license_name_get(license_name:)
        raise ArgumentError, 'license_name is required' if license_name.nil?

        @connection.call(
          :GET,
          '/price/saas/csp2/license/{licenseName}'
            .gsub('{licenseName}', ERB::Util.url_encode(license_name.to_s)),
          type: nil,
          auth: []
        )
      end
    end
  end
end
