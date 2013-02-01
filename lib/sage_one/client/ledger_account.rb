module SageOne
  class Client
    module LedgerAccounts

      def ledger_accounts(options={})
        get("ledger_accounts", options)
      end

      def create_ledger_account(options)
        post('ledger_accounts', :ledger_account => options)
      end

      def ledger_account(id)
        get "ledger_accounts/#{id}"
      end

      def update_ledger_account(id, options)
        put("ledger_accounts/#{id}", :ledger_account => options)
      end

      def delete_ledger_account!(id)
        delete("ledger_accounts/#{id}")
      end
    end
  end
end
