require 'rails_helper'

RSpec.describe BooksController, type: :controller do
   let(:book) { FactoryBot.create(:book) }

  describe "GET #index" do
    before { get :index }
    it 'render index template and return success response' do
      expect(response).to be_success
      expect(response).to render_template(:index)
    end

    it 'assigns @books' do
      expect(assigns(:books)).not_to be_nil
    end
  end

  describe 'GET #show' do
    before { get :show, params: { id: book.to_param } }

    it 'render show template and return success response' do
      expect(response).to be_success
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    before { get :new }
    it 'render new template and return success response' do
      expect(response).to be_success
      expect(response).to render_template(:new)
    end

    it 'assigns @book' do
      expect(assigns(:book)).not_to be_nil
    end
  end

  describe 'GET #edit' do
    before { get :edit, params: { id: book.to_param } }

    it 'render edit template and return success response' do
      expect(response).to be_success
      expect(response).to render_template :edit
    end
  end
end
