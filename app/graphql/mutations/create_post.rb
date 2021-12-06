module Mutations
  class CreatePost < BaseMutation
    argument :title, String, required: false
    argument :body, String, required: false 

    type Types::PostType

    def resolve(title: nil, body: nil)
      Post.create!(title: title, body: body)
    end
  end
end

