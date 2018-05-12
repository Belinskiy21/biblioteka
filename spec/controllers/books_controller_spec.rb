require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  let(:book) { FactoryBot.create(:book) }
  let(:params) { { title: 'Some title', description: 'Some description', published_at: '2015', author: 'Oleg Belinskyi' } }


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

  describe 'POST #create' do
    it 'create book' do
      expect(response).to be_success
      expect{ Book.create(params) }.to change{ Book.all.size }.by(1)
    end
  end

  describe "PATCH #update" do
    it "should update the book" do
      Book.update(params)
      expect(response).to be_success
    end
  end

  describe "DELETE destroy" do
    it "should delete the book" do
      Book.destroy(book.id)
      expect(response).to be_success
    end
  end
end
