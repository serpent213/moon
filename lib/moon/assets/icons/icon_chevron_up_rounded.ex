defmodule Moon.Assets.Icons.IconChevronUpRounded do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconChevronUpRounded-#{assigns[:color]}-#{assigns[:background_color]}"
      )

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="auto" viewBox="0 0 28 15" fill="none" xmlns="http://www.w3.org/2000/svg">   <path fill-rule="evenodd" clip-rule="evenodd" d="M27.7266 14.66C27.3621 15.0245 26.7712 15.0245 26.4067 14.66L14 2.25327L1.5933 14.66C1.22881 15.0245 0.637856 15.0245 0.273367 14.66C-0.0911234 14.2955 -0.0911234 13.7045 0.273367 13.34L13.34 0.273366C13.7045 -0.091123 14.2955 -0.0911229 14.66 0.273366L27.7266 13.34C28.0911 13.7045 28.0911 14.2955 27.7266 14.66Z" fill="currentColor"/> </svg>
    """
  end
end
