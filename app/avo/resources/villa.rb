class Avo::Resources::Villa < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :name, as: :text
    field :villa_images, as: :has_many
  end
end
