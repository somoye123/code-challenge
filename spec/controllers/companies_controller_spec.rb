require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
  describe 'before_action' do
    it { should use_before_action(:set_company) }
  end
  describe 'GET #index' do
    before { get :index }
    it { should render_template('index') }
    it { should_not render_template('show') }
  end

  describe 'GET #new' do
    before { get :new }
    it { should render_template('new') }
  end
end
