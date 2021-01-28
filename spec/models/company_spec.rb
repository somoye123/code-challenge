require 'rails_helper'

RSpec.describe Company, type: :model do
  describe 'Validations' do
    it { should validate_numericality_of(:zip_code) }
  end
end
