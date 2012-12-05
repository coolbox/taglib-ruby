# Default opt dirs to help mkmf find taglib
# configure_args = "--with-opt-dir=/usr/local:/opt/local:/sw "
configure_args = "--with-opt-dir=/usr/local:/opt/local:/sw:#{File.join(File.dirname(__FILE__), '../vendor', 'taglib')} "
ENV['CONFIGURE_ARGS'] = configure_args + ENV.fetch('CONFIGURE_ARGS', "")

require 'mkmf'

$CFLAGS << " -DSWIG_TYPE_TABLE=taglib"