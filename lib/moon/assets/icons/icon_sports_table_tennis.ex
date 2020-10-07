defmodule Moon.Assets.Icons.IconSportsTableTennis do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name(
        "Icons-IconSportsTableTennis-#{assigns[:color]}-#{assigns[:background_color]}"
      )

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M16.021 17.8601C15.8505 18.0355 15.5582 18.1227 15.358 18.1609L13.42 16.1666C13.4189 16.1655 13.4189 16.1644 13.4179 16.1633C13.4179 16.1633 13.4168 16.1622 13.4158 16.1622L11.2045 13.8867L12.1778 12.8994L16.3228 17.1637C16.2825 17.3762 16.1925 17.6835 16.021 17.8601ZM9.74941 15.3612L10.6379 14.461L11.518 15.3667C10.908 15.2795 10.2948 15.3013 9.74941 15.3612ZM3.55516 13.7985C1.2073 11.3813 1.2073 7.44936 3.55516 5.0333C4.69256 3.86287 6.20485 3.21772 7.81351 3.21772C9.42323 3.21772 10.9355 3.86287 12.0719 5.0333C13.3797 6.3781 14.0056 8.22092 13.7991 10.1084L8.39809 15.5846C6.59033 15.759 4.83659 15.1171 3.55516 13.7985ZM13.599 13.2045L12.7443 12.3251L13.5841 11.4739C13.5322 12.0112 13.5217 12.6084 13.599 13.2045ZM14.891 14.533C14.0173 13.308 14.3911 11.1361 14.5574 10.3809C14.5595 10.3711 14.5701 10.3634 14.5712 10.3536C14.5733 10.3362 14.5733 10.3177 14.5754 10.3002C14.5754 10.2991 14.5764 10.2959 14.5764 10.2948C14.5775 10.2882 14.5754 10.2828 14.5775 10.2763C14.8349 8.11412 14.1327 5.99667 12.6353 4.45462C9.97498 1.71926 5.6531 1.71708 2.99282 4.45462C0.335726 7.18999 0.335726 11.6407 2.99282 14.3771C4.28483 15.7045 6.00363 16.4303 7.80398 16.4303C8.07615 16.4303 8.35043 16.415 8.62472 16.3812C8.63002 16.3802 8.63214 16.3758 8.63637 16.3747C8.64802 16.3736 8.65861 16.3769 8.6692 16.3736C9.35863 16.2047 11.6927 15.7448 12.8915 16.7801L14.9333 18.8812C15.0085 18.9575 15.1091 19 15.214 19C15.2214 19 15.2288 19 15.2373 18.9989C15.3231 18.9946 16.0972 18.9357 16.5822 18.4377C17.062 17.9429 17.134 17.1397 17.1404 17.0504C17.1478 16.9305 17.1065 16.815 17.0249 16.73L14.891 14.533ZM17.0143 4.26936C16.3577 4.26936 15.8229 3.71902 15.8229 3.04335C15.8229 2.36768 16.3577 1.81734 17.0143 1.81734C17.672 1.81734 18.2057 2.36768 18.2057 3.04335C18.2057 3.71902 17.672 4.26936 17.0143 4.26936ZM17.0143 1C15.9193 1 15.0287 1.91651 15.0287 3.04335C15.0287 4.17019 15.9193 5.0867 17.0143 5.0867C18.1104 5.0867 19 4.17019 19 3.04335C19 1.91651 18.1104 1 17.0143 1Z" fill="currentColor"/> </svg>
    """
  end
end
