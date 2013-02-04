module SageOne
  class Client
    module LedgerAccounts

      def ledger_accounts(options={})
        get("ledger_accounts", options)
      end

      def ledger_account(id)
        get "ledger_accounts/#{id}"
      end

    end
  end
end
