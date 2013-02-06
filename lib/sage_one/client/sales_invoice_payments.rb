module SageOne
  class Client
    module SalesInvoicePayments

      def sales_invoice_payments(sales_invoice_id)
        get("sales_invoices/#{sales_invoice_id}/payments")
      end

      def create_sales_invoice_payment(sales_invoice_id, options)
        post("sales_invoices/#{sales_invoice_id}/payments", :payment => options)
      end

      def sales_invoice_payment(sales_invoice_id, id)
        get("sales_invoices/#{sales_invoice_id}/payments/#{id}")
      end

      def delete_sales_invoice_payment!(sales_invoice_id, id)
        delete("sales_invoices/#{sales_invoice_id}/payments/#{id}")
      end
    end
  end
end
