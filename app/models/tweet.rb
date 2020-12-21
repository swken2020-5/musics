class Tweet < ApplicationRecord
    mount_uploader :file, AudioFileUploader
end
