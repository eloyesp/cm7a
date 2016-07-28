require 'cuba/test'
require 'web'

scope do
  test 'Homepage' do
    get '/'

    follow_redirect!

    assert last_response.body.match(/Hola Mundo!/)
  end
end
