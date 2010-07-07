require 'ruble'
command 'Documentation for Word' do |cmd|
  cmd.key_binding = 'CONTROL+H'
  cmd.scope = 'source.php'
  cmd.output = :show_as_html
  cmd.input = :selection, :word
  cmd.invoke do |context|
    word = STDIN.read
    target = `grep -i "^#{word}=" "#{ENV['TM_BUNDLE_SUPPORT']}/documentation.txt"`
    if target
      target=target.split("=")[1]
      url = "http://php.net/manual/en/" + target
    else
      target="function.\${#{word}//_/-}"
      url = "http://php.net/manual/en/" + target
    end
    # This is a hack to open the internal browser and point it to the php.net page.
    "<meta http-equiv='Refresh' content='0;URL=#{url}'>"
  end
end
