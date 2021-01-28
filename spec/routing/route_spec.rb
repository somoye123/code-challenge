require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
  it ' routes to pages home action' do
    expect(get: '/').to route_to('pages#home')
  end

  it 'routes to companies #create via POST ' do
    expect(delete: '/companies/1').to route_to('companies#destroy', id: '1')
  end
end
