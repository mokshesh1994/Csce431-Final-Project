class CreateParameters < ActiveRecord::Migration
  
  def up
    create_table :parameters do |t|
      t.string "main_image_1"
      t.string "main_image_1_title"
      t.string "main_image_1_subtitle"
      t.string "main_image_2"
      t.string "main_image_2_title"
      t.string "main_image_2_subtitle"
      t.string "main_image_3"
      t.string "main_image_3_title"
      t.string "main_image_3_subtitle"
      t.string "main_image_4"
      t.string "main_image_4_title"
      t.string "main_image_4_subtitle"
      t.string "main_image_5"
      t.string "main_image_5_title"
      t.string "main_image_5_subtitle"
      t.string "main_image_6"
      t.string "main_image_6_title"
      t.string "main_image_6_subtitle"
      
      t.string "about_title"
      t.text "about_description"
      
      t.string "committees_title"
      t.text "committees_description"
      
      t.string "sponsors_title"
      t.text "sponsors_description"
      
      t.string "events_title"
      t.text "events_description"
      
      t.string "exboard_title"
      t.text "exboard_description"
      
      t.string "excouncil_title"
      t.text "excouncil_description"
      
      t.string "login_title"
      
      t.string "members_title"
      t.text "members_description"
      t.string "members_link"
      t.string "members_footer"
      
      t.string "students_title"
      t.text "students_description"
      t.string "students_link"
      t.string "students_footer"
      
      t.string "companies_title"
      t.text "companies_description"
      t.string "companies_link"
      t.string "companies_footer"
      
      t.string "contactus_title"
      t.string "contactus_header"
      t.string "contactus_address"
      t.string "contactus_phone"
      t.string "contactus_url"
      
      t.string "calendar_title"
      t.text "calendar_description"

      t.timestamps null: false
    end
  end
  
  def down
    drop_table :parameters
  end
  
end
