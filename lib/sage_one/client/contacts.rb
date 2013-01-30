module SageOne
  class Client
    module Contacts
      # Get a contact record by ID
      # @param [Integer] id Contact ID
      # @return [Hashie::Mash] Contact record
      # @example Get a contact:
      #   SageOne.contact(12345)
      def contact(id)
        get("contacts/#{id}")
      end
      
      # List sales invoices
      # @param options [Hash] A customizable set of options.
      # @option options [String] :email to search for specific email in contacts.
      # @option options [Integer] :contact_type Use this to get either Customers(1) or Suppliers(2)
      # @option options [String] :search Use this to filter by the contact name or company name (not case sensitive)
      def contacts(options={})
        get("contacts", options)
      end
      
      # @return [Contact] A Hashie of the created contact
      # @example Create a contact:
      #     SageOne.create_contact({
      #       name: Fawad Naeem
      #       company_name: BookingBug
      #       contact_type_id: 1

      #       telephone: 11111111111
      #       mobile: 11111111111
      #       email: abc@example.com
      #       tax_reference: 123
      #       notes: test
      #       main_address: {
      #         street_one: "Regis Enterprises"
      #         street_two: "street 2"
      #         town: "town"
      #         county: "county"
      #         postcode: "12345"
      #         country_id: 1
      #       }
      #     })
      def create_contact(options)
        post('contacts', :contact => options)
      end
    end
  end
end
