class JournalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :description, :image_url, :category_id, :category
end
