defmodule Moon.Assets.Duotones.NoNotification do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Duotones-NoNotification-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.1" d="M80.5685 109.738C99.8981 109.738 115.568 94.0681 115.568 74.7384C115.568 55.4088 99.8981 39.739 80.5685 39.739C61.2389 39.739 45.5691 55.4088 45.5691 74.7384C45.5691 94.0681 61.2389 109.738 80.5685 109.738Z" fill="currentColor"/> <path d="M86.7788 134C80.2095 134 74.8547 128.645 74.8547 122.076C74.8547 121.496 75.324 121.027 75.9036 121.027C76.4833 121.027 76.9525 121.496 76.9525 122.076C76.9525 127.514 81.3688 131.902 86.7788 131.902C92.1888 131.902 96.6051 127.486 96.6051 122.076C96.6051 121.496 97.0744 121.027 97.654 121.027C98.2337 121.027 98.7029 121.496 98.7029 122.076C98.7029 128.645 93.3757 134 86.7788 134Z" fill="currentColor"/> <path d="M115.568 93.3422C105.328 93.3422 96.9917 85.0064 96.9917 74.766C96.9917 64.5257 105.328 56.1898 115.568 56.1898C125.808 56.1898 134.144 64.5257 134.144 74.766C134.144 85.0064 125.808 93.3422 115.568 93.3422ZM115.568 58.26C106.487 58.26 99.0619 65.6574 99.0619 74.766C99.0619 83.8471 106.459 91.272 115.568 91.272C124.677 91.272 132.074 83.8747 132.074 74.766C132.046 65.6574 124.649 58.26 115.568 58.26Z" fill="currentColor"/> <path d="M107.867 83.4883C107.591 83.4883 107.342 83.3779 107.122 83.1847C106.708 82.7706 106.708 82.1082 107.122 81.6941L122.496 66.3198C122.91 65.9058 123.572 65.9058 123.987 66.3198C124.401 66.7338 124.401 67.3963 123.987 67.8103L108.612 83.1847C108.419 83.3779 108.143 83.4883 107.867 83.4883Z" fill="currentColor"/> <path d="M123.269 83.4883C122.993 83.4883 122.744 83.3779 122.523 83.1847L107.149 67.8103C106.735 67.3963 106.735 66.7338 107.149 66.3198C107.563 65.9058 108.226 65.9058 108.64 66.3198L124.014 81.6941C124.428 82.1082 124.428 82.7706 124.014 83.1847C123.793 83.3779 123.517 83.4883 123.269 83.4883Z" fill="currentColor"/> <path d="M117.334 123.125H56.251C54.5121 123.125 52.9664 122.214 52.1107 120.696C51.255 119.178 51.2826 117.384 52.1935 115.893L59.0664 104.576V84.2335C59.0664 69.1628 71.3217 56.6591 86.3924 56.383C90.4499 56.3002 94.397 57.1283 98.1233 58.7844C98.6478 59.0328 98.8686 59.6401 98.6478 60.1645C98.3993 60.689 97.7921 60.9374 97.2677 60.689C93.845 59.1432 90.2015 58.398 86.4476 58.4532C72.5086 58.7292 61.1642 70.2945 61.1642 84.2335V105.156L53.9876 116.97C53.4908 117.798 53.4632 118.819 53.9324 119.647C54.4017 120.503 55.2849 120.999 56.251 120.999H117.334C118.328 120.999 119.211 120.475 119.681 119.592C120.15 118.708 120.122 117.687 119.57 116.859L112.725 106.398V97.7309C112.725 97.1513 113.194 96.682 113.774 96.682C114.353 96.682 114.823 97.1513 114.823 97.7309V105.763L121.337 115.7C122.303 117.19 122.386 119.012 121.53 120.558C120.674 122.186 119.101 123.125 117.334 123.125Z" fill="white"/> <path d="M67.9268 84.7028C67.3472 84.7028 66.8779 84.2335 66.8779 83.6539C66.8779 73.0271 75.5174 64.3877 86.1442 64.3877C86.7238 64.3877 87.1931 64.8569 87.1931 65.4365C87.1931 66.0162 86.7238 66.4854 86.1442 66.4854C76.6767 66.4854 68.9757 74.1864 68.9757 83.6539C68.9757 84.2335 68.5064 84.7028 67.9268 84.7028Z" fill="white"/> <path d="M93.1274 58.4532C92.5478 58.4532 92.0785 57.9839 92.0785 57.4043C92.0785 54.4785 89.7048 52.1047 86.7789 52.1047C83.8531 52.1047 81.4793 54.4785 81.4793 57.4043C81.4793 57.9839 81.0101 58.4532 80.4305 58.4532C79.8508 58.4532 79.3816 57.9839 79.3816 57.4043C79.3816 53.3192 82.6938 50.007 86.7789 50.007C90.864 50.007 94.1763 53.3192 94.1763 57.4043C94.1763 57.9839 93.7071 58.4532 93.1274 58.4532Z" fill="white"/> </svg>
    """
  end
end
