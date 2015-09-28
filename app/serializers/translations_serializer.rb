class TranslationsSerializer < ActiveModel::Serializer
  attributes :id, :text, :target_language, :source_language, :target_text, :text_format, :uid, :callback_url, :tone, :instructions, :status
end
