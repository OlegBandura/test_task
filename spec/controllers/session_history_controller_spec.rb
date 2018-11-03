require 'rails_helper'

RSpec.describe SessionHistoryController, type: :controller do
  context 'GET #index' do
    subject { described_class.new.index }
    it 'index page' do
      get :index
      is_expected.to render_template('index')
    end
  end
end
