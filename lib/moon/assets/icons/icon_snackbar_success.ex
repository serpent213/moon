defmodule Moon.Assets.Icons.IconSnackbarSuccess do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSnackbarSuccess-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect width="20" height="20" rx="10" transform="matrix(-1 0 0 1 22 2)" fill="#0CD664"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M16 8.89999C15.72 8.89999 15.47 9.00999 15.29 9.18999L11 13.49L8.71 11.19C8.53 11.01 8.28 10.9 8 10.9C7.45 10.9 7 11.35 7 11.9C7 12.18 7.11 12.43 7.29 12.61L10.29 15.61C10.47 15.79 10.72 15.9 11 15.9C11.28 15.9 11.53 15.79 11.71 15.61L16.71 10.61C16.89 10.43 17 10.18 17 9.89999C17 9.34999 16.55 8.89999 16 8.89999Z" fill="white"/> </svg>
    """
  end
end
