require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "Models validation" do
    context "Post Title" do
      it 'Be valid' do
        # setup
        post = Post.new(title: 'Primeiro Post', description: 'Descrição primeiro Post')
        # process
        # validation
        expect(post).to be_valid
      end
      it 'Be invalid' do
        # setup
        post = Post.new
        # process
        # validation
        expect(post).to_not be_valid
      end

      it "Content is valid" do
        # setup
        post = Post.new(title: 'Primeiro Post')
        
        # process
        post.valid?
        
        # validation
        expect(post.errors[:title]).to_not include("can't be blank")
      end

      it "Content is invalid" do
        # setup
        post = Post.new(title: '')
        
        # process
        post.valid?
        
        # validation
        expect(post.errors[:title]).to include("can't be blank")
      end
    end

    context "Post Description" do
      it "Be valid" do
        # setup
        post = Post.new(title: "Segundo post", description: nil)
        
        # process
        post.valid?
        
        # validation
        expect(post.errors[:description]).to include("can't be blank")
      end
      it "Be invalid" do
        # setup
        post = Post.new(title: "Segundo post", description: "Descrição do segundo post")
        
        # process
        post.valid?
        
        # validation
        expect(post.errors[:description]).to_not include("can't be blank")
      end

      it "Content Be valid" do
        # setup
        post = Post.new(title: "Segundo post", description: '')

        # process
        post.valid?

        # validation
        expect(post.errors[:description]).to include("can't be blank")
      end
      it "Content Be invalid" do
        # setup
        post = Post.new(title: "Segundo post", description: 'Descrição do segundo post')

        # process
        post.valid?

        # validation
        expect(post.errors[:description]).to_not include("can't be blank")
      end
    end
  end

  context "Teste" do
    it "Valores diferentes" do
      expect(6).to be_between(5,10).exclusive
    end
  end
end
