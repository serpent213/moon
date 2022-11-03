defmodule Moon.Assets.CountryFlags.FlagAO do
  @moduledoc false

  use Moon.StatelessComponent

  prop(color, :string, values: Moon.colors())
  prop(background_color, :string, values: Moon.colors())
  prop(font_size, :string)
  prop(click, :event)
  prop(class, :string)

  def render(assigns) do
    ~F"""
    <img
      class={"moon-country-flag", @class, "cursor-pointer": @click}
      :on-click={@click}
      style={get_style(color: @color, background_color: @background_color, font_size: @font_size)}
      src="/moon/assets/svgs/country_flags/AO.svg"
    />
    """
  end
end
