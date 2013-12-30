# encoding: utf-8
#

desc "Fix the images path in the jquery-mobile css files and rename css to erb"
task :"jquery_mobile_rails_css_fix" do
  STYLESHEETS_PATH  = "vendor/assets/stylesheets"
  IMAGES_PATH       = "assets/"

  Dir.glob(File.join(STYLESHEETS_PATH, "*.css")).each do |css_file_name|
    puts css_file_name
    file_content = ''
    file_content = File.read(css_file_name, mode: "r:UTF-8")

    file_content.gsub! /url\(images\/(.*\.)(png|gif)\)/ do
      "image-url(\"jquery-mobile/#{$1}#{$2}\")"
    end

    File.write(css_file_name, file_content)
    File.rename(css_file_name, "#{css_file_name}.scss")
  end

end
