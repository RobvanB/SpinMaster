require 'rails_helper'

RSpec.describe "spin_headers/index", type: :view do
  before(:each) do
    assign(:spin_headers, [
      SpinHeader.create!(
        :SpinHeader => "Spin Header",
        :file_store_id => 1,
        :notes => "Notes",
        :stage => "Stage",
        :distance_recorded => "9.99",
        :avg_speed_recorded => "9.99",
        :avg_watts_recorded => 2,
        :avg_hr_recorded => 3,
        :avg_rpm_recorded => 4,
        :max_speed_recorded => "9.99",
        :max_watts_recorded => 5,
        :max_hr_recorded => 6,
        :max_rpm_recorded => 7,
        :kcal_recorded => 8,
        :kj_recorded => 9,
        :distance_calc => "9.99",
        :avg_speed_calc => "9.99",
        :avg_watts_calc => 10,
        :avg_hr_calc => 11,
        :avg_rpm_calc => 12,
        :max_speed_calc => "9.99",
        :max_watts_calc => 13,
        :max_hr_calc => 14,
        :max_rpm_calc => 15
      ),
      SpinHeader.create!(
        :SpinHeader => "Spin Header",
        :file_store_id => 1,
        :notes => "Notes",
        :stage => "Stage",
        :distance_recorded => "9.99",
        :avg_speed_recorded => "9.99",
        :avg_watts_recorded => 2,
        :avg_hr_recorded => 3,
        :avg_rpm_recorded => 4,
        :max_speed_recorded => "9.99",
        :max_watts_recorded => 5,
        :max_hr_recorded => 6,
        :max_rpm_recorded => 7,
        :kcal_recorded => 8,
        :kj_recorded => 9,
        :distance_calc => "9.99",
        :avg_speed_calc => "9.99",
        :avg_watts_calc => 10,
        :avg_hr_calc => 11,
        :avg_rpm_calc => 12,
        :max_speed_calc => "9.99",
        :max_watts_calc => 13,
        :max_hr_calc => 14,
        :max_rpm_calc => 15
      )
    ])
  end

  it "renders a list of spin_headers" do
    render
    assert_select "tr>td", :text => "Spin Header".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Stage".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
  end
end
