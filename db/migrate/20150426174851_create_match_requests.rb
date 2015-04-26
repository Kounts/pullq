class CreateMatchRequests < ActiveRecord::Migration
  def change
    create_table :match_requests do |t|
    	t.references :requestor
    	t.references :requestee
    	t.timestamps
    end
  end
end
