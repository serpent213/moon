defmodule Moon.Assets.Icons.IconBannerInfo do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconBannerInfo-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect x="2" y="2" width="20" height="20" rx="10" fill="#1084F2"/> <path d="M12.234 8.45992C11.842 8.45992 11.5667 8.38058 11.408 8.22192C11.2587 8.06325 11.184 7.86725 11.184 7.63392V7.33992C11.184 7.10658 11.2587 6.91058 11.408 6.75192C11.5667 6.59325 11.8373 6.51392 12.22 6.51392C12.612 6.51392 12.8827 6.59325 13.032 6.75192C13.1907 6.91058 13.27 7.10658 13.27 7.33992V7.63392C13.27 7.86725 13.1907 8.06325 13.032 8.22192C12.8827 8.38058 12.6167 8.45992 12.234 8.45992ZM9 15.7679H11.464V11.0079H9V9.77592H12.99V15.7679H15.3V16.9999H9V15.7679Z" fill="white"/> </svg>
    """
  end
end
