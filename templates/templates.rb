require 'ruble'

template "PHP Template" do |t|
  t.filetype = "*.php"
  t.invoke do |context|
    ENV['TM_DATE'] = Time.now.strftime("%Y-%m-%d")
    raw_contents = IO.read("#{ENV['TM_BUNDLE_SUPPORT']}/../templates/template.php")
    raw_contents.gsub(/\$\{([^}]*)\}/) {|match| ENV[match[2..-2]] }
 end
end