# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `mixlib-config` gem.
# Please instead update this file by running `bin/tapioca gem mixlib-config`.

# source://mixlib-config-3.0.27/lib/mixlib/config/version.rb:19
module Mixlib; end

# source://mixlib-config-3.0.27/lib/mixlib/config/version.rb:20
module Mixlib::Config
  # Get the value of a config option
  #
  # === Parameters
  # config_option<Symbol>:: The config option to return
  #
  # === Returns
  # value:: The value of the config option
  #
  # === Raises
  # <UnknownConfigOptionError>:: If the config option does not exist and strict mode is on.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:116
  def [](config_option); end

  # Set the value of a config option
  #
  # === Parameters
  # config_option<Symbol>:: The config option to set (within the [])
  # value:: The value for the config option
  #
  # === Returns
  # value:: The new value of the config option
  #
  # === Raises
  # <UnknownConfigOptionError>:: If the config option does not exist and strict mode is on.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:131
  def []=(config_option, value); end

  # metaprogramming to ensure that the slot for method_symbol
  # gets set to value after any other logic is run
  #
  # === Parameters
  # method_symbol<Symbol>:: Name of the method (variable setter)
  # blk<Block>:: logic block to run in setting slot method_symbol to value
  # value<Object>:: Value to be set in config hash
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:331
  def config_attr_writer(method_symbol, &block); end

  # Allows you to create a new config context where you can define new
  # options with default values.
  #
  # This method allows you to open up the configurable more than once.
  #
  # For example:
  #
  # config_context :server_info do
  #   configurable(:url).defaults_to("http://localhost")
  # end
  #
  # === Parameters
  # symbol<Symbol>: the name of the context
  # block<Block>: a block that will be run in the context of this new config
  # class.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:400
  def config_context(symbol, &block); end

  # Allows you to create a new hash of config contexts where you can define new
  # options with default values.
  #
  # This method allows you to open up the configurable more than once.
  #
  # For example:
  #
  # config_context_hash :listeners, :listener do
  #   configurable(:url).defaults_to("http://localhost")
  # end
  #
  # === Parameters
  # symbol<Symbol>: the plural name for contexts in the list
  # symbol<Symbol>: the singular name for contexts in the list
  # block<Block>: a block that will be run in the context of this new config
  # class.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:470
  def config_context_hash(plural_symbol, singular_symbol, &block); end

  # Allows you to create a new list of config contexts where you can define new
  # options with default values.
  #
  # This method allows you to open up the configurable more than once.
  #
  # For example:
  #
  # config_context_list :listeners, :listener do
  #   configurable(:url).defaults_to("http://localhost")
  # end
  #
  # === Parameters
  # symbol<Symbol>: the plural name for contexts in the list
  # symbol<Symbol>: the singular name for contexts in the list
  # block<Block>: a block that will be run in the context of this new config
  # class.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:438
  def config_context_list(plural_symbol, singular_symbol, &block); end

  # Gets or sets strict mode.  When strict mode is on, only values which
  # were specified with configurable(), default() or writes_with() may be
  # retrieved or set. Getting or setting anything else will cause
  # Mixlib::Config::UnknownConfigOptionError to be thrown.
  #
  # If this is set to :warn, unknown values may be get or set, but a warning
  # will be printed with Chef::Log.warn if this occurs.
  #
  # === Parameters
  # value<String>:: pass this value to set strict mode [optional]
  #
  # === Returns
  # Current value of config_strict_mode
  #
  # === Raises
  # <ArgumentError>:: if value is set to something other than true, false, or :warn
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:505
  def config_strict_mode(value = T.unsafe(nil)); end

  # Sets strict mode.  When strict mode is on, only values which
  # were specified with configurable(), default() or writes_with() may be
  # retrieved or set.  All other values
  #
  # If this is set to :warn, unknown values may be get or set, but a warning
  # will be printed with Chef::Log.warn if this occurs.
  #
  # === Parameters
  # value<String>:: pass this value to set strict mode [optional]
  #
  # === Raises
  # <ArgumentError>:: if value is set to something other than true, false, or :warn
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:534
  def config_strict_mode=(value); end

  # metaprogramming to set information about a config option.  This may be
  # used in one of two ways:
  #
  # 1. Block-based:
  # configurable(:attr) do
  #   defaults_to 4
  #   writes_value { |value| 10 }
  # end
  #
  # 2. Chain-based:
  # configurable(:attr).defaults_to(4).writes_value { |value| 10 }
  #
  # Currently supported configuration:
  #
  # defaults_to(value): value returned when configurable has no explicit value
  # defaults_to BLOCK: block is run when the configurable has no explicit value
  # writes_value BLOCK: block that is run to filter a value when it is being set
  #
  # === Parameters
  # symbol<Symbol>:: Name of the config option
  # default_value<Object>:: Default value [optional]
  # block<Block>:: Logic block that calculates default value [optional]
  #
  # === Returns
  # The value of the config option.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:370
  def configurable(symbol, &block); end

  # Pass Mixlib::Config.configure() a block, and it will yield itself
  #
  # === Parameters
  # block<Block>:: A block that is called with self.configuration as the argument.
  #
  # @yield [configuration]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:102
  def configure(&block); end

  # metaprogramming to set the default value for the given config option
  #
  # === Parameters
  # symbol<Symbol>:: Name of the config option
  # default_value<Object>:: Default value (can be unspecified)
  # block<Block>:: Logic block that calculates default value
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:341
  def default(symbol, default_value = T.unsafe(nil), &block); end

  # Resets a config option to its default.
  #
  # === Parameters
  # symbol<Symbol>:: Name of the config option
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:162
  def delete(symbol); end

  # Loads a given ruby file, and runs instance_eval against it in the context of the current
  # object.
  #
  # Raises an IOError if the file cannot be found, or is not readable.
  #
  # === Parameters
  # filename<String>:: A filename to read from
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:55
  def from_file(filename); end

  # Transforms a Hash into method-style configuration syntax to be processed
  #
  # === Parameters
  # hash<Hash>:: A Hash containing configuration
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:94
  def from_hash(hash); end

  # Parses valid JSON structure into Ruby
  #
  # === Parameters
  # filename<String>:: A filename to read from
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:80
  def from_json(filename); end

  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:85
  def from_toml(filename); end

  # Parses valid YAML structure into Ruby so it can be ingested into the Class
  #
  # === Parameters
  # filename<String>:: A filename to read from
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:71
  def from_yaml(filename); end

  # Check if Mixlib::Config has a config option.
  #
  # === Parameters
  # key<Symbol>:: The config option to check for
  #
  # === Returns
  # <True>:: If the config option exists
  # <False>:: If the config option does not exist
  #
  # @return [Boolean]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:143
  def has_key?(key); end

  # Creates a shallow copy of the internal hash
  # NOTE: remove this in 3.0 in favor of save.  This is completely useless
  # with default values and configuration_context.
  #
  # === Returns
  # result of Hash#dup
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:319
  def hash_dup; end

  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:44
  def initialize_mixlib_config; end

  # @return [Boolean]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:149
  def is_default?(key); end

  # Check if Mixlib::Config has a config option.
  #
  # === Parameters
  # key<Symbol>:: The config option to check for
  #
  # === Returns
  # <True>:: If the config option exists
  # <False>:: If the config option does not exist
  #
  # @return [Boolean]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:143
  def key?(key); end

  # Return the set of config hash keys.
  # This *only* returns hash keys which have been set by the user.  In future
  # versions this will likely be removed in favor of something more explicit.
  # For now though, we want this to match has_key?
  #
  # === Returns
  # result of Hash#keys
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:309
  def keys; end

  # Merge an incoming hash with our config options
  #
  # === Parameters
  # hash<Hash>: a hash in the same format as output by save.
  #
  # === Returns
  # self
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:290
  def merge!(hash); end

  # Allows for simple lookups and setting of config options via method calls
  # on Mixlib::Config.  If there any arguments to the method, they are used to set
  # the value of the config option.  Otherwise, it's a simple get operation.
  #
  # === Parameters
  # method_symbol<Symbol>:: The method called.  Must match a config option.
  # *args:: Any arguments passed to the method
  #
  # === Returns
  # value:: The value of the config option.
  #
  # === Raises
  # <UnknownConfigOptionError>:: If the config option does not exist and strict mode is on.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:555
  def method_missing(method_symbol, *args); end

  # Resets all config options to their defaults.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:167
  def reset; end

  # Restore non-default values from the given hash.
  #
  # === Parameters
  # hash<Hash>: a hash in the same format as output by save.
  #
  # === Returns
  # self
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:252
  def restore(hash); end

  # Makes a copy of any non-default values.
  #
  # This returns a shallow copy of the hash; while the hash itself is
  # duplicated a la dup, modifying data inside arrays and hashes may modify
  # the original Config object.
  #
  # === Returns
  #
  # Hash of values the user has set.
  #
  # === Examples
  #
  # For example, this config class:
  #
  #     class MyConfig < Mixlib::Config
  #       default :will_be_set, 1
  #       default :will_be_set_to_default, 1
  #       default :will_not_be_set, 1
  #       configurable(:computed_value) { |x| x*2 }
  #       config_context :group do
  #         default :will_not_be_set, 1
  #       end
  #       config_context :group_never_set
  #     end
  #
  #     MyConfig.x = 2
  #     MyConfig.will_be_set = 2
  #     MyConfig.will_be_set_to_default = 1
  #     MyConfig.computed_value = 2
  #     MyConfig.group.x = 3
  #
  # produces this:
  #
  #     MyConfig.save == {
  #       :x => 2,
  #       :will_be_set => 2,
  #       :will_be_set_to_default => 1,
  #       :computed_value => 4,
  #       :group => {
  #         :x => 3
  #       }
  #     }
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:215
  def save(include_defaults = T.unsafe(nil)); end

  # Makes a copy of any non-default values.
  #
  # This returns a shallow copy of the hash; while the hash itself is
  # duplicated a la dup, modifying data inside arrays and hashes may modify
  # the original Config object.
  #
  # === Returns
  #
  # Hash of values the user has set.
  #
  # === Examples
  #
  # For example, this config class:
  #
  #     class MyConfig < Mixlib::Config
  #       default :will_be_set, 1
  #       default :will_be_set_to_default, 1
  #       default :will_not_be_set, 1
  #       configurable(:computed_value) { |x| x*2 }
  #       config_context :group do
  #         default :will_not_be_set, 1
  #       end
  #       config_context :group_never_set
  #     end
  #
  #     MyConfig.x = 2
  #     MyConfig.will_be_set = 2
  #     MyConfig.will_be_set_to_default = 1
  #     MyConfig.computed_value = 2
  #     MyConfig.group.x = 3
  #
  # produces this:
  #
  #     MyConfig.save == {
  #       :x => 2,
  #       :will_be_set => 2,
  #       :will_be_set_to_default => 1,
  #       :computed_value => 4,
  #       :group => {
  #         :x => 3
  #       }
  #     }
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:215
  def to_hash(include_defaults = T.unsafe(nil)); end

  protected

  # Given a (nested) Hash, apply it to the config object and any contexts.
  #
  # This is preferable to converting it to the string representation with
  # the #to_dotted_hash method above.
  #
  # === Parameters
  # hash<Hash>:: The hash to apply to the config object
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:569
  def apply_nested_hash(hash); end

  private

  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:659
  def define_attr_accessor_methods(symbol); end

  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:729
  def define_context(definition_blocks); end

  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:703
  def define_hash_attr_accessor_methods(plural_symbol, singular_symbol); end

  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:682
  def define_list_attr_accessor_methods(plural_symbol, singular_symbol); end

  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:629
  def internal_get(symbol); end

  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:648
  def internal_get_or_set(symbol, *args); end

  # Internal dispatch setter for config values.
  #
  # === Parameters
  # symbol<Symbol>:: Name of the method (variable setter)
  # value<Object>:: Value to be set in config hash
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:614
  def internal_set(symbol, value); end

  # Given a (nested) Hash, turn it into a single top-level hash using dots as
  # nesting notation. This allows for direction translation into method-style
  # setting of Config.
  #
  # === Parameters
  # hash<Hash>:: The hash to "de-nestify"
  # recursive_key<String>:: The existing key to prepend going forward
  #
  # === Returns
  # value:: A single-depth Hash using dot notation to indicate nesting
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config.rb:597
  def to_dotted_hash(hash, recursive_key = T.unsafe(nil)); end

  class << self
    # @private
    #
    # source://mixlib-config-3.0.27/lib/mixlib/config.rb:29
    def extended(base); end
  end
end

# source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:21
class Mixlib::Config::Configurable
  # @return [Configurable] a new instance of Configurable
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:26
  def initialize(symbol); end

  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:69
  def default; end

  # Returns the value of attribute default_block.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:24
  def default_block; end

  # @return [Boolean]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:38
  def default_block?; end

  # Returns the value of attribute default_value.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:23
  def default_value; end

  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:44
  def defaults_to(default_value = T.unsafe(nil), &block); end

  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:55
  def get(config); end

  # @return [Boolean]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:30
  def has_default; end

  # @return [Boolean]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:30
  def has_default?; end

  # @return [Boolean]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:77
  def is_default?(config); end

  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:65
  def set(config, value); end

  # Returns the value of attribute symbol.
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:22
  def symbol; end

  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:50
  def writes_value(&block); end

  # @return [Boolean]
  #
  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:34
  def writes_value?; end

  private

  # source://mixlib-config-3.0.27/lib/mixlib/config/configurable.rb:83
  def safe_dup(e); end
end

# source://mixlib-config-3.0.27/lib/mixlib/config.rb:486
Mixlib::Config::NOT_PASSED = T.let(T.unsafe(nil), Object)

# source://mixlib-config-3.0.27/lib/mixlib/config/reopened_config_context_with_configurable_error.rb:21
class Mixlib::Config::ReopenedConfigContextWithConfigurableError < ::StandardError; end

# source://mixlib-config-3.0.27/lib/mixlib/config/reopened_configurable_with_config_context_error.rb:21
class Mixlib::Config::ReopenedConfigurableWithConfigContextError < ::StandardError; end

# source://mixlib-config-3.0.27/lib/mixlib/config/unknown_config_option_error.rb:21
class Mixlib::Config::UnknownConfigOptionError < ::StandardError; end

# source://mixlib-config-3.0.27/lib/mixlib/config/version.rb:22
Mixlib::Config::VERSION = T.let(T.unsafe(nil), String)
