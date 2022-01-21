require "application_system_test_case"

class DetailsTest < ApplicationSystemTestCase
  setup do
    @detail = details(:one)
  end

  test "visiting the index" do
    visit details_url
    assert_selector "h1", text: "Details"
  end

  test "should create detail" do
    visit details_url
    click_on "New detail"

    fill_in "Beginning date", with: @detail.Beginning_date
    fill_in "Career highlights", with: @detail.Career_Highlights
    fill_in "Company", with: @detail.Company
    fill_in "Degree", with: @detail.Degree
    fill_in "Description", with: @detail.Description
    fill_in "End date", with: @detail.End_Date
    fill_in "Finish date", with: @detail.Finish_Date
    fill_in "Grade", with: @detail.Grade
    fill_in "Name", with: @detail.Name
    fill_in "Overview", with: @detail.Overview
    fill_in "Position", with: @detail.Position
    fill_in "Primary skills", with: @detail.Primary_Skills
    fill_in "Project url", with: @detail.Project_URL
    fill_in "School", with: @detail.School
    fill_in "Secondary skills", with: @detail.Secondary_Skills
    fill_in "Start date", with: @detail.Start_Date
    fill_in "Tech stack", with: @detail.Tech_Stack
    fill_in "Title", with: @detail.Title
    fill_in "Years of experience", with: @detail.Years_Of_Experience
    click_on "Create Detail"

    assert_text "Detail was successfully created"
    click_on "Back"
  end

  test "should update Detail" do
    visit detail_url(@detail)
    click_on "Edit this detail", match: :first

    fill_in "Beginning date", with: @detail.Beginning_date
    fill_in "Career highlights", with: @detail.Career_Highlights
    fill_in "Company", with: @detail.Company
    fill_in "Degree", with: @detail.Degree
    fill_in "Description", with: @detail.Description
    fill_in "End date", with: @detail.End_Date
    fill_in "Finish date", with: @detail.Finish_Date
    fill_in "Grade", with: @detail.Grade
    fill_in "Name", with: @detail.Name
    fill_in "Overview", with: @detail.Overview
    fill_in "Position", with: @detail.Position
    fill_in "Primary skills", with: @detail.Primary_Skills
    fill_in "Project url", with: @detail.Project_URL
    fill_in "School", with: @detail.School
    fill_in "Secondary skills", with: @detail.Secondary_Skills
    fill_in "Start date", with: @detail.Start_Date
    fill_in "Tech stack", with: @detail.Tech_Stack
    fill_in "Title", with: @detail.Title
    fill_in "Years of experience", with: @detail.Years_Of_Experience
    click_on "Update Detail"

    assert_text "Detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Detail" do
    visit detail_url(@detail)
    click_on "Destroy this detail", match: :first

    assert_text "Detail was successfully destroyed"
  end
end
