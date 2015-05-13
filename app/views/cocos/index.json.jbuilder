json.array!(@cocos) do |coco|
  json.extract! coco, :id, :name, :description
  json.url coco_url(coco, format: :json)
end
