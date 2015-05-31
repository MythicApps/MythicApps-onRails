class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :email
      t.string :gender_identity
      t.string :school
      t.boolean :this_is_my_first_hackathon
      t.boolean :i_will_not_be_traveling_from_my_school
      t.string :i_will_be_traveling_from
      t.string :resume
      t.string :github
      t.string :dribbble
      t.string :linkedin
      t.string :personal_site
      t.text :free_response

      t.timestamps
    end
  end
end
