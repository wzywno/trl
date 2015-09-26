json.array!(@translations) do |translation|
  json.extract! translation, :id, :text, :target_language, :source_language, :target_text, :text_format, :uid, :callback_url, :tone, :instructions, :status
  json.url translation_url(translation, format: :json)
end
