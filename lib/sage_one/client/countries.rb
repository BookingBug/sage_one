module SageOne
  class Client
    module Countries

      def countries(options={})
        get("countries", options)
      end

      def country(id)
        get "countries/#{id}"
      end

    end
  end
end
