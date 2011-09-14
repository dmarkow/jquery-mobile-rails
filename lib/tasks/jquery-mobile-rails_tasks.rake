desc "Fix the images path in the jquery-mobile css files"
task :"jquery-mobile-rails-image-fix" do
  STYLESHEETS_PATH  = "vendor/assets/stylesheets"
  IMAGES_PATH       = "assets/"

  Dir.glob(File.join(STYLESHEETS_PATH, "*.css")).each do |css_file_name|
    file_content = File.read(css_file_name)
    file_content.gsub!(/url\(images\//, "url(assets/")

    File.open(css_file_name, 'w') do |file|
      file << file_content
    end
  end

end
