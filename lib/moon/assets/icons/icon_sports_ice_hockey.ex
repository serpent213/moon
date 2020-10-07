defmodule Moon.Assets.Icons.IconSportsIceHockey do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsIceHockey-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M12.4465 14.2805C8.31194 17.007 4.70478 17.781 4.0506 16.7717L2.68959 14.6675C2.82386 14.6827 2.95277 14.7011 3.10101 14.7011C3.63273 14.7011 4.25684 14.6068 4.96796 14.4192C6.69957 13.9596 8.75343 12.9817 10.7536 11.6646C12.7527 10.3463 14.466 8.84157 15.58 7.42574C16.1589 6.68856 16.5381 6.01967 16.7261 5.42884L18.0828 7.52548C18.7349 8.53369 16.5811 11.5572 12.4465 14.2805ZM2.91732 10.7799C3.97755 9.43023 5.6243 7.9873 7.55248 6.71674C10.5334 4.75345 13.2393 3.8027 14.7636 3.8027C15.3533 3.8027 15.7669 3.9458 15.9484 4.22766C16.2642 4.7155 15.8904 5.72154 14.9483 6.92055C13.887 8.26917 12.2414 9.7121 10.3132 10.9827C8.38391 12.2543 6.41276 13.1953 4.76279 13.6322C3.29436 14.0192 2.23198 13.9585 1.91724 13.4728C1.60143 12.985 1.97525 11.9779 2.91732 10.7799ZM18.7574 7.07992L16.623 3.7821C15.4414 1.95757 10.8406 3.57937 7.11206 6.03593C5.11298 7.35311 3.39963 8.85891 2.28677 10.2747C1.0654 11.8272 0.704473 13.0858 1.24265 13.9173L3.376 17.2162C3.72941 17.7615 4.38682 18 5.23436 18C7.227 18 10.2723 16.6861 12.8869 14.9624C16.6144 12.5058 19.939 8.90878 18.7574 7.07992Z" fill="currentColor"/> </svg>
    """
  end
end
