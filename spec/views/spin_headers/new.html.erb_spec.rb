require 'rails_helper'

RSpec.describe "spin_headers/new", type: :view do
  before(:each) do
    assign(:spin_header, SpinHeader.new(
      :SpinHeader => "MyString",
      :file_store_id => 1,
      :notes => "MyString",
      :stage => "MyString",
      :distance_recorded => "9.99",
      :avg_speed_recorded => "9.99",
      :avg_watts_recorded => 1,
      :avg_hr_recorded => 1,
      :avg_rpm_recorded => 1,
      :max_speed_recorded => "9.99",
      :max_watts_recorded => 1,
      :max_hr_recorded => 1,
      :max_rpm_recorded => 1,
      :kcal_recorded => 1,
      :kj_recorded => 1,
      :distance_calc => "9.99",
      :avg_speed_calc => "9.99",
      :avg_watts_calc => 1,
      :avg_hr_calc => 1,
      :avg_rpm_calc => 1,
      :max_speed_calc => "9.99",
      :max_watts_calc => 1,
      :max_hr_calc => 1,
      :max_rpm_calc => 1
    ))
  end

  it "renders new spin_header form" do
    render

    assert_select "form[action=?][method=?]", spin_headers_path, "post" do

      assert_select "input#spin_header_SpinHeader[name=?]", "spin_header[SpinHeader]"

      assert_select "input#spin_header_file_store_id[name=?]", "spin_header[file_store_id]"

      assert_select "input#spin_header_notes[name=?]", "spin_header[notes]"

      assert_select "input#spin_header_stage[name=?]", "spin_header[stage]"

      assert_select "input#spin_header_distance_recorded[name=?]", "spin_header[distance_recorded]"

      assert_select "input#spin_header_avg_speed_recorded[name=?]", "spin_header[avg_speed_recorded]"

      assert_select "input#spin_header_avg_watts_recorded[name=?]", "spin_header[avg_watts_recorded]"

      assert_select "input#spin_header_avg_hr_recorded[name=?]", "spin_header[avg_hr_recorded]"

      assert_select "input#spin_header_avg_rpm_recorded[name=?]", "spin_header[avg_rpm_recorded]"

      assert_select "input#spin_header_max_speed_recorded[name=?]", "spin_header[max_speed_recorded]"

      assert_select "input#spin_header_max_watts_recorded[name=?]", "spin_header[max_watts_recorded]"

      assert_select "input#spin_header_max_hr_recorded[name=?]", "spin_header[max_hr_recorded]"

      assert_select "input#spin_header_max_rpm_recorded[name=?]", "spin_header[max_rpm_recorded]"

      assert_select "input#spin_header_kcal_recorded[name=?]", "spin_header[kcal_recorded]"

      assert_select "input#spin_header_kj_recorded[name=?]", "spin_header[kj_recorded]"

      assert_select "input#spin_header_distance_calc[name=?]", "spin_header[distance_calc]"

      assert_select "input#spin_header_avg_speed_calc[name=?]", "spin_header[avg_speed_calc]"

      assert_select "input#spin_header_avg_watts_calc[name=?]", "spin_header[avg_watts_calc]"

      assert_select "input#spin_header_avg_hr_calc[name=?]", "spin_header[avg_hr_calc]"

      assert_select "input#spin_header_avg_rpm_calc[name=?]", "spin_header[avg_rpm_calc]"

      assert_select "input#spin_header_max_speed_calc[name=?]", "spin_header[max_speed_calc]"

      assert_select "input#spin_header_max_watts_calc[name=?]", "spin_header[max_watts_calc]"

      assert_select "input#spin_header_max_hr_calc[name=?]", "spin_header[max_hr_calc]"

      assert_select "input#spin_header_max_rpm_calc[name=?]", "spin_header[max_rpm_calc]"
    end
  end
end
