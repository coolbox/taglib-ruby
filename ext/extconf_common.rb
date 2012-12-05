# Default opt dirs to help mkmf find taglib
if `uname -a`.strip[/Linux/i] && `uname -a`.strip[/x86_64/i]
  configure_args = "--with-opt-dir=/usr/local:/opt/local:/sw:#{File.join(File.dirname(__FILE__), '../vendor', 'taglib')} "
else
  configure_args = "--with-opt-dir=/usr/local:/opt/local:/sw "
end

ENV['CONFIGURE_ARGS'] = configure_args + ENV.fetch('CONFIGURE_ARGS', "")

require 'mkmf'

$CFLAGS << " -DSWIG_TYPE_TABLE=taglib"