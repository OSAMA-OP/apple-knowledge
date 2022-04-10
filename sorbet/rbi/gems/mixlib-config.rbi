# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/mixlib-config/all/mixlib-config.rbi
#
# mixlib-config-3.0.9

module Mixlib
end
module Mixlib::Config
  def [](config_option); end
  def []=(config_option, value); end
  def apply_nested_hash(hash); end
  def config_attr_writer(method_symbol, &block); end
  def config_context(symbol, &block); end
  def config_context_hash(plural_symbol, singular_symbol, &block); end
  def config_context_list(plural_symbol, singular_symbol, &block); end
  def config_strict_mode(value = nil); end
  def config_strict_mode=(value); end
  def configurable(symbol, &block); end
  def configure(&block); end
  def default(symbol, default_value = nil, &block); end
  def define_attr_accessor_methods(symbol); end
  def define_context(definition_blocks); end
  def define_hash_attr_accessor_methods(plural_symbol, singular_symbol); end
  def define_list_attr_accessor_methods(plural_symbol, singular_symbol); end
  def delete(symbol); end
  def from_file(filename); end
  def from_hash(hash); end
  def from_json(filename); end
  def from_toml(filename); end
  def from_yaml(filename); end
  def has_key?(key); end
  def hash_dup; end
  def initialize_mixlib_config; end
  def internal_get(symbol); end
  def internal_get_or_set(symbol, *args); end
  def internal_set(symbol, value); end
  def is_default?(key); end
  def key?(key); end
  def keys; end
  def merge!(hash); end
  def method_missing(method_symbol, *args); end
  def reset; end
  def restore(hash); end
  def save(include_defaults = nil); end
  def self.extended(base); end
  def to_dotted_hash(hash, recursive_key = nil); end
  def to_hash(include_defaults = nil); end
end
class Mixlib::Config::Configurable
  def default; end
  def default_block; end
  def default_block?; end
  def default_value; end
  def defaults_to(default_value = nil, &block); end
  def get(config); end
  def has_default; end
  def has_default?; end
  def initialize(symbol); end
  def is_default?(config); end
  def safe_dup(e); end
  def set(config, value); end
  def symbol; end
  def writes_value(&block); end
  def writes_value?; end
end
class Mixlib::Config::UnknownConfigOptionError < StandardError
end
class Mixlib::Config::ReopenedConfigContextWithConfigurableError < StandardError
end
class Mixlib::Config::ReopenedConfigurableWithConfigContextError < StandardError
end
