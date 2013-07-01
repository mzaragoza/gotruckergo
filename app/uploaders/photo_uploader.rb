# encoding: utf-8
class PhotoUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  #include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  #def store_dir
  #  "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  #end

  #def extension_white_list
  #   %w(jpg jpeg gif png)
  #end

  #version :thumb do
  #  process :resize_to_limit => [200, 200]
  #end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  # # do something
  # end

end

