defmodule Moon.Assets.Icons.IconHyperlink do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconHyperlink-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M4.74219 9.99219C4.95219 9.99219 5.13969 9.90969 5.27469 9.77469L9.77469 5.27469C9.90969 5.13969 9.99219 4.95219 9.99219 4.74219C9.99219 4.32969 9.65469 3.99219 9.24219 3.99219C9.03219 3.99219 8.84469 4.07469 8.70969 4.20969L4.20969 8.70969C4.07469 8.84469 3.99219 9.03219 3.99219 9.24219C3.99219 9.65469 4.32969 9.99219 4.74219 9.99219ZM7.62969 8.47719L5.79969 10.3072L5.04969 11.0572L5.04219 11.0497C4.77219 11.3197 4.40469 11.4997 3.99219 11.4997C3.16719 11.4997 2.49219 10.8247 2.49219 9.99969C2.49219 9.58719 2.67219 9.21969 2.94219 8.94969L2.93469 8.94219L3.68469 8.19219L5.51469 6.36219C5.26719 6.28719 5.01219 6.24219 4.74219 6.24219C3.91719 6.24219 3.17469 6.58719 2.63469 7.13469L2.61969 7.11969L1.86969 7.86969L1.88469 7.88469C1.33719 8.42469 0.992188 9.16719 0.992188 9.99219C0.992188 11.6497 2.33469 12.9922 3.99219 12.9922C4.81719 12.9922 5.55969 12.6472 6.09969 12.0997L6.11469 12.1147L6.86469 11.3647L6.84969 11.3497C7.39719 10.8097 7.74219 10.0672 7.74219 9.24219C7.74219 8.97969 7.69719 8.72469 7.62969 8.47719ZM12.9922 3.99219C12.9922 2.33469 11.6497 0.992188 9.99219 0.992188C9.16719 0.992188 8.42469 1.33719 7.88469 1.88469L7.86969 1.86969L7.11969 2.61969L7.13469 2.63469C6.59469 3.17469 6.24219 3.91719 6.24219 4.74219C6.24219 5.01219 6.28719 5.25969 6.35469 5.50719L8.18469 3.67719L8.93469 2.92719L8.94219 2.93469C9.21219 2.66469 9.57969 2.48469 9.99219 2.48469C10.8172 2.48469 11.4922 3.15969 11.4922 3.98469C11.4922 4.39719 11.3122 4.76469 11.0422 5.03469L11.0497 5.04219L10.2997 5.79219L8.47719 7.62969C8.72469 7.69719 8.97969 7.74219 9.24219 7.74219C10.0672 7.74219 10.8097 7.39719 11.3497 6.84969L11.3647 6.86469L12.1147 6.11469L12.0997 6.09969C12.6472 5.55969 12.9922 4.82469 12.9922 3.99219Z" fill="currentColor"/> </svg>
    """
  end
end
