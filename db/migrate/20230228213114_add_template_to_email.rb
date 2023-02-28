class AddTemplateToEmail < ActiveRecord::Migration[7.0]
  def change
    add_reference :emails, :template, index: true, foreign_key: true
  end
end
