defmodule Moon.Assets.Icons.IconRefresh do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconRefresh-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 25 28" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M6.63782 0.4934C6.9176 0.0172276 7.53042 -0.141977 8.0066 0.137806L13.0066 3.07564C13.2428 3.21443 13.4117 3.44406 13.4739 3.71088C13.5361 3.9777 13.4861 4.25835 13.3355 4.48726L10.3355 9.04941C10.0321 9.51087 9.41202 9.63896 8.95056 9.33551C8.48911 9.03207 8.36102 8.412 8.66446 7.95054L10.5234 5.12358C5.66936 6.0482 2 10.3145 2 15.4378C2 21.2368 6.70101 25.9378 12.5 25.9378C18.299 25.9378 23 21.2368 23 15.4378C23 12.3633 21.6798 9.59846 19.5723 7.67678C19.1642 7.30466 19.135 6.67217 19.5071 6.26406C19.8793 5.85596 20.5118 5.82679 20.9199 6.19891C23.4255 8.4836 25 11.7776 25 15.4378C25 22.3414 19.4036 27.9378 12.5 27.9378C5.59644 27.9378 0 22.3414 0 15.4378C0 9.58337 4.02477 4.66893 9.45834 3.31049L6.99341 1.86218C6.51724 1.58239 6.35804 0.969572 6.63782 0.4934Z" fill="currentColor"/> </svg>
    """
  end
end
