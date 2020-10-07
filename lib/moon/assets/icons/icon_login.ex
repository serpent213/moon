defmodule Moon.Assets.Icons.IconLogin do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconLogin-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M7 27C7 26.4477 7.44772 26 8 26H23C24.6569 26 26 24.6569 26 23L26 5C26 3.34315 24.6569 2 23 2L8 2C7.44771 2 7 1.55229 7 1C7 0.447716 7.44771 0 8 0H23C25.7614 0 28 2.23858 28 5L28 23C28 25.7614 25.7614 28 23 28H8C7.44772 28 7 27.5523 7 27Z" fill="currentColor"/>  <path d="M18.5858 15L14.2929 19.2929C13.9024 19.6834 13.9024 20.3166 14.2929 20.7071C14.6834 21.0976 15.3166 21.0976 15.7071 20.7071L21.7071 14.7071C22.0976 14.3166 22.0976 13.6834 21.7071 13.2929L15.7071 7.29289C15.3166 6.90237 14.6834 6.90237 14.2929 7.29289C13.9024 7.68342 13.9024 8.31658 14.2929 8.70711L18.5858 13L1 13C0.447716 13 0 13.4477 0 14C0 14.5523 0.447716 15 1 15L18.5858 15Z" fill="currentColor"/> </svg>
    """
  end
end
