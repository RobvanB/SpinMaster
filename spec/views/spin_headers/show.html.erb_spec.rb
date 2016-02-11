require 'rails_helper'

RSpec.describe "spin_headers/show", type: :view do
  before(:each) do
    @spin_header = assign(:spin_header, SpinHeader.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Spin Header/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Notes/)
    expect(rendered).to match(/Stage/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
  end
end
