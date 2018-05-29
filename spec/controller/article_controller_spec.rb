require 'rails_helper'

describe ArticlesController, type: :controller do
  describe 'show' do
    let(:article) { Article.create(slug: 'slug-1')}

    #TODO: it still return 200 even my slug is not 'slug-1'
    it 'should display article by slug' do
      get :show, slug: 'slug-1'
      expect(response.status).to eq 200
    end
  end
end