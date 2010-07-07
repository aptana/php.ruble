snippet 'COOKIE[\'...\']' do |s|
  s.trigger = '$_'
  s.scope = 'source.php'
  s.expansion = '\$_COOKIE[\'${1:variable}\']'
end

snippet 'ENV[\'...\']' do |s|
  s.trigger = '$_'
  s.scope = 'source.php'
  s.expansion = '\$_ENV[\'${1:variable}\']'
end

snippet 'FILES[\'...\']' do |s|
  s.trigger = '$_'
  s.scope = 'source.php'
  s.expansion = '\$_FILES[\'${1:variable}\']'
end

snippet 'GET[\'...\']' do |s|
  s.trigger = '$_'
  s.scope = 'source.php'
  s.expansion = '\$_GET[\'${1:variable}\']'
end

snippet 'POST[\'...\']' do |s|
  s.trigger = '$_'
  s.scope = 'source.php'
  s.expansion = '\$_POST[\'${1:variable}\']'
end

snippet 'REQUEST[\'...\']' do |s|
  s.trigger = '$_'
  s.scope = 'source.php'
  s.expansion = '\$_REQUEST[\'${1:variable}\']'
end

snippet 'SERVER[\'...\']' do |s|
  s.trigger = '$_'
  s.scope = 'source.php'
  s.expansion = '\$_SERVER[\'${1:variable}\']'
end

snippet 'SESSION[\'...\']' do |s|
  s.trigger = '$_'
  s.scope = 'source.php'
  s.expansion = '\$_SESSION[\'${1:variable}\']'
end

snippet '$GLOBALS[\'...\']' do |s|
  s.trigger = 'globals'
  s.scope = 'source.php'
  s.expansion = '\$GLOBALS[\'${1:variable}\']${2: = }${3:something}${4:;}$0'
end

snippet '<?php $this->... ?>' do |s|
  s.trigger = 'this'
  s.scope = 'text.html - source'
  s.expansion = '<?${TM_PHP_OPEN_TAG:php} \$this->$0 ?>'
end

snippet '<?php ... ?>' do |s|
  s.trigger = 'php'
  s.scope = 'text.html'
  s.expansion = '<?${TM_PHP_OPEN_TAG:php} $0 ?>'
end

snippet '<?php echo $this->... ?>' do |s|
  s.trigger = 'ethis'
  s.scope = 'text.html - source'
  s.expansion = '<?${TM_PHP_OPEN_TAG_WITH_ECHO:php echo} \$this->$0 ?>'
end

snippet '<?php echo ... ?>' do |s|
  s.trigger = 'echo'
  s.scope = 'text.html'
  s.expansion = '<?${TM_PHP_OPEN_TAG_WITH_ECHO:php echo} ${1:\$var} ?>$0'
end

snippet '<?php echo htmlentities(...) ?>' do |s|
  s.trigger = 'echoh'
  s.scope = 'text.html'
  s.expansion = '<?${TM_PHP_OPEN_TAG_WITH_ECHO:php echo} htmlentities(${1:\$var}, ENT_QUOTES, \'utf-8\') ?>$0'
end

snippet '<?php else: ?>' do |s|
  s.trigger = 'else'
  s.scope = 'text.html'
  s.expansion = '<?${TM_PHP_OPEN_TAG:php} else: ?>'
end

snippet '<?php foreach (...) ... <?php endforeach ?>' do |s|
  s.trigger = 'foreach'
  s.scope = 'text.html'
  s.expansion = '<?${TM_PHP_OPEN_TAG:php} foreach (\$${1:variable} as \$${2:key} => \$${3:value}): ?>
	${0}
<?${TM_PHP_OPEN_TAG:php} endforeach ?>'
end

snippet '<?php if (...) ?> ... <?php else ?> ... <?php endif ?>' do |s|
  s.trigger = 'ifelse'
  s.scope = 'text.html'
  s.expansion = '<?${TM_PHP_OPEN_TAG:php} if (${1:condition}): ?>
	$2
<?${TM_PHP_OPEN_TAG:php} else: ?>
	$0
<?${TM_PHP_OPEN_TAG:php} endif ?>'
end

snippet '<?php if (...) ?> ... <?php endif ?>' do |s|
  s.trigger = 'if'
  s.scope = 'text.html'
  s.expansion = '<?${TM_PHP_OPEN_TAG:php} if (${1:condition}): ?>
	$0
<?${TM_PHP_OPEN_TAG:php} endif ?>'
end

snippet '?>...<?php' do |s|
  s.trigger = 'php'
  s.scope = 'source.php'
  s.expansion = '?>$0<?${TM_PHP_OPEN_TAG:php}'
end

snippet 'class ...' do |s|
  s.trigger = 'class'
  s.scope = 'source.php'
  s.expansion = '/**
 * $1
 */
class ${2:ClassName} extends ${3:AnotherClass} {
	$4
	function ${5:__construct}(${6:$argument}) {
		${0:// code...}
	}
}
'
end

snippet 'define(..., ...)' do |s|
  s.trigger = 'def'
  s.scope = 'source.php'
  s.expansion = 'define(\'$1\', \'$2\');
$0'
end

snippet 'defined(...)' do |s|
  s.trigger = 'def?'
  s.scope = 'source.php'
  s.expansion = 'defined(\'$1\')$0'
end

snippet 'do ... while ...' do |s|
  s.trigger = 'do'
  s.scope = 'source.php'
  s.expansion = 'do {
	${0:// code...}
} while (${1:$a <= 10});'
end

snippet 'echo "..."' do |s|
  s.trigger = 'echo'
  s.scope = 'source.php'
  s.expansion = 'echo "${1:string}"${0};'
end

snippet 'else ...' do |s|
  s.trigger = 'else'
  s.scope = 'source.php'
  s.expansion = 'else {
	${0:// code...}
}'
end

snippet 'elseif ...' do |s|
  s.trigger = 'elseif'
  s.scope = 'source.php'
  s.expansion = 'elseif (${1:condition}) {
	${0:// code...}
}'
end

snippet 'for ...' do |s|
  s.trigger = 'for'
  s.scope = 'source.php'
  s.expansion = 'for (\$${1:i}=${2:0}; \$${1:i} < $3; \$${1:i}++) { 
	${0:// code...}
}'
end

snippet 'foreach ...' do |s|
  s.trigger = 'foreach'
  s.scope = 'source.php'
  s.expansion = 'foreach (\$${1:variable} as \$${2:key} => \$${3:value}) {
	${0:// code...}
}'
end

snippet 'function ...' do |s|
  s.trigger = 'fun'
  s.scope = 'source.php'
  s.expansion = '${1:public }function ${2:functionName}(\$${3:value}${4:=\'\'})
{
	${0:// code...}
}'
end

snippet 'Heredoc' do |s|
  s.trigger = '<<<'
  s.scope = 'source.php'
  s.expansion = '<<<${1:HTML}
${2:content here}
$1;
'
end

snippet '$... = ( ... ) ? ... : ...' do |s|
  s.trigger = 'if?'
  s.scope = 'source.php'
  s.expansion = '\$${1:retVal} = (${2:condition}) ? ${3:a} : ${4:b} ;'
end

snippet 'if ... else ...' do |s|
  s.trigger = 'ifelse'
  s.scope = 'source.php'
  s.expansion = 'if (${1:condition}) {
	${2:// code...}
} else {
	${3:// code...}
}
$0'
end

snippet 'if ...' do |s|
  s.trigger = 'if'
  s.scope = 'source.php'
  s.expansion = 'if (${1:condition}) {
	${0:// code...}
}'
end

snippet 'include ...' do |s|
  s.trigger = 'incl'
  s.scope = 'source.php'
  s.expansion = 'include \'${1:file}\';$0'
end

snippet 'include_once ...' do |s|
  s.trigger = 'incl1'
  s.scope = 'source.php'
  s.expansion = 'include_once \'${1:file}\';$0'
end

snippet '$... = array (...)' do |s|
  s.trigger = 'array'
  s.scope = 'source.php'
  s.expansion = '\$${1:arrayName} = array(\'$2\' => ${3:,} $0);'
end

snippet 'Class Variable' do |s|
  s.trigger = 'doc_v'
  s.scope = 'source.php'
  s.expansion = '/**
 * ${3:undocumented class variable}
 *
 * @var ${4:string}
 */
${1:var} \$$2;$0'
end

snippet 'Class' do |s|
  s.trigger = 'doc_c'
  s.scope = 'source.php'
  s.expansion = '/**
 * ${3:undocumented class}
 *
 * @package ${4:default}
 * @author ${PHPDOC_AUTHOR} $5
 */
class ${1:ClassName} {$0
} // END'
end

snippet 'Constant Definition' do |s|
  s.trigger = 'doc_d'
  s.scope = 'source.php'
  s.expansion = '/**
 * ${3:undocumented constant}
 */
define($1, $2);$0'
end

snippet 'Function Signature' do |s|
  s.trigger = 'doc_s'
  s.scope = 'source.php'
  s.expansion = '/**
 * ${4:undocumented function}
 *
 * @return ${5:void}
 * @author ${PHPDOC_AUTHOR} $6
 */
function ${1:functionName}($2);$0'
end

snippet 'Function' do |s|
  s.trigger = 'doc_f'
  s.scope = 'source.php'
  s.expansion = '/**
 * ${4:undocumented function}
 *
 * @return ${5:void}
 * @author ${PHPDOC_AUTHOR} $6
 */
function ${1:functionName}($2) {$0
}'
end

snippet 'Header' do |s|
  s.trigger = 'doc_h'
  s.scope = 'source.php'
  s.expansion = '/**
 * $1
 *
 * @author ${PHPDOC_AUTHOR}
 * @version \$Id\$
 * @copyright $2
 * @package ${3:default}
 */

/**
 * Define DocBlock
 */
'
end

snippet 'Interface' do |s|
  s.trigger = 'doc_i'
  s.scope = 'source.php'
  s.expansion = '/**
 * ${2:undocumented interface}
 *
 * @package ${3:default}
 * @author ${PHPDOC_AUTHOR} $4
 */
interface ${1:InterfaceName} {$0
} // END interface $1'
end

snippet 'require ...' do |s|
  s.trigger = 'req'
  s.scope = 'source.php'
  s.expansion = 'require \'${1:file}\';$0'
end

snippet 'require_once ...' do |s|
  s.trigger = 'req1'
  s.scope = 'source.php'
  s.expansion = 'require_once \'${1:file}\';$0'
end

snippet 'return' do |s|
  s.trigger = 'ret'
  s.scope = 'source.php'
  s.expansion = 'return$1;$0'
end

snippet 'return false' do |s|
  s.trigger = 'ret0'
  s.scope = 'source.php'
  s.expansion = 'return false;$0'
end

snippet 'return true' do |s|
  s.trigger = 'ret1'
  s.scope = 'source.php'
  s.expansion = 'return true;$0'
end

snippet 'Special: Return Between PHP Tags' do |s|
  # FIXME No tab trigger, probably needs to become command
  s.key_binding = 'ENTER'
  s.scope = 'meta.consecutive-tags.php'
  s.expansion = '
	$0
'
end

snippet 'Start Docblock' do |s|
  s.trigger = '/**'
  s.scope = 'source.php'
  s.expansion = '/**
 * $0
 */'
end

snippet 'case ...' do |s|
  s.trigger = 'case'
  s.scope = 'source.php'
  s.expansion = 'case \'${1:variable}\':
	${0:// code...}
	break;'
end

snippet 'switch ...' do |s|
  s.trigger = 'switch'
  s.scope = 'source.php'
  s.expansion = 'switch (${1:variable}) {
	case \'${2:value}\':
		${3:// code...}
		break;
	$0
	default:
		${4:// code...}
		break;
}'
end

snippet 'Throw Exception' do |s|
  s.trigger = 'throw'
  s.scope = 'source.php'
  s.expansion = 'throw new ${1:Exception}(${2:"Error Processing Request"}, ${3:1});
$0'
end
# 
# snippet 'Wrap in try { ... } catch (...) { ... }' do |s|
#   s.trigger = 'try'
#   s.key_binding = 'M1+M2+M3+W'
#   s.scope = 'source.php'
#   s.expansion = '\${TM_SELECTED_TEXT/([\t ]*).*/\$1/m}try {
# 	\${3:\${TM_SELECTED_TEXT/(\A.*)|(.+)|\n\z/(?1:\$0:(?2:\t\$0))/g}}
# \${TM_SELECTED_TEXT/([\t ]*).*/\$1/m}} catch (\${1:Exception} \${2:\\$e}) {
# \${TM_SELECTED_TEXT/([\t ]*).*/\$1/m}	\$0
# \${TM_SELECTED_TEXT/([\t ]*).*/\$1/m}}'
# end

snippet 'while ...' do |s|
  s.trigger = 'while'
  s.scope = 'source.php'
  s.expansion = 'while (${1:$a <= 10}) {
	${0:// code...}
}'
end

