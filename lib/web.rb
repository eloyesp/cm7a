require 'cuba'
require 'cuba/safe'
require "cuba/render"
require "erb"

Cuba.use Rack::Session::Cookie,
 secret: ENV['SECRET']

Cuba.plugin Cuba::Safe
Cuba.plugin Cuba::Render

Cuba.define do
  on get do
    on 'hello' do
      res.write view('hello')
    end

    on root do
      res.redirect '/hello'
    end
  end
end
