defmodule Moon.Assets.Icons.IconSportsDarts do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconSportsDarts-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">  <path fill-rule="evenodd" clip-rule="evenodd" d="M15.7506 8.60879L14.6773 8.28702C14.7759 8.27527 14.871 8.24239 14.9427 8.17075L17.6249 5.4885C17.6954 5.41804 17.7295 5.32291 17.74 5.22426L18.0618 6.29764L15.7506 8.60879ZM8.71383 12.3245L5.80375 15.2334L4.76561 14.1953L7.67569 11.2864C7.89295 11.0691 8.27462 11.0691 8.49071 11.2864L8.71383 11.5083C8.82188 11.6175 8.88177 11.762 8.88177 11.9158C8.88177 12.0708 8.82188 12.2153 8.71383 12.3245ZM4.35341 15.8687L4.13145 15.6456C3.90715 15.4213 3.90715 15.0549 4.13145 14.8294L4.1432 14.8177L5.18134 15.857L5.16959 15.8687C4.94411 16.093 4.57771 16.0919 4.35341 15.8687ZM13.7025 1.93721L14.7747 2.26016C14.6773 2.27073 14.581 2.30361 14.5105 2.37407L11.8283 5.0575C11.7578 5.12797 11.7249 5.22426 11.7132 5.32291L11.3914 4.24954L13.7025 1.93721ZM14.4412 7.4262L13.1482 7.47435L13.6755 6.94706C13.847 6.77443 13.847 6.49611 13.6755 6.32465C13.5029 6.15202 13.2246 6.15202 13.0531 6.32465L12.5258 6.85076L12.5728 5.55779L15.012 3.1198L16.952 3.04816L16.8804 4.98822L14.4412 7.4262ZM18.9813 6.29646L17.8316 2.46333C17.8305 2.45745 17.8246 2.45393 17.8222 2.44806C17.8011 2.38582 17.7694 2.3271 17.7212 2.27895C17.6719 2.22963 17.6097 2.19557 17.5439 2.17326C17.5416 2.17208 17.5392 2.16973 17.5369 2.16856L13.7037 1.01885C13.5464 0.971879 13.3796 1.01416 13.2657 1.12924L10.5823 3.81267C10.4672 3.92659 10.4249 4.09452 10.4719 4.25071L11.5464 7.83019L8.87355 10.503C8.30868 10.1308 7.55004 10.1672 7.05328 10.6639L3.50904 14.207C3.01228 14.7038 2.97705 15.4624 3.34932 16.0273L1.12859 18.248C0.957136 18.4195 0.957136 18.699 1.12859 18.8704C1.2155 18.9573 1.32706 18.9996 1.4398 18.9996C1.55371 18.9996 1.66528 18.9573 1.75218 18.8704L3.97174 16.6509C4.21366 16.8106 4.48141 16.9174 4.76209 16.9174C5.13436 16.9174 5.50781 16.7753 5.79318 16.4911L9.33625 12.9469C9.83301 12.4501 9.86941 11.6915 9.49596 11.1266L12.1688 8.45378L15.7495 9.52832C15.7917 9.54007 15.834 9.54594 15.8763 9.54594C15.9914 9.54594 16.1041 9.50131 16.1875 9.41676L18.8709 6.7345C18.9849 6.61941 19.0283 6.45148 18.9813 6.29646Z" fill="currentColor"/> </svg>
    """
  end
end
