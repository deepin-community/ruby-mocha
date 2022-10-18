#ensure that Mocha is defined before running tests
module Mocha; end

Dir['test/{unit,acceptance}/*_test.rb'].each { |f| require f }
