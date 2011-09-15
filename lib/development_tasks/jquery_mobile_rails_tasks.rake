desc "Fix the images path in the jquery-mobile css files and rename css to erb"
task :"jquery_mobile_rails_css_fix" do
  STYLESHEETS_PATH  = "vendor/assets/stylesheets"
  IMAGES_PATH       = "assets/"

  Dir.glob(File.join(STYLESHEETS_PATH, "*.css")).each do |css_file_name|
    file_content = File.read(css_file_name)
    file_content.gsub! /url\(images\/([A-Za-z0-9_-]*\.png)\)/ do
      "url(<%= asset_path 'jquery-mobile/#{$1}' %>)"
    end

    File.open(css_file_name, 'w') do |file|
      file << file_content
    end

    File.rename(css_file_name, "#{css_file_name}.erb")
  end

end
