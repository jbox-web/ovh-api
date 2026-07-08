# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::License
      def initialize(connection)
        @connection = connection
      end

      def cpanel_get
        @connection.call(
          :GET,
          '/order/license/cpanel',
          type: nil,
          auth: []
        )
      end

      def cpanel_new_duration_get(duration:, ip:, version:, service_type: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/cpanel/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'serviceType' => service_type, 'version' => version }
        )
      end

      def cpanel_new_duration_post(duration:, order_license_cpanel_new_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'order_license_cpanel_new_duration_post_request is required' if order_license_cpanel_new_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/license/cpanel/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: order_license_cpanel_new_duration_post_request
        )
      end

      def cpanel_new_get(ip:, version:, service_type: nil)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/cpanel/new',
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'serviceType' => service_type, 'version' => version }
        )
      end

      def cpanel_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/license/cpanel/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def cpanel_service_name_upgrade_duration_get(duration:, service_name:, version:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/cpanel/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'version' => version }
        )
      end

      def cpanel_service_name_upgrade_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/license/cpanel/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def cpanel_service_name_upgrade_get(service_name:, version:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/cpanel/{serviceName}/upgrade'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'version' => version }
        )
      end

      def office_new_duration_get(duration:, gift_code: nil, office_business_quantity: nil, office_pro_plus_quantity: nil)
        raise ArgumentError, 'duration is required' if duration.nil?

        @connection.call(
          :GET,
          '/order/license/office/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'giftCode' => gift_code, 'officeBusinessQuantity' => office_business_quantity, 'officeProPlusQuantity' => office_pro_plus_quantity }
        )
      end

      def office_new_duration_post(duration:, order_license_office_new_duration_post_request: nil)
        raise ArgumentError, 'duration is required' if duration.nil?

        @connection.call(
          :POST,
          '/order/license/office/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: order_license_office_new_duration_post_request
        )
      end

      def office_new_get(gift_code: nil, office_business_quantity: nil, office_pro_plus_quantity: nil)
        @connection.call(
          :GET,
          '/order/license/office/new',
          type: nil,
          auth: [],
          query: { 'giftCode' => gift_code, 'officeBusinessQuantity' => office_business_quantity, 'officeProPlusQuantity' => office_pro_plus_quantity }
        )
      end

      def plesk_get
        @connection.call(
          :GET,
          '/order/license/plesk',
          type: nil,
          auth: []
        )
      end

      def plesk_new_duration_get(duration:, ip:, version:, antivirus: nil, application_set: nil, domain_number: nil, language_pack_number: nil, powerpack: nil, reseller_management: nil, service_type: nil, wordpress_toolkit: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/plesk/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'antivirus' => antivirus, 'applicationSet' => application_set, 'domainNumber' => domain_number, 'ip' => ip, 'languagePackNumber' => language_pack_number, 'powerpack' => powerpack, 'resellerManagement' => reseller_management, 'serviceType' => service_type, 'version' => version, 'wordpressToolkit' => wordpress_toolkit }
        )
      end

      def plesk_new_duration_post(duration:, order_license_plesk_new_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'order_license_plesk_new_duration_post_request is required' if order_license_plesk_new_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/license/plesk/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: order_license_plesk_new_duration_post_request
        )
      end

      def plesk_new_get(ip:, version:, antivirus: nil, application_set: nil, domain_number: nil, language_pack_number: nil, powerpack: nil, reseller_management: nil, service_type: nil, wordpress_toolkit: nil)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/plesk/new',
          type: nil,
          auth: [],
          query: { 'antivirus' => antivirus, 'applicationSet' => application_set, 'domainNumber' => domain_number, 'ip' => ip, 'languagePackNumber' => language_pack_number, 'powerpack' => powerpack, 'resellerManagement' => reseller_management, 'serviceType' => service_type, 'version' => version, 'wordpressToolkit' => wordpress_toolkit }
        )
      end

      def plesk_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/license/plesk/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def plesk_service_name_upgrade_duration_get(duration:, service_name:, antispam: nil, antivirus: nil, application_set: nil, domain_number: nil, language_pack_number: nil, powerpack: nil, reseller_management: nil, version: nil, wordpress_toolkit: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/license/plesk/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'antispam' => antispam, 'antivirus' => antivirus, 'applicationSet' => application_set, 'domainNumber' => domain_number, 'languagePackNumber' => language_pack_number, 'powerpack' => powerpack, 'resellerManagement' => reseller_management, 'version' => version, 'wordpressToolkit' => wordpress_toolkit }
        )
      end

      def plesk_service_name_upgrade_duration_post(duration:, service_name:, order_license_plesk_service_name_upgrade_duration_post_request: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/license/plesk/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_license_plesk_service_name_upgrade_duration_post_request
        )
      end

      def plesk_service_name_upgrade_get(service_name:, antispam: nil, antivirus: nil, application_set: nil, domain_number: nil, language_pack_number: nil, powerpack: nil, reseller_management: nil, version: nil, wordpress_toolkit: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/license/plesk/{serviceName}/upgrade'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'antispam' => antispam, 'antivirus' => antivirus, 'applicationSet' => application_set, 'domainNumber' => domain_number, 'languagePackNumber' => language_pack_number, 'powerpack' => powerpack, 'resellerManagement' => reseller_management, 'version' => version, 'wordpressToolkit' => wordpress_toolkit }
        )
      end

      def sqlserver_get
        @connection.call(
          :GET,
          '/order/license/sqlserver',
          type: nil,
          auth: []
        )
      end

      def sqlserver_new_duration_get(duration:, ip:, version:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/sqlserver/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'version' => version }
        )
      end

      def sqlserver_new_duration_post(duration:, order_license_sqlserver_new_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'order_license_sqlserver_new_duration_post_request is required' if order_license_sqlserver_new_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/license/sqlserver/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: order_license_sqlserver_new_duration_post_request
        )
      end

      def sqlserver_new_get(ip:, version:)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/sqlserver/new',
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'version' => version }
        )
      end

      def sqlserver_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/license/sqlserver/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def sqlserver_service_name_upgrade_duration_get(duration:, service_name:, version:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/sqlserver/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'version' => version }
        )
      end

      def sqlserver_service_name_upgrade_duration_post(duration:, service_name:, body:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/license/sqlserver/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def sqlserver_service_name_upgrade_get(service_name:, version:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/sqlserver/{serviceName}/upgrade'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'version' => version }
        )
      end

      def windows_get
        @connection.call(
          :GET,
          '/order/license/windows',
          type: nil,
          auth: []
        )
      end

      def windows_new_duration_get(duration:, ip:, version:, service_type: nil, sql_version: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/windows/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'serviceType' => service_type, 'sqlVersion' => sql_version, 'version' => version }
        )
      end

      def windows_new_duration_post(duration:, order_license_windows_new_duration_post_request:)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'order_license_windows_new_duration_post_request is required' if order_license_windows_new_duration_post_request.nil?

        @connection.call(
          :POST,
          '/order/license/windows/new/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s)),
          type: nil,
          auth: [],
          body: order_license_windows_new_duration_post_request
        )
      end

      def windows_new_get(ip:, version:, service_type: nil, sql_version: nil)
        raise ArgumentError, 'ip is required' if ip.nil?
        raise ArgumentError, 'version is required' if version.nil?

        @connection.call(
          :GET,
          '/order/license/windows/new',
          type: nil,
          auth: [],
          query: { 'ip' => ip, 'serviceType' => service_type, 'sqlVersion' => sql_version, 'version' => version }
        )
      end

      def windows_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/license/windows/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def windows_service_name_upgrade_duration_get(duration:, service_name:, sql_version: nil, version: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/license/windows/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'sqlVersion' => sql_version, 'version' => version }
        )
      end

      def windows_service_name_upgrade_duration_post(duration:, service_name:, order_license_windows_service_name_upgrade_duration_post_request: nil)
        raise ArgumentError, 'duration is required' if duration.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/order/license/windows/{serviceName}/upgrade/{duration}'
            .gsub('{duration}', ERB::Util.url_encode(duration.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_license_windows_service_name_upgrade_duration_post_request
        )
      end

      def windows_service_name_upgrade_get(service_name:, sql_version: nil, version: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/license/windows/{serviceName}/upgrade'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'sqlVersion' => sql_version, 'version' => version }
        )
      end
    end
  end
end
