$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Remarkable
  VERSION = '2.2.4'
end

if ENV['RAILS_ENV'] == 'test'
  require 'spec/rails'
end

require 'remarkable/dsl'
require 'remarkable/matcher_base'
require 'remarkable/private_helpers'
require 'remarkable/helpers'
require 'remarkable/assertions'
require 'remarkable/example/example_methods'

if Object.const_defined?(:ActiveRecord) && ActiveRecord.const_defined?(:Base)
  require 'remarkable/active_record/active_record'
end
if Object.const_defined?(:ActionController) && ActionController.const_defined?(:Base)
  require 'remarkable/controller/controller'
end
require 'remarkable/rails' if defined?(RAILS_ROOT)
