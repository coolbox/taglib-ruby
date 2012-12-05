# Default opt dirs to help mkmf find taglib
if `uname -a`.strip[/Linux/i] && `uname -a`.strip[/x86_64/i]
  configure_args = "--with-opt-dir=/usr/local:/opt/local:/sw:#{File.join(File.dirname(__FILE__), '../vendor', 'taglib')} "
else
  configure_args = "--with-opt-dir=/usr/local:/opt/local:/sw "
end

ENV['CONFIGURE_ARGS'] = configure_args + ENV.fetch('CONFIGURE_ARGS', "")

require 'mkmf'

if `uname -a`.strip[/Linux/i] && `uname -a`.strip[/x86_64/i]
  def error msg
    message msg + "\n"
    abort
  end

  dir_config('tag')

  # When compiling statically, -lstdc++ would make the resulting .so to
  # have a dependency on an external libstdc++ instead of the static one.
  unless $LDFLAGS.split(" ").include?("-static-libstdc++")
    if not have_library('stdc++')
      error "You must have libstdc++ installed."
    end
  end

  if not have_library('tag')
    error <<-DESC
  You must have taglib installed in order to use taglib-ruby.

  Debian/Ubuntu: sudo apt-get install libtag1-dev
  Fedora/RHEL: sudo yum install taglib-devel
  Brew: brew install taglib
  MacPorts: sudo port install taglib
  DESC
  end
end

$CFLAGS << " -DSWIG_TYPE_TABLE=taglib"