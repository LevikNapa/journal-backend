class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :date
end
