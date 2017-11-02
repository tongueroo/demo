require 'jets_helper'

RSpec.describe PostsController, type: :controller do
  let(:event) { {"key1" => "value1", "key2" => "value2"} }
  let(:context) { {} } # TODO: figure out a good context fixture

  describe "GET #index" do
    it "returns a success response" do
      controller = PostsController.new(event, context)
      response = controller.index
      pp response
    end

    # it "returns a success response" do
    #   post = Post.create!()
    #   get :index, params: {}, session: valid_session
    #   expect(response).to be_success
    # end
  end
end
