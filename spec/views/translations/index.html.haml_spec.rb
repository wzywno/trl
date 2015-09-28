require 'rails_helper'

RSpec.describe "translations/index", type: :view do
  before(:each) do
    assign(:translations, [
      Translation.create!(
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
      ),
      Translation.create!(
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
      )
    ])
  end

  it "renders a list of translations" do
    render
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Target Language".to_s, :count => 2
    assert_select "tr>td", :text => "Source Language".to_s, :count => 2
    assert_select "tr>td", :text => "Target Text".to_s, :count => 2
    assert_select "tr>td", :text => "Text Format".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Callback Url".to_s, :count => 2
    assert_select "tr>td", :text => "Tone".to_s, :count => 2
    assert_select "tr>td", :text => "Instructions".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
