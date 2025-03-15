# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :posts, [ Types::PostType ], null: false,
      description: "Returns a list of posts"

    def posts
      Post.all
    end

    field :post, Types::PostType, null: false,
      description: "Return post by id" do
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    rescue ActiveRecord::RecordNotFound
      raise GraphQL::ExecutionError, "Post not found"
    end

    field :users, [ Types::UserType ], null: false,
      description: "Return list of all users"

    def users
      User.all
    end

    field :user, Types::UserType, null: false,
      description: "Return user by id" do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    rescue ActiveRecord::RecordNotFound
      raise GraphQL::ExecutionError, "User not found"
    end
  end
end
