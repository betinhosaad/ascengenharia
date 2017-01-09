class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.date :data
      t.belongs_to :clima, index: true, foreign_key: true
      t.text :tarefas
      t.text :ocorrencias
      t.belongs_to :obra, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
