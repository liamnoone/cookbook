module Web::Controllers::Recipies
  class Create
    include Web::Action

    expose :recipe

    params do
      param :recipe do
        param :name, presence: true
        param :description, presence: true
        param :content, presence: true
      end
    end

    def call(params)
      if params.valid?
        @recipe = RecipeRepository.create(Recipe.new(params[:recipe]))
        redirect_to '/'
      end
    end
  end
end
