defmodule Moon.Assets.Icons.IconSportWidget do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportWidget-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="auto" viewBox="0 0 20 12" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M19.5652 12H0.434783C0.173913 12 0 11.84 0 11.6V0.4C0 0.16 0.173913 0 0.434783 0H19.5652C19.8261 0 20 0.16 20 0.4V11.6C20 11.84 19.8261 12 19.5652 12Z" fill="#31373F"/> <path d="M10 9C11.65 9 13 7.65 13 6C13 4.35 11.65 3 10 3C8.35 3 7 4.35 7 6C7 7.65 8.35 9 10 9Z" stroke="currentColor" stroke-miterlimit="10"/> <path d="M10 0V12" stroke="#31373F" stroke-miterlimit="10"/> <path d="M0 3H3.5C3.77614 3 4 3.22386 4 3.5V8.5C4 8.77614 3.77614 9 3.5 9H0" stroke="currentColor" stroke-miterlimit="10"/> <path d="M20 3H16.5C16.2239 3 16 3.22386 16 3.5V8.5C16 8.77614 16.2239 9 16.5 9H20" stroke="currentColor" stroke-miterlimit="10"/> </svg>
    """
  end
end
