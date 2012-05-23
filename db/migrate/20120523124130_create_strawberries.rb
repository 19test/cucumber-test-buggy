class CreateStrawberries < ActiveRecord::Migration
  def change
    create_table :strawberries do |t|
      t.string :color

      t.timestamps
    end
  end
end
