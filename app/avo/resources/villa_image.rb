class Avo::Resources::VillaImage < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :villa, as: :belongs_to
    field :image, as: :file
  end

  self.grid_view = {
    card: lambda {
      {
        cover_url: main_app.url_for(record.image.url),
        title: record.title
      }
    }
  }

  self.ordering = {
    display_inline: true,
    visible_on: %i[index association],
    drag_and_drop: true,
    actions: {
      higher: -> { record.move_higher },
      lower: -> { record.move_lower },
      to_top: -> { record.move_to_top },
      to_bottom: -> { record.move_to_bottom },
      insert_at: -> { record.insert_at position }
    }
  }
end
