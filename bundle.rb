require 'ruble'

bundle 'PHP' do |bundle|
  bundle.author = 'Ciar�n Walsh'
  bundle.contact_email_rot_13 = 'pvnjny@tznvy.pbz'
  bundle.description =  <<END
<a href="http://www.php.net/">PHP</a> is a widely-used general-purpose scripting language that is especially suited for web development and can be embedded into HTML.
END
  start_folding = /(\/\*|\{\s*$|<<<HTML)/
  end_folding = /(\*\/|^\s*\}|^HTML;)/
  bundle.folding['source.php'] = start_folding, end_folding

  bundle.menu 'PHP' do |main_menu|
    main_menu.command 'Documentation for Word'
    main_menu.separator
    main_menu.menu 'Declarations' do |submenu|
      submenu.menu 'Wrapped in <?php ?>' do |submenu2|
        submenu2.command '<?php ... ?>'
        submenu2.command '<?php echo ... ?>'
        submenu2.command '<?php echo htmlentities(...) ?>'
        submenu2.command '<?php if (...) ?> ... <?php endif ?>'
        submenu2.command '<?php if (...) ?> ... <?php else ?> ... <?php endif ?>'
        submenu2.command '<?php else: ?>'
        submenu2.command '<?php foreach (...) ... <?php endforeach ?>'
        submenu2.command '<?php $this->... ?>'
        submenu2.command '<?php echo $this->... ?>'
      end
      submenu.separator
      submenu.command 'if ...'
      submenu.command 'if ... else ...'
      submenu.command 'else ...'
      submenu.command 'elseif ...'
      submenu.command 'for ...'
      submenu.command 'foreach ...'
      submenu.command 'switch ...'
      submenu.command 'case ...'
      submenu.command 'while ...'
      submenu.command 'do ... while ...'
      submenu.command 'class ...'
      submenu.command 'function ...'
      submenu.separator
      submenu.command 'Throw Exception'
      # submenu.command 'Wrap in try { ... } catch (...) { ... }'
      # submenu.command 'Insert Call to Parent'
    end
    main_menu.menu 'Globals' do |submenu|
      submenu.command '$GLOBALS[\'...\']'
      submenu.command 'COOKIE[\'...\']'
      submenu.command 'ENV[\'...\']'
      submenu.command 'FILES[\'...\']'
      submenu.command 'GET[\'...\']'
      submenu.command 'POST[\'...\']'
      submenu.command 'REQUEST[\'...\']'
      submenu.command 'SERVER[\'...\']'
      submenu.command 'SESSION[\'...\']'
    end
    main_menu.menu 'Return' do |submenu|
      submenu.command 'return'
      submenu.command 'return true'
      submenu.command 'return false'
    end
    main_menu.separator
    main_menu.menu 'PHPDoc' do |submenu|
      submenu.command 'Documentation for Tag'
      submenu.separator
      submenu.command 'Start Docblock'
      #submenu.command 'Post-doc'
      #submenu.command 'Wrap Docblock at 80 Characters'
      submenu.separator
      submenu.command 'Class'
      submenu.command 'Class Variable'
      submenu.separator
      submenu.command 'Constant Definition'
      submenu.separator
      submenu.command 'Function'
      submenu.command 'Function Signature'
      submenu.separator
      submenu.command 'Header'
      submenu.command 'Interface'
    end
  end
end

# Special ENV vars for PHP scope
env 'source.php' do |e|
  e['TM_COMMENT_START'] = '// '
  e['TM_COMMENT_START_2'] = '# '
  e['TM_COMMENT_START_3'] = '/* '
  e['TM_COMMENT_END_3'] = '*/'
end
