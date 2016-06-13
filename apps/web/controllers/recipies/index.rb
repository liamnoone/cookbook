module Web::Controllers::Recipies
  class Index
    include Web::Action

    expose :recipies

    def call(params)
      @recipies = RecipeRepository.all
    end
  end
end
