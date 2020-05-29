class ChangeTrechosDataVoltaType < ActiveRecord::Migration
  def change
    change_column :trechos, :data_volta , :date
  end
end
