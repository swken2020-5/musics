class Tweet < ApplicationRecord
# ここから追記
  mount_uploader :file, AudiofileUploader
# ここまで追記
  
end
