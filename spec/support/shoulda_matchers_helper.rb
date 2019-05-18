# frozen_string_literal: true

require 'shoulda-matchers'

RSpec.configure do |config|
  Shoulda::Matchers.configure do |c|
    c.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end
end
