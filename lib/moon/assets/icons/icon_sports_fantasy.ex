defmodule Moon.Assets.Icons.IconSportsFantasy do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsFantasy-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">  <path d="M11.9397 11.5743C14.327 11.5743 16.2623 9.65488 16.2623 7.28715C16.2623 4.91942 14.327 3 11.9397 3C9.55246 3 7.61719 4.91942 7.61719 7.28715C7.61719 9.65488 9.55246 11.5743 11.9397 11.5743Z" stroke="currentColor" stroke-width="1.1" stroke-miterlimit="10" stroke-linecap="round"/>  <path d="M20.471 18.2307L20.1298 16.4256C19.7885 14.7333 18.4235 13.6051 16.9447 13.6051H15.1247C14.8972 13.6051 14.5559 13.6051 14.3284 13.7179C13.6459 13.9436 12.8497 14.1692 11.9397 14.1692C11.0296 14.1692 10.3471 14.0564 9.66463 13.8307C9.43712 13.7179 9.20962 13.7179 8.86837 13.7179H7.04834C5.45582 13.7179 4.20456 14.8461 3.8633 16.3128L3.52205 18.2307C3.4083 18.7948 3.74955 19.2461 4.20456 19.4717C6.47958 20.3743 13.1909 22.4051 19.9023 19.4717C20.3573 19.2461 20.5848 18.7948 20.471 18.2307Z" stroke="currentColor" stroke-width="1.1" stroke-miterlimit="10" stroke-linecap="round"/>  <rect x="19" y="5" width="5" height="1" rx="0.5" fill="currentColor"/>  <path d="M20 17.5C18 19.1 8.16667 18.5 3.5 18L4.5 19.5L9.5 21L15 20.5L20 19.5L20.5 18C20.5 17.8333 20.4 17.5 20 17.5Z" fill="currentColor" fill-opacity="0.29"/>  <rect x="22" y="3" width="5" height="1" rx="0.5" transform="rotate(90 22 3)" fill="currentColor"/> </svg>
    """
  end
end
