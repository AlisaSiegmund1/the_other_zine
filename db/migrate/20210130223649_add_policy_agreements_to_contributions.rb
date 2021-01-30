class AddPolicyAgreementsToContributions < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :policy_agreement, :boolean

  end
end
