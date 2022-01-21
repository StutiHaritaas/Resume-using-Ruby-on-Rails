require "test_helper"

class DetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get details_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_url
    assert_response :success
  end

  test "should create detail" do
    assert_difference("Detail.count") do
      post details_url, params: { detail: { Beginning_date: @detail.Beginning_date, Career_Highlights: @detail.Career_Highlights, Company: @detail.Company, Degree: @detail.Degree, Description: @detail.Description, End_Date: @detail.End_Date, Finish_Date: @detail.Finish_Date, Grade: @detail.Grade, Name: @detail.Name, Overview: @detail.Overview, Position: @detail.Position, Primary_Skills: @detail.Primary_Skills, Project_URL: @detail.Project_URL, School: @detail.School, Secondary_Skills: @detail.Secondary_Skills, Start_Date: @detail.Start_Date, Tech_Stack: @detail.Tech_Stack, Title: @detail.Title, Years_Of_Experience: @detail.Years_Of_Experience } }
    end

    assert_redirected_to detail_url(Detail.last)
  end

  test "should show detail" do
    get detail_url(@detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_url(@detail)
    assert_response :success
  end

  test "should update detail" do
    patch detail_url(@detail), params: { detail: { Beginning_date: @detail.Beginning_date, Career_Highlights: @detail.Career_Highlights, Company: @detail.Company, Degree: @detail.Degree, Description: @detail.Description, End_Date: @detail.End_Date, Finish_Date: @detail.Finish_Date, Grade: @detail.Grade, Name: @detail.Name, Overview: @detail.Overview, Position: @detail.Position, Primary_Skills: @detail.Primary_Skills, Project_URL: @detail.Project_URL, School: @detail.School, Secondary_Skills: @detail.Secondary_Skills, Start_Date: @detail.Start_Date, Tech_Stack: @detail.Tech_Stack, Title: @detail.Title, Years_Of_Experience: @detail.Years_Of_Experience } }
    assert_redirected_to detail_url(@detail)
  end

  test "should destroy detail" do
    assert_difference("Detail.count", -1) do
      delete detail_url(@detail)
    end

    assert_redirected_to details_url
  end
end
