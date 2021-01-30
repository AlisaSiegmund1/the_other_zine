class RemovePolicyAgreementToContributions < ActiveRecord::Migration[5.2]
  def change
    remove_column :contributions, :policy_agreement, :string
  end
end
