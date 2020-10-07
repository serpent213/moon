defmodule Moon.Assets.Icons.IconNotification do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconNotification-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <circle cx="9.01053" cy="1.53947" r="1.03947" stroke="currentColor"/>  <path d="M11.3565 17.1908C11.3565 18.4661 10.3062 19.5 9.01059 19.5C7.71501 19.5 6.66473 18.4661 6.66473 17.1908" stroke="currentColor"/>  <path fill-rule="evenodd" clip-rule="evenodd" d="M4.32495 8.72368C4.32495 6.0058 6.44065 3.83553 9.01054 3.83553C11.5804 3.83553 13.6961 6.0058 13.6961 8.72368H14.6961C14.6961 5.48997 12.1685 2.83553 9.01054 2.83553C5.85259 2.83553 3.32495 5.48997 3.32495 8.72368H4.32495ZM2.81325 12.7268C4.32673 11.6784 4.32559 9.82195 4.32496 8.78533L4.32493 8.72369H3.32493C3.32493 9.85293 3.29281 11.1715 2.25181 11.8992L2.23712 11.9086C2.22117 11.919 2.19914 11.9335 2.17192 11.9521C2.11752 11.9894 2.04202 12.0431 1.95244 12.1124C1.77403 12.2505 1.53575 12.4535 1.29617 12.7141C0.825479 13.2261 0.299999 14.0159 0.299999 15.0099C0.299999 15.6889 0.444819 16.2918 0.856516 16.7196C1.27225 17.1516 1.86385 17.3059 2.52853 17.3059H7.28199V17.3059H10.7389V16.3059H7.28188V16.3059H2.52853C1.99991 16.3059 1.72725 16.1822 1.57704 16.0262C1.42279 15.8659 1.3 15.5707 1.3 15.0099C1.3 14.3761 1.63879 13.819 2.03236 13.3909C2.22491 13.1814 2.41877 13.016 2.56446 12.9033C2.63693 12.8472 2.69647 12.8049 2.7366 12.7775C2.75664 12.7637 2.77175 12.7538 2.78112 12.7477L2.79074 12.7415L2.79132 12.7412L2.79155 12.741L2.79189 12.7408L2.79193 12.7408L2.7921 12.7407L2.80235 12.7344L2.81325 12.7268ZM13.6961 8.78533C13.6955 9.82195 13.6943 11.6784 15.2078 12.7268L15.2187 12.7344L15.229 12.7407L15.2291 12.7408L15.2292 12.7408L15.2295 12.741L15.2297 12.7412L15.2303 12.7415L15.2399 12.7477C15.2493 12.7538 15.2644 12.7637 15.2845 12.7775C15.3246 12.8049 15.3841 12.8472 15.4566 12.9033C15.6023 13.016 15.7961 13.1814 15.9887 13.3909C16.3823 13.819 16.7211 14.3761 16.7211 15.0099C16.7211 15.5707 16.5983 15.8659 16.444 16.0262C16.2938 16.1822 16.0211 16.3059 15.4925 16.3059H10.7391V17.3059H15.4925C16.1572 17.3059 16.7488 17.1516 17.1645 16.7196C17.5762 16.2918 17.7211 15.6889 17.7211 15.0099C17.7211 14.0159 17.1956 13.2261 16.7249 12.7141C16.4853 12.4535 16.247 12.2505 16.0686 12.1124C15.979 12.0431 15.9035 11.9894 15.8491 11.9521C15.8219 11.9335 15.7999 11.919 15.7839 11.9086L15.7692 11.8992C14.7282 11.1715 14.6961 9.85293 14.6961 8.72369H13.6961L13.6961 8.78533Z" fill="currentColor"/> </svg>
    """
  end
end
