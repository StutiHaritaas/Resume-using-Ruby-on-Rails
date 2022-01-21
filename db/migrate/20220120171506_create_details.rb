class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :Name
      t.string :Years_Of_Experience
      t.string :Career_Highlights
      t.string :Primary_Skills
      t.string :Secondary_Skills
      t.string :Company
      t.string :Position
      t.date :Start_Date
      t.date :End_Date
      t.string :Description
      t.string :Title
      t.string :Project_URL
      t.string :Tech_Stack
      t.string :Overview
      t.string :School
      t.string :Degree
      t.string :Grade
      t.date :Beginning_date
      t.date :Finish_Date

      t.timestamps
    end
  end
end
