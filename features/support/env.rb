PROJECT_ROOT_PATH = File.dirname(File.dirname(File.dirname(__FILE__)))
require 'middleman-core'
require 'middleman-core/step_definitions'
require File.join(PROJECT_ROOT_PATH, 'features', 'support', 'extra_step_defs')

require File.join(PROJECT_ROOT_PATH, 'lib', 'middleman-scrub')
