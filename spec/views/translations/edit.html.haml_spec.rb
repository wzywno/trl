require 'rails_helper'

RSpec.describe "translations/edit", type: :view do
  before(:each) do
    @translation = assign(:translation, Translation.create!(
      :text => "MyString",
      :target_language => "MyString",
      :source_language => "MyString",
      :target_text => "MyString",
      :text_format => "MyString",
      :uid => "MyString",
      :callback_url => "MyString",
      :tone => "MyString",
      :instructions => "MyString",
      :status => 1
    ))
  end

  it "renders the edit translation form" do
    render

    assert_select "form[action=?][method=?]", translation_path(@translation), "post" do

      assert_select "input#translation_text[name=?]", "translation[text]"

      assert_select "input#translation_target_language[name=?]", "translation[target_language]"

      assert_select "input#translation_source_language[name=?]", "translation[source_language]"

      assert_select "input#translation_target_text[name=?]", "translation[target_text]"

      assert_select "input#translation_text_format[name=?]", "translation[text_format]"

      assert_select "input#translation_uid[name=?]", "translation[uid]"

      assert_select "input#translation_callback_url[name=?]", "translation[callback_url]"

      assert_select "input#translation_tone[name=?]", "translation[tone]"

      assert_select "input#translation_instructions[name=?]", "translation[instructions]"

      assert_select "input#translation_status[name=?]", "translation[status]"
    end
  end
end
