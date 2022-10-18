require 'yard'
require './lib/mocha/version'

desc 'Remove generated documentation'
task 'clobber_yardoc' do
  `rm -rf ./doc`
end

desc 'Generate documentation'
YARD::Rake::YardocTask.new('yardoc') do |task|
  task.options = ["--title", "Mocha #{Mocha::VERSION}", "--no-private"]
  task.files   = [
    'lib/mocha/api.rb',
    'lib/mocha/mock.rb',
    'lib/mocha/expectation.rb',
    'lib/mocha/object.rb',
    'lib/mocha/parameter_matchers.rb',
    'lib/mocha/parameter_matchers',
    'lib/mocha/state_machine.rb',
    'lib/mocha/sequence.rb',
    'lib/mocha/configuration.rb',
    'lib/mocha/stubbing_error.rb',
    'lib/mocha/unexpected_invocation.rb',
    '-',
    'RELEASE.rdoc',
    'COPYING.rdoc',
    'MIT-LICENSE.rdoc',
    'examples/mocha.rb',
    'examples/stubba.rb',
    'examples/misc.rb',
  ]
end

desc "Generate documentation"
task 'default' => ['clobber_yardoc', 'yardoc']
