module SupportersHelper
  def render_supporters(supporters)
    list_supporters = supporters.uniq { |item| item[:user_id] }
    count_supporters = list_supporters.count
    list_supporters.each { |supporter| concat draw_list(supporter.user.name) }
    count_supporters.times { draw_list("") }
  end

  private

    def draw_list(name)
      content_tag :div, class: "col s12 m12 blue-grey lighten-5" do
        content_tag :span, name
      end
    end
end
