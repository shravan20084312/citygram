Sequel.migration do
  up do
    alter_table :subscriptions do
      add_column :local_resident_sw, Integer
      add_column :non_local_resident_location, String
    end
  end

  down do
    alter_table :subscriptions do
      drop_column :local_resident_sw
      drop_column :non_local_resident_location
    end
  end
end
