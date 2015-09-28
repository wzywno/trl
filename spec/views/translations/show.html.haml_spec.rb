require 'rails_helper'

RSpec.describe "translations/show", type: :view do
  before(:each) do
    @translation = assign(:translation, Translation.create!(
      :text => "Text",
      :target_language => "Target Language",
      :source_language => "Source Language",
      :target_text => "Target Text",
      :text_format => "Text Format",
      :uid => "Uid",
      :callback_url => "Callback Url",
      :tone => "Tone",
      :instructions => "Instructions",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Target Language/)
    expect(rendered).to match(/Source Language/)
    expect(rendered).to match(/Target Text/)
    expect(rendered).to match(/Text Format/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/Callback Url/)
    expect(rendered).to match(/Tone/)
    expect(rendered).to match(/Instructions/)
    expect(rendered).to match(/1/)
  end
end
