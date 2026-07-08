# frozen_string_literal: true

module Ovh::Api
  module Api
    class Xdsl
      def initialize(connection)
        @connection = connection
      end

      def email_pro_email_change_password_post(email:, xdsl_email_pro_change_password_post:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'xdsl_email_pro_change_password_post is required' if xdsl_email_pro_change_password_post.nil?

        @connection.call(
          :POST,
          '/xdsl/email/pro/{email}/changePassword'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: [],
          body: xdsl_email_pro_change_password_post
        )
      end

      def email_pro_email_delete(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :DELETE,
          '/xdsl/email/pro/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_pro_email_get(email:)
        raise ArgumentError, 'email is required' if email.nil?

        @connection.call(
          :GET,
          '/xdsl/email/pro/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: []
        )
      end

      def email_pro_email_put(email:, xdsl_xdsl_email_pro:)
        raise ArgumentError, 'email is required' if email.nil?
        raise ArgumentError, 'xdsl_xdsl_email_pro is required' if xdsl_xdsl_email_pro.nil?

        @connection.call(
          :PUT,
          '/xdsl/email/pro/{email}'
            .gsub('{email}', ERB::Util.url_encode(email.to_s)),
          type: nil,
          auth: [],
          body: xdsl_xdsl_email_pro
        )
      end

      def email_pro_get(iam_tags: nil)
        @connection.call(
          :GET,
          '/xdsl/email/pro',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def get(iam_tags: nil)
        @connection.call(
          :GET,
          '/xdsl',
          type: nil,
          auth: [],
          query: { 'iamTags' => iam_tags }
        )
      end

      def service_name_address_move_extra_ip_range_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/addressMove/extraIpRange'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_address_move_extra_ip_range_move_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/addressMove/extraIpRangeMove'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_apply_template_to_modem_post(service_name:, xdsl_apply_template_to_modem_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_apply_template_to_modem_post is required' if xdsl_apply_template_to_modem_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/applyTemplateToModem'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_apply_template_to_modem_post
        )
      end

      def service_name_can_cancel_resiliation_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/canCancelResiliation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_cancel_resiliation_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/cancelResiliation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_change_contact_post(service_name:, xdsl_change_contact_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_change_contact_post is required' if xdsl_change_contact_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/changeContact'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_change_contact_post
        )
      end

      def service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_log_kind_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/log/kind'
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
          '/xdsl/{serviceName}/log/kind/{name}'
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
          '/xdsl/{serviceName}/log/subscription'
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
          '/xdsl/{serviceName}/log/subscription'
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
          '/xdsl/{serviceName}/log/subscription/{subscriptionId}'
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
          '/xdsl/{serviceName}/log/subscription/{subscriptionId}'
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
          '/xdsl/{serviceName}/log/url'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: dbaas_logs_log_url_creation
        )
      end

      def service_name_mail_sending_post(service_name:, xdsl_mail_sending_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_mail_sending_post is required' if xdsl_mail_sending_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/mailSending'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_mail_sending_post
        )
      end

      def service_name_modem_available_acs_backend_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/availableACSBackend'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_available_wlan_channel_get(frequency:, service_name:)
        raise ArgumentError, 'frequency is required' if frequency.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/availableWLANChannel'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'frequency' => frequency }
        )
      end

      def service_name_modem_bloc_ip_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/blocIp'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_bloc_ip_post(service_name:, xdsl_modem_bloc_ip_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_bloc_ip_post is required' if xdsl_modem_bloc_ip_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/blocIp'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_bloc_ip_post
        )
      end

      def service_name_modem_call_waiting_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/callWaiting'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_call_waiting_post(service_name:, xdsl_modem_call_waiting_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_call_waiting_post is required' if xdsl_modem_call_waiting_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/callWaiting'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_call_waiting_post
        )
      end

      def service_name_modem_comfort_exchange_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/comfortExchange'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_comfort_exchange_post(service_name:, xdsl_modem_comfort_exchange_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_comfort_exchange_post is required' if xdsl_modem_comfort_exchange_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/comfortExchange'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_comfort_exchange_post
        )
      end

      def service_name_modem_connected_devices_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/connectedDevices'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_connected_devices_mac_address_get(mac_address:, service_name:)
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/connectedDevices/{macAddress}'
            .gsub('{macAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_content_sharing_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/contentSharing'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_content_sharing_post(service_name:, xdsl_modem_content_sharing_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_content_sharing_post is required' if xdsl_modem_content_sharing_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/contentSharing'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_content_sharing_post
        )
      end

      def service_name_modem_firmware_available_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/firmwareAvailable'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_firmware_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/firmware'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_firmware_post(service_name:, xdsl_modem_firmware_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_firmware_post is required' if xdsl_modem_firmware_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/firmware'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_firmware_post
        )
      end

      def service_name_modem_ftp_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/ftp'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_ftp_post(service_name:, xdsl_modem_ftp_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_ftp_post is required' if xdsl_modem_ftp_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/ftp'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_ftp_post
        )
      end

      def service_name_modem_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_ipsec_alg_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/ipsecAlg'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_ipsec_alg_post(service_name:, xdsl_modem_ipsec_alg_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_ipsec_alg_post is required' if xdsl_modem_ipsec_alg_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/ipsecAlg'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_ipsec_alg_post
        )
      end

      def service_name_modem_lan_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/lan'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_lan_lan_name_dhcp_dhcp_name_dhcp_static_addresses_get(dhcp_name:, lan_name:, service_name:)
        raise ArgumentError, 'dhcp_name is required' if dhcp_name.nil?
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/lan/{lanName}/dhcp/{dhcpName}/DHCPStaticAddresses'
            .gsub('{dhcpName}', ERB::Util.url_encode(dhcp_name.to_s))
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_lan_lan_name_dhcp_dhcp_name_dhcp_static_addresses_mac_address_delete(mac_address:, dhcp_name:, lan_name:, service_name:)
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'dhcp_name is required' if dhcp_name.nil?
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/xdsl/{serviceName}/modem/lan/{lanName}/dhcp/{dhcpName}/DHCPStaticAddresses/{MACAddress}'
            .gsub('{MACAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{dhcpName}', ERB::Util.url_encode(dhcp_name.to_s))
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_lan_lan_name_dhcp_dhcp_name_dhcp_static_addresses_mac_address_get(mac_address:, dhcp_name:, lan_name:, service_name:)
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'dhcp_name is required' if dhcp_name.nil?
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/lan/{lanName}/dhcp/{dhcpName}/DHCPStaticAddresses/{MACAddress}'
            .gsub('{MACAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{dhcpName}', ERB::Util.url_encode(dhcp_name.to_s))
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_lan_lan_name_dhcp_dhcp_name_dhcp_static_addresses_mac_address_put(mac_address:, dhcp_name:, lan_name:, service_name:, xdsl_dhcp_static_address:)
        raise ArgumentError, 'mac_address is required' if mac_address.nil?
        raise ArgumentError, 'dhcp_name is required' if dhcp_name.nil?
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_dhcp_static_address is required' if xdsl_dhcp_static_address.nil?

        @connection.call(
          :PUT,
          '/xdsl/{serviceName}/modem/lan/{lanName}/dhcp/{dhcpName}/DHCPStaticAddresses/{MACAddress}'
            .gsub('{MACAddress}', ERB::Util.url_encode(mac_address.to_s))
            .gsub('{dhcpName}', ERB::Util.url_encode(dhcp_name.to_s))
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_dhcp_static_address
        )
      end

      def service_name_modem_lan_lan_name_dhcp_dhcp_name_dhcp_static_addresses_post(dhcp_name:, lan_name:, service_name:, xdsl_modem_lan_dhcp_dhcp_static_addresses_post:)
        raise ArgumentError, 'dhcp_name is required' if dhcp_name.nil?
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_lan_dhcp_dhcp_static_addresses_post is required' if xdsl_modem_lan_dhcp_dhcp_static_addresses_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/lan/{lanName}/dhcp/{dhcpName}/DHCPStaticAddresses'
            .gsub('{dhcpName}', ERB::Util.url_encode(dhcp_name.to_s))
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_lan_dhcp_dhcp_static_addresses_post
        )
      end

      def service_name_modem_lan_lan_name_dhcp_dhcp_name_get(dhcp_name:, lan_name:, service_name:)
        raise ArgumentError, 'dhcp_name is required' if dhcp_name.nil?
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/lan/{lanName}/dhcp/{dhcpName}'
            .gsub('{dhcpName}', ERB::Util.url_encode(dhcp_name.to_s))
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_lan_lan_name_dhcp_dhcp_name_put(dhcp_name:, lan_name:, service_name:, xdsl_dhcp:)
        raise ArgumentError, 'dhcp_name is required' if dhcp_name.nil?
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_dhcp is required' if xdsl_dhcp.nil?

        @connection.call(
          :PUT,
          '/xdsl/{serviceName}/modem/lan/{lanName}/dhcp/{dhcpName}'
            .gsub('{dhcpName}', ERB::Util.url_encode(dhcp_name.to_s))
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_dhcp
        )
      end

      def service_name_modem_lan_lan_name_dhcp_get(lan_name:, service_name:)
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/lan/{lanName}/dhcp'
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_lan_lan_name_get(lan_name:, service_name:)
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/lan/{lanName}'
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_lan_lan_name_put(lan_name:, service_name:, xdsl_lan:)
        raise ArgumentError, 'lan_name is required' if lan_name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_lan is required' if xdsl_lan.nil?

        @connection.call(
          :PUT,
          '/xdsl/{serviceName}/modem/lan/{lanName}'
            .gsub('{lanName}', ERB::Util.url_encode(lan_name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_lan
        )
      end

      def service_name_modem_port_mappings_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/portMappings'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_port_mappings_name_delete(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :DELETE,
          '/xdsl/{serviceName}/modem/portMappings/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_port_mappings_name_get(name:, service_name:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/portMappings/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_port_mappings_name_put(name:, service_name:, xdsl_port_mapping:)
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_port_mapping is required' if xdsl_port_mapping.nil?

        @connection.call(
          :PUT,
          '/xdsl/{serviceName}/modem/portMappings/{name}'
            .gsub('{name}', ERB::Util.url_encode(name.to_s))
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_port_mapping
        )
      end

      def service_name_modem_port_mappings_post(service_name:, xdsl_modem_port_mappings_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_port_mappings_post is required' if xdsl_modem_port_mappings_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/portMappings'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_port_mappings_post
        )
      end

      def service_name_modem_put(service_name:, xdsl_modem:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem is required' if xdsl_modem.nil?

        @connection.call(
          :PUT,
          '/xdsl/{serviceName}/modem'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem
        )
      end

      def service_name_modem_reboot_post(service_name:, xdsl_modem_reboot_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_reboot_post is required' if xdsl_modem_reboot_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/reboot'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_reboot_post
        )
      end

      def service_name_modem_reconfigure_voip_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/reconfigureVoip'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_refresh_connected_devices_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/refreshConnectedDevices'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_reset_port_mapping_config_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/resetPortMappingConfig'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_reset_post(service_name:, xdsl_modem_reset_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_reset_post is required' if xdsl_modem_reset_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/reset'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_reset_post
        )
      end

      def service_name_modem_retrieve_info_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/retrieveInfo'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_sip_alg_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/sipAlg'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_sip_alg_post(service_name:, xdsl_modem_sip_alg_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_sip_alg_post is required' if xdsl_modem_sip_alg_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/sipAlg'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_sip_alg_post
        )
      end

      def service_name_modem_upnp_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/upnp'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_upnp_post(service_name:, xdsl_modem_upnp_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_modem_upnp_post is required' if xdsl_modem_upnp_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/modem/upnp'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_modem_upnp_post
        )
      end

      def service_name_modem_wifi_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/wifi'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_wifi_wifi_name_get(service_name:, wifi_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'wifi_name is required' if wifi_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/wifi/{wifiName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{wifiName}', ERB::Util.url_encode(wifi_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_modem_wifi_wifi_name_put(service_name:, wifi_name:, xdsl_wlan:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'wifi_name is required' if wifi_name.nil?
        raise ArgumentError, 'xdsl_wlan is required' if xdsl_wlan.nil?

        @connection.call(
          :PUT,
          '/xdsl/{serviceName}/modem/wifi/{wifiName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{wifiName}', ERB::Util.url_encode(wifi_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_wlan
        )
      end

      def service_name_modem_wifi_wifi_name_qr_code_get(service_name:, wifi_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'wifi_name is required' if wifi_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/modem/wifi/{wifiName}/qrCode'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s))
            .gsub('{wifiName}', ERB::Util.url_encode(wifi_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_ont_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/ont'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_order_followup_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/orderFollowup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_order_meeting_post(service_name:, xdsl_order_meeting_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_order_meeting_post is required' if xdsl_order_meeting_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/orderMeeting'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_order_meeting_post
        )
      end

      def service_name_pending_action_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/pendingAction'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_put(service_name:, xdsl_access:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_access is required' if xdsl_access.nil?

        @connection.call(
          :PUT,
          '/xdsl/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_access
        )
      end

      def service_name_radius_connection_logs_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/radiusConnectionLogs'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_request_ppp_login_mail_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/requestPPPLoginMail'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_request_total_deconsolidation_post(service_name:, xdsl_request_total_deconsolidation_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_request_total_deconsolidation_post is required' if xdsl_request_total_deconsolidation_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/requestTotalDeconsolidation'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_request_total_deconsolidation_post
        )
      end

      def service_name_resiliate_post(service_name:, xdsl_resiliate_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_resiliate_post is required' if xdsl_resiliate_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/resiliate'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_resiliate_post
        )
      end

      def service_name_resiliation_followup_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/resiliationFollowup'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_resiliation_terms_get(service_name:, resiliation_date: nil)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/resiliationTerms'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'resiliationDate' => resiliation_date }
        )
      end

      def service_name_search_order_meetings_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/searchOrderMeetings'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_send_order_to_provider_post(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/sendOrderToProvider'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_service_infos_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/serviceInfos'
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
          '/xdsl/{serviceName}/serviceInfos'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: services_service
        )
      end

      def service_name_statistics_get(period:, service_name:, type:)
        raise ArgumentError, 'period is required' if period.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'type is required' if type.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/statistics'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'period' => period, 'type' => type }
        )
      end

      def service_name_total_deconsolidation_terms_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/xdsl/{serviceName}/totalDeconsolidationTerms'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def service_name_update_invalid_or_missing_rio_post(service_name:, xdsl_update_invalid_or_missing_rio_post:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'xdsl_update_invalid_or_missing_rio_post is required' if xdsl_update_invalid_or_missing_rio_post.nil?

        @connection.call(
          :POST,
          '/xdsl/{serviceName}/updateInvalidOrMissingRio'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: xdsl_update_invalid_or_missing_rio_post
        )
      end
    end
  end
end
