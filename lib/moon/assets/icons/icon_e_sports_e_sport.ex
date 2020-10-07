defmodule Moon.Assets.Icons.IconESportsESport do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconESportsESport-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg"> <path fill-rule="evenodd" clip-rule="evenodd" d="M13.6966 17.1758H14.68C16.8425 17.1758 18.8559 18.246 20.0658 20.0385L20.1837 20.2134C20.5483 20.753 21.1547 21.0755 21.8062 21.0755C22.426 21.0755 23.015 20.7777 23.3821 20.2788L23.4455 20.1936C23.6947 19.8552 23.8265 19.4539 23.8265 19.0333V17.9121C23.8265 14.4771 23.0581 11.0164 21.6046 7.90452C21.3266 7.30949 20.7227 6.92453 20.0653 6.92453H19.7536C19.2746 6.92453 18.8158 7.12815 18.4948 7.4829C17.9176 8.11955 17.0937 8.48419 16.2351 8.48419H12.1419C11.2829 8.48419 10.459 8.11955 9.8823 7.4829C9.56077 7.12815 9.10201 6.92453 8.62343 6.92453H8.31131C7.65438 6.92453 7.04996 7.30949 6.77203 7.90502C5.31894 11.0164 4.55054 14.4766 4.55054 17.9121V19.0333C4.55054 19.4539 4.68232 19.8552 4.93251 20.1946L4.99494 20.2798C5.36155 20.7777 5.95111 21.0755 6.57039 21.0755C7.22187 21.0755 7.82877 20.753 8.1929 20.2129L8.31081 20.038C9.52064 18.246 11.534 17.1758 13.6966 17.1758ZM21.8062 22.4256C20.7054 22.4256 19.6808 21.8811 19.0645 20.9685L18.9466 20.7931C17.9884 19.3741 16.3932 18.5264 14.68 18.5264H13.6966C11.9834 18.5264 10.3886 19.3741 9.42998 20.7936L9.31207 20.9685C8.69675 21.8811 7.67122 22.4256 6.57039 22.4256C5.52355 22.4256 4.52825 21.9227 3.90748 21.08L3.84456 20.9947C3.42345 20.4225 3.20001 19.7442 3.20001 19.0333V17.9121C3.20001 14.2804 4.01251 10.6225 5.54882 7.33327C6.04771 6.26509 7.1322 5.57443 8.31131 5.57443H8.62343C9.48249 5.57443 10.3059 5.93908 10.8826 6.57573C11.2041 6.93047 11.6634 7.1341 12.1419 7.1341H16.2351C16.7137 7.1341 17.1725 6.93047 17.494 6.57573C18.0707 5.93908 18.8941 5.57443 19.7536 5.57443H20.0653C21.2449 5.57443 22.3294 6.26509 22.8282 7.33327C24.3646 10.623 25.1766 14.2809 25.1766 17.9121V19.0333C25.1766 19.7442 24.9536 20.4225 24.532 20.9952L24.4691 21.0804C23.8483 21.9227 22.853 22.4256 21.8062 22.4256Z" fill="#735BEC"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M8.66782 14.5484C8.29476 14.5484 7.99255 14.2462 7.99255 13.8731V10.5541C7.99255 10.1815 8.29476 9.87878 8.66782 9.87878C9.04038 9.87878 9.34308 10.1815 9.34308 10.5541V13.8731C9.34308 14.2462 9.04038 14.5484 8.66782 14.5484Z" fill="#735BEC"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M10.327 12.8886H7.00818C6.63513 12.8886 6.33292 12.5864 6.33292 12.2133C6.33292 11.8407 6.63513 11.5385 7.00818 11.5385H10.327C10.7001 11.5385 11.0023 11.8407 11.0023 12.2133C11.0023 12.5864 10.7001 12.8886 10.327 12.8886Z" fill="#735BEC"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M15.5298 14.6729C15.5298 15.3903 14.9481 15.972 14.2308 15.972C13.5139 15.972 12.9323 15.3903 12.9323 14.6729C12.9323 13.9555 13.5139 13.3739 14.2308 13.3739C14.9481 13.3739 15.5298 13.9555 15.5298 14.6729Z" fill="#735BEC"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M20.2305 10.6203C20.2305 11.0989 19.8426 11.4869 19.364 11.4869C18.8859 11.4869 18.498 11.0989 18.498 10.6203C18.498 10.1422 18.8859 9.75427 19.364 9.75427C19.8426 9.75427 20.2305 10.1422 20.2305 10.6203Z" fill="#735BEC"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M20.2305 13.8066C20.2305 14.2852 19.8426 14.6732 19.364 14.6732C18.8859 14.6732 18.498 14.2852 18.498 13.8066C18.498 13.328 18.8859 12.9401 19.364 12.9401C19.8426 12.9401 20.2305 13.328 20.2305 13.8066Z" fill="#735BEC"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M20.9572 13.0797C20.4791 13.0797 20.0912 12.6917 20.0912 12.2136C20.0912 11.735 20.4791 11.3471 20.9572 11.3471C21.4358 11.3471 21.8237 11.735 21.8237 12.2136C21.8237 12.6917 21.4358 13.0797 20.9572 13.0797Z" fill="#735BEC"/> <path fill-rule="evenodd" clip-rule="evenodd" d="M17.7713 13.0797C17.2927 13.0797 16.9048 12.6917 16.9048 12.2136C16.9048 11.735 17.2927 11.3471 17.7713 11.3471C18.2493 11.3471 18.6378 11.735 18.6378 12.2136C18.6378 12.6917 18.2493 13.0797 17.7713 13.0797Z" fill="#735BEC"/> </svg>
    """
  end
end
