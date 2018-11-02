class CreateSessionHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :session_histories do |t|
      t.integer :session_id
      t.string :started_by
      t.string :created_at
      t.integer :summary_status
      t.decimal :duration
      t.decimal :worker_time
      t.integer :bundle_time
      t.integer :num_workers
      t.string :branch
      t.string :commit_id
      t.integer :started_tests_count
      t.integer :passed_tests_count
      t.integer :failed_tests_count
      t.integer :pending_tests_count
      t.integer :skipped_tests_count
      t.integer :error_tests_count
    end
  end
end
