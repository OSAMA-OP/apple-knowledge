# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `byebug` gem.
# Please instead update this file by running `bin/tapioca gem byebug`.

# Reopen main module to define the library version
#
# source://byebug-11.1.3/lib/byebug/attacher.rb:6
module Byebug
  class << self
    # Starts byebug, and stops at the first line of user's code.
    #
    # source://byebug-11.1.3/lib/byebug/attacher.rb:10
    def attach; end

    # source://byebug-11.1.3/lib/byebug/attacher.rb:21
    def spawn(host = T.unsafe(nil), port = T.unsafe(nil)); end
  end
end

# Adds a `byebug` method to the Kernel module.
#
# Dropping a `byebug` call anywhere in your code, you get a debug prompt.
#
# source://byebug-11.1.3/lib/byebug/attacher.rb:34
module Kernel
  # source://byebug-11.1.3/lib/byebug/attacher.rb:35
  def byebug; end

  # source://byebug-11.1.3/lib/byebug/attacher.rb:35
  def debugger; end

  # source://byebug-11.1.3/lib/byebug/attacher.rb:41
  def remote_byebug(host = T.unsafe(nil), port = T.unsafe(nil)); end
end
