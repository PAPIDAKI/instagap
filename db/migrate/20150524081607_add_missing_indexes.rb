class AddMissingIndexes < ActiveRecord::Migration
  def change
  	  # add_index :productionactiviations, [:production_id, :protection_id]
        # add_index :productionactiviations, [:irrigation_id, :production_id]
        # add_index :productionactiviations, [:harvesting_id, :production_id]
        # add_index :productionactiviations, [:fertilization_id, :production_id]
        # add_index :productionactiviations, [:cultivation_id, :production_id]
        add_index :registrations, :user_id
        # add_index :registrations, [:group_id, :mcrop_id]
        add_index :activities, [:id, :type]
        # add_index :productions, :produce_id
        # add_index :productions, [:pmu_id, :produce_id]
        # add_index :productions, [:grower_id, :produce_id]
        # add_index :productions, [:group_id, :produce_id]
        # add_index :pmus, :user_id
        # add_index :pmus, [:mcrop_id, :registration_id]
        add_index :mfcs, :mcrop_id
        add_index :mfcs, :mfarmako_id
        add_index :mfcs, :mkatigori_id
        add_index :mfcs, [:mcrop_id, :mfarmako_id]
        add_index :mfarmkzizs, :mcrop_id
        add_index :mfarmkzizs, :mfarmako_id
        add_index :mfarmkasts, :mcrop_id
        add_index :mfarmkasts, :mfarmako_id
        add_index :mepembashes, :mcrop_id
        add_index :mepembashes, :mfarmako_id
        add_index :mepembashes, [:mfarmako_id, :mcrop_id]
        add_index :mastfarms, :mdosh_id
        add_index :mastfarms, :masthenium_id
        # add_index :mastfarms, :mfarmkast_id
        # add_index :growers, :user_id
        add_index :groups, :user_id
        add_index :farm_dros, :systatik_id
        add_index :farm_dros, :mfarmako_id
  end
end
