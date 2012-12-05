module TagLib
  module Version
    MAJOR = 0
    MINOR = 5
    PATCH = 2
    BUILD = 5

    STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
  end
end
