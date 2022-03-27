class CreateSecretaries < ActiveRecord::Migration[7.0]
  def change
    create_table :secretaries do |t|

      t.timestamps
    end
  end
end
