module Harvesting
  module Models
    # An expense record from your Harvest account.
    #
    # For more information: https://help.getharvest.com/api-v2/expenses-api/expenses/expenses/
    class Expense < HarvestRecord
      attributed :id,
                 :client,
                 :project,
                 :expense_category,
                 :user,
                 :user_assignment,
                 :receipt,
                 :invoice,
                 :notes,
                 :billable,
                 :is_closed,
                 :is_locked,
                 :is_billed,
                 :locked_reason,
                 :spent_date,
                 :created_at,
                 :updated_at,
                 :total_cost

      def path
        @attributes['id'].nil? ? "expenses" : "expenses/#{@attributes['id']}"
      end
    end
  end
end
