require 'spec_helper'

def valid_attributes
  {:title => "test title", :content => "test content"}
end

describe PostsController do


  describe "GET index" do

    let!(:post) {Post.create({:title => "Test", :content => "Lorem ipsum"})}
    before {get :index}

    it "should assign entry to entries" do
      assigns(:posts).should == ([post])
    end
  end

  describe "GET to show" do
    let!(:post) { Post.create(valid_attributes) }

    it "should assign entry to entry" do
      assigns(:post).should == post
    end
  end

  describe "GET to edit" do
    let!(:post) { Post.create(valid_attributes) }

    before do
      get :edit, :id => post.id
    end

    it "should assign entry to entry" do
      assigns(:post).should == post
    end

  end

end