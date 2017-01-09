class AddReportIdToFuncionarios < ActiveRecord::Migration
  def change
    add_column :funcionarios, :report_id, :integer
  end
end
