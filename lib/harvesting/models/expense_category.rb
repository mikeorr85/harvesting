module Harvesting
  module Models
    # An expense category record from your Harvest account.
    #
    # For more information: https://help.getharvest.com/api-v2/expenses-api/expenses/expense-categories/
    class ExpenseCategory < HarvestRecord
      attributed :id,
                 :name,
                 :unit_name,
                 :unit_price,
                 :is_active,
                 :created_at,
                 :updated_at

      def path
        @attributes['id'].nil? ? "expense_categories" : "expense_categories/#{@attributes['id']}"
      end
    end
  end
end
