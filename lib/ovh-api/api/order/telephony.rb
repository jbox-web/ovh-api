# frozen_string_literal: true

module Ovh::Api
  module Api
    class Order::Telephony
      def initialize(connection)
        @connection = connection
      end

      def billing_account_accessories_get(accessories:, billing_account:, retractation:, shipping_contact_id:, mondial_relay_id: nil)
        raise ArgumentError, 'accessories is required' if accessories.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'retractation is required' if retractation.nil?
        raise ArgumentError, 'shipping_contact_id is required' if shipping_contact_id.nil?

        @connection.call(
          :GET,
          '/order/telephony/{billingAccount}/accessories'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'accessories' => accessories, 'mondialRelayId' => mondial_relay_id, 'retractation' => retractation, 'shippingContactId' => shipping_contact_id }
        )
      end

      def billing_account_accessories_post(billing_account:, order_telephony_billing_account_accessories_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'order_telephony_billing_account_accessories_post_request is required' if order_telephony_billing_account_accessories_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/{billingAccount}/accessories'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_billing_account_accessories_post_request
        )
      end

      def billing_account_get(billing_account:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/order/telephony/{billingAccount}'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: []
        )
      end

      def billing_account_line_get(billing_account:, display_universal_directories:, extra_simultaneous_lines:, offers:, owner_contact_ids:, quantity:, retractation:, shipping_contact_id:, types:, brand: nil, mondial_relay_id: nil, zones: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'display_universal_directories is required' if display_universal_directories.nil?
        raise ArgumentError, 'extra_simultaneous_lines is required' if extra_simultaneous_lines.nil?
        raise ArgumentError, 'offers is required' if offers.nil?
        raise ArgumentError, 'owner_contact_ids is required' if owner_contact_ids.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'retractation is required' if retractation.nil?
        raise ArgumentError, 'shipping_contact_id is required' if shipping_contact_id.nil?
        raise ArgumentError, 'types is required' if types.nil?

        @connection.call(
          :GET,
          '/order/telephony/{billingAccount}/line'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'brand' => brand, 'displayUniversalDirectories' => display_universal_directories, 'extraSimultaneousLines' => extra_simultaneous_lines, 'mondialRelayId' => mondial_relay_id, 'offers' => offers, 'ownerContactIds' => owner_contact_ids, 'quantity' => quantity, 'retractation' => retractation, 'shippingContactId' => shipping_contact_id, 'types' => types, 'zones' => zones }
        )
      end

      def billing_account_line_post(billing_account:, order_telephony_billing_account_line_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'order_telephony_billing_account_line_post_request is required' if order_telephony_billing_account_line_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/{billingAccount}/line'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_billing_account_line_post_request
        )
      end

      def billing_account_number_geographic_get(billing_account:, city:, country:, display_universal_directory:, legalform:, offer:, retractation:, zone:, ape: nil, email: nil, firstname: nil, name: nil, organisation: nil, phone: nil, pool: nil, siret: nil, social_nomination: nil, specific_number: nil, street_name: nil, street_number: nil, zip: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'city is required' if city.nil?
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'display_universal_directory is required' if display_universal_directory.nil?
        raise ArgumentError, 'legalform is required' if legalform.nil?
        raise ArgumentError, 'offer is required' if offer.nil?
        raise ArgumentError, 'retractation is required' if retractation.nil?
        raise ArgumentError, 'zone is required' if zone.nil?

        @connection.call(
          :GET,
          '/order/telephony/{billingAccount}/numberGeographic'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'ape' => ape, 'city' => city, 'country' => country, 'displayUniversalDirectory' => display_universal_directory, 'email' => email, 'firstname' => firstname, 'legalform' => legalform, 'name' => name, 'offer' => offer, 'organisation' => organisation, 'phone' => phone, 'pool' => pool, 'retractation' => retractation, 'siret' => siret, 'socialNomination' => social_nomination, 'specificNumber' => specific_number, 'streetName' => street_name, 'streetNumber' => street_number, 'zip' => zip, 'zone' => zone }
        )
      end

      def billing_account_number_geographic_post(billing_account:, order_telephony_billing_account_number_geographic_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'order_telephony_billing_account_number_geographic_post_request is required' if order_telephony_billing_account_number_geographic_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/{billingAccount}/numberGeographic'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_billing_account_number_geographic_post_request
        )
      end

      def billing_account_number_nogeographic_get(billing_account:, country:, display_universal_directory:, legalform:, offer:, retractation:, ape: nil, city: nil, email: nil, firstname: nil, name: nil, organisation: nil, phone: nil, pool: nil, siret: nil, social_nomination: nil, specific_number: nil, street_name: nil, street_number: nil, zip: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'display_universal_directory is required' if display_universal_directory.nil?
        raise ArgumentError, 'legalform is required' if legalform.nil?
        raise ArgumentError, 'offer is required' if offer.nil?
        raise ArgumentError, 'retractation is required' if retractation.nil?

        @connection.call(
          :GET,
          '/order/telephony/{billingAccount}/numberNogeographic'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'ape' => ape, 'city' => city, 'country' => country, 'displayUniversalDirectory' => display_universal_directory, 'email' => email, 'firstname' => firstname, 'legalform' => legalform, 'name' => name, 'offer' => offer, 'organisation' => organisation, 'phone' => phone, 'pool' => pool, 'retractation' => retractation, 'siret' => siret, 'socialNomination' => social_nomination, 'specificNumber' => specific_number, 'streetName' => street_name, 'streetNumber' => street_number, 'zip' => zip }
        )
      end

      def billing_account_number_nogeographic_post(billing_account:, order_telephony_billing_account_number_nogeographic_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'order_telephony_billing_account_number_nogeographic_post_request is required' if order_telephony_billing_account_number_nogeographic_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/{billingAccount}/numberNogeographic'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_billing_account_number_nogeographic_post_request
        )
      end

      def billing_account_number_special_get(billing_account:, country:, display_universal_directory:, legalform:, range:, retractation:, siret:, social_nomination:, typology:, address_extra: nil, ape: nil, cedex: nil, city: nil, description: nil, display_search_reverse: nil, email: nil, firstname: nil, name: nil, organisation: nil, phone: nil, pool: nil, post_box: nil, specific_number: nil, street_name: nil, street_number: nil, street_number_extra: nil, street_type: nil, urban_district: nil, zip: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'display_universal_directory is required' if display_universal_directory.nil?
        raise ArgumentError, 'legalform is required' if legalform.nil?
        raise ArgumentError, 'range is required' if range.nil?
        raise ArgumentError, 'retractation is required' if retractation.nil?
        raise ArgumentError, 'siret is required' if siret.nil?
        raise ArgumentError, 'social_nomination is required' if social_nomination.nil?
        raise ArgumentError, 'typology is required' if typology.nil?

        @connection.call(
          :GET,
          '/order/telephony/{billingAccount}/numberSpecial'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'addressExtra' => address_extra, 'ape' => ape, 'cedex' => cedex, 'city' => city, 'country' => country, 'description' => description, 'displaySearchReverse' => display_search_reverse, 'displayUniversalDirectory' => display_universal_directory, 'email' => email, 'firstname' => firstname, 'legalform' => legalform, 'name' => name, 'organisation' => organisation, 'phone' => phone, 'pool' => pool, 'postBox' => post_box, 'range' => range, 'retractation' => retractation, 'siret' => siret, 'socialNomination' => social_nomination, 'specificNumber' => specific_number, 'streetName' => street_name, 'streetNumber' => street_number, 'streetNumberExtra' => street_number_extra, 'streetType' => street_type, 'typology' => typology, 'urbanDistrict' => urban_district, 'zip' => zip }
        )
      end

      def billing_account_number_special_post(billing_account:, order_telephony_billing_account_number_special_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'order_telephony_billing_account_number_special_post_request is required' if order_telephony_billing_account_number_special_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/{billingAccount}/numberSpecial'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_billing_account_number_special_post_request
        )
      end

      def billing_account_portability_get(billing_account:, call_number:, city:, country:, display_universal_directory:, name:, offer:, social_reason:, street_name:, street_number:, zip:, building: nil, contact_name: nil, contact_number: nil, desire_date: nil, door: nil, execute_as_soon_as_possible: nil, fiabilisation: nil, first_name: nil, floor: nil, line_to_redirect_alias_to: nil, list_numbers: nil, mobile_phone: nil, rio: nil, siret: nil, special_number_category: nil, stair: nil, street_number_extra: nil, street_type: nil, type: nil)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'call_number is required' if call_number.nil?
        raise ArgumentError, 'city is required' if city.nil?
        raise ArgumentError, 'country is required' if country.nil?
        raise ArgumentError, 'display_universal_directory is required' if display_universal_directory.nil?
        raise ArgumentError, 'name is required' if name.nil?
        raise ArgumentError, 'offer is required' if offer.nil?
        raise ArgumentError, 'social_reason is required' if social_reason.nil?
        raise ArgumentError, 'street_name is required' if street_name.nil?
        raise ArgumentError, 'street_number is required' if street_number.nil?
        raise ArgumentError, 'zip is required' if zip.nil?

        @connection.call(
          :GET,
          '/order/telephony/{billingAccount}/portability'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'building' => building, 'callNumber' => call_number, 'city' => city, 'contactName' => contact_name, 'contactNumber' => contact_number, 'country' => country, 'desireDate' => desire_date, 'displayUniversalDirectory' => display_universal_directory, 'door' => door, 'executeAsSoonAsPossible' => execute_as_soon_as_possible, 'fiabilisation' => fiabilisation, 'firstName' => first_name, 'floor' => floor, 'lineToRedirectAliasTo' => line_to_redirect_alias_to, 'listNumbers' => list_numbers, 'mobilePhone' => mobile_phone, 'name' => name, 'offer' => offer, 'rio' => rio, 'siret' => siret, 'socialReason' => social_reason, 'specialNumberCategory' => special_number_category, 'stair' => stair, 'streetName' => street_name, 'streetNumber' => street_number, 'streetNumberExtra' => street_number_extra, 'streetType' => street_type, 'type' => type, 'zip' => zip }
        )
      end

      def billing_account_portability_post(billing_account:, order_telephony_billing_account_portability_post_request:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'order_telephony_billing_account_portability_post_request is required' if order_telephony_billing_account_portability_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/{billingAccount}/portability'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_billing_account_portability_post_request
        )
      end

      def billing_account_security_deposit_get(amount:, billing_account:)
        raise ArgumentError, 'amount is required' if amount.nil?
        raise ArgumentError, 'billing_account is required' if billing_account.nil?

        @connection.call(
          :GET,
          '/order/telephony/{billingAccount}/securityDeposit'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          query: { 'amount' => amount }
        )
      end

      def billing_account_security_deposit_post(billing_account:, body:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/telephony/{billingAccount}/securityDeposit'
            .gsub('{billingAccount}', ERB::Util.url_encode(billing_account.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def get
        @connection.call(
          :GET,
          '/order/telephony',
          type: nil,
          auth: []
        )
      end

      def lines_get
        @connection.call(
          :GET,
          '/order/telephony/lines',
          type: nil,
          auth: []
        )
      end

      def lines_service_name_add_simultaneous_lines_get(billing_account:, quantity:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/telephony/lines/{serviceName}/addSimultaneousLines'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'billingAccount' => billing_account, 'quantity' => quantity }
        )
      end

      def lines_service_name_add_simultaneous_lines_post(service_name:, order_telephony_lines_service_name_add_simultaneous_lines_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_telephony_lines_service_name_add_simultaneous_lines_post_request is required' if order_telephony_lines_service_name_add_simultaneous_lines_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/lines/{serviceName}/addSimultaneousLines'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_lines_service_name_add_simultaneous_lines_post_request
        )
      end

      def lines_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/telephony/lines/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def lines_service_name_hardware_get(hardware:, retractation:, service_name:, mondial_relay_id: nil, shipping_contact_id: nil)
        raise ArgumentError, 'hardware is required' if hardware.nil?
        raise ArgumentError, 'retractation is required' if retractation.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/telephony/lines/{serviceName}/hardware'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'hardware' => hardware, 'mondialRelayId' => mondial_relay_id, 'retractation' => retractation, 'shippingContactId' => shipping_contact_id }
        )
      end

      def lines_service_name_hardware_post(service_name:, order_telephony_lines_service_name_hardware_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_telephony_lines_service_name_hardware_post_request is required' if order_telephony_lines_service_name_hardware_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/lines/{serviceName}/hardware'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_lines_service_name_hardware_post_request
        )
      end

      def lines_service_name_update_simultaneous_channels_get(quantity:, service_name:)
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/telephony/lines/{serviceName}/updateSimultaneousChannels'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def lines_service_name_update_simultaneous_channels_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/telephony/lines/{serviceName}/updateSimultaneousChannels'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end

      def new_get
        @connection.call(
          :GET,
          '/order/telephony/new',
          type: nil,
          auth: []
        )
      end

      def new_post
        @connection.call(
          :POST,
          '/order/telephony/new',
          type: nil,
          auth: []
        )
      end

      def spare_new_get(brand:, quantity:, shipping_contact_id:, mondial_relay_id: nil)
        raise ArgumentError, 'brand is required' if brand.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'shipping_contact_id is required' if shipping_contact_id.nil?

        @connection.call(
          :GET,
          '/order/telephony/spare/new',
          type: nil,
          auth: [],
          query: { 'brand' => brand, 'mondialRelayId' => mondial_relay_id, 'quantity' => quantity, 'shippingContactId' => shipping_contact_id }
        )
      end

      def spare_new_post(order_telephony_spare_new_post_request:)
        raise ArgumentError, 'order_telephony_spare_new_post_request is required' if order_telephony_spare_new_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/spare/new',
          type: nil,
          auth: [],
          body: order_telephony_spare_new_post_request
        )
      end

      def trunks_get
        @connection.call(
          :GET,
          '/order/telephony/trunks',
          type: nil,
          auth: []
        )
      end

      def trunks_service_name_add_simultaneous_lines_get(billing_account:, quantity:, service_name:)
        raise ArgumentError, 'billing_account is required' if billing_account.nil?
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/telephony/trunks/{serviceName}/addSimultaneousLines'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'billingAccount' => billing_account, 'quantity' => quantity }
        )
      end

      def trunks_service_name_add_simultaneous_lines_post(service_name:, order_telephony_lines_service_name_add_simultaneous_lines_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_telephony_lines_service_name_add_simultaneous_lines_post_request is required' if order_telephony_lines_service_name_add_simultaneous_lines_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/trunks/{serviceName}/addSimultaneousLines'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_lines_service_name_add_simultaneous_lines_post_request
        )
      end

      def trunks_service_name_get(service_name:)
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/telephony/trunks/{serviceName}'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: []
        )
      end

      def trunks_service_name_hardware_get(hardware:, retractation:, service_name:, mondial_relay_id: nil, shipping_contact_id: nil)
        raise ArgumentError, 'hardware is required' if hardware.nil?
        raise ArgumentError, 'retractation is required' if retractation.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/telephony/trunks/{serviceName}/hardware'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'hardware' => hardware, 'mondialRelayId' => mondial_relay_id, 'retractation' => retractation, 'shippingContactId' => shipping_contact_id }
        )
      end

      def trunks_service_name_hardware_post(service_name:, order_telephony_lines_service_name_hardware_post_request:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'order_telephony_lines_service_name_hardware_post_request is required' if order_telephony_lines_service_name_hardware_post_request.nil?

        @connection.call(
          :POST,
          '/order/telephony/trunks/{serviceName}/hardware'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: order_telephony_lines_service_name_hardware_post_request
        )
      end

      def trunks_service_name_update_simultaneous_channels_get(quantity:, service_name:)
        raise ArgumentError, 'quantity is required' if quantity.nil?
        raise ArgumentError, 'service_name is required' if service_name.nil?

        @connection.call(
          :GET,
          '/order/telephony/trunks/{serviceName}/updateSimultaneousChannels'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          query: { 'quantity' => quantity }
        )
      end

      def trunks_service_name_update_simultaneous_channels_post(service_name:, body:)
        raise ArgumentError, 'service_name is required' if service_name.nil?
        raise ArgumentError, 'body is required' if body.nil?

        @connection.call(
          :POST,
          '/order/telephony/trunks/{serviceName}/updateSimultaneousChannels'
            .gsub('{serviceName}', ERB::Util.url_encode(service_name.to_s)),
          type: nil,
          auth: [],
          body: body
        )
      end
    end
  end
end
