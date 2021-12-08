json.userId @album.select { |album| album }.pluck("userId").join(', ')
json.id @album.select { |album| album }.pluck("id").join(', ')
json.title @album.select { |album| album }.pluck("title").join(', ')