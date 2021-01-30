class AddPolicyAgreementToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :policy_agreement, :string
  end
end
