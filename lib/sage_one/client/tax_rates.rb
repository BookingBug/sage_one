module SageOne
  class Client
    module TaxRates

      def tax_rates(options={})
        get("tax_rates", options)
      end

      def tax_rate(id)
        get "tax_rates/#{id}"
      end

    end
  end
end
