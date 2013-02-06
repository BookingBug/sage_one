module SageOne
  class Client
    module BankAccounts

      def bank_accounts
        get("bank_accounts")
      end

      def bank_account(id)
        get "bank_accounts/#{id}"
      end

    end
  end
end
