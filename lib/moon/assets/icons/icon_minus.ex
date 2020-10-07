defmodule Moon.Assets.Icons.IconMinus do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconMinus-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="auto" viewBox="0 0 28 2" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M27 2H1C-0.333333 2 -0.333333 0 1 0H27C28.3333 0 28.3333 2 27 2Z" fill="currentColor"/> </svg>
    """
  end
end
