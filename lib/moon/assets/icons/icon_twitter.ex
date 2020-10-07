defmodule Moon.Assets.Icons.IconTwitter do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconTwitter-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="auto" viewBox="0 0 20 16" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M17.9648 4.50613C17.9648 4.33124 17.9648 4.15714 17.9528 3.98383C18.7559 3.41182 19.4491 2.70358 20 1.89225C19.2511 2.21902 18.4567 2.43332 17.6432 2.52799C18.4998 2.02301 19.1409 1.22875 19.4472 0.293033C18.6417 0.763703 17.7605 1.09541 16.8416 1.27383C15.5697 -0.0580102 13.5486 -0.383983 11.9116 0.4787C10.2747 1.34138 9.42902 3.17818 9.8488 4.95911C6.54952 4.79624 3.47558 3.26168 1.392 0.737347C0.302898 2.58365 0.85919 4.94561 2.6624 6.13134C2.00939 6.11229 1.37062 5.93882 0.8 5.62558C0.8 5.64213 0.8 5.65946 0.8 5.67679C0.800534 7.60025 2.1774 9.25693 4.092 9.6378C3.4879 9.80003 2.85406 9.82375 2.2392 9.70712C2.77676 11.3531 4.31726 12.4808 6.0728 12.5132C4.61979 13.6377 2.82485 14.2482 0.9768 14.2464C0.650323 14.2458 0.324163 14.2263 0 14.1881C1.87651 15.3739 4.05993 16.0029 6.2896 16C13.8368 16.0031 17.9648 9.84577 17.9648 4.50613Z" fill="#1DA1F2"/> </svg>
    """
  end
end
