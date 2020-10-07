defmodule Moon.Assets.Icons.IconGoogle do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Icons-IconGoogle-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="auto" height="1em" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg"> <mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="21"> <path fill-rule="evenodd" clip-rule="evenodd" d="M19.7674 8.53755H10.2326V12.5692H15.7209C15.2093 15.1304 13.0698 16.6008 10.2326 16.6008C6.88372 16.6008 4.18605 13.8498 4.18605 10.4348C4.18605 7.01976 6.88372 4.26877 10.2326 4.26877C11.6744 4.26877 12.9767 4.79051 14 5.64427L16.9767 2.6087C15.1628 0.996047 12.8372 0 10.2326 0C4.55814 0 0 4.64822 0 10.4348C0 16.2213 4.55814 20.8696 10.2326 20.8696C15.3488 20.8696 20 17.0751 20 10.4348C20 9.81818 19.907 9.15415 19.7674 8.53755Z" fill="white"/> </mask> <g mask="url(#mask0)"> <path d="M-0.869629 16.5218V4.34784L6.95646 10.4348L-0.869629 16.5218Z" fill="#FBBC05"/> </g> <mask id="mask1" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="21"> <path fill-rule="evenodd" clip-rule="evenodd" d="M19.7674 8.53755H10.2326V12.5692H15.7209C15.2093 15.1304 13.0698 16.6008 10.2326 16.6008C6.88372 16.6008 4.18605 13.8498 4.18605 10.4348C4.18605 7.01976 6.88372 4.26877 10.2326 4.26877C11.6744 4.26877 12.9767 4.79051 14 5.64427L16.9767 2.6087C15.1628 0.996047 12.8372 0 10.2326 0C4.55814 0 0 4.64822 0 10.4348C0 16.2213 4.55814 20.8696 10.2326 20.8696C15.3488 20.8696 20 17.0751 20 10.4348C20 9.81818 19.907 9.15415 19.7674 8.53755Z" fill="white"/> </mask> <g mask="url(#mask1)"> <path d="M-0.869629 4.31159L7.13762 10.4348L10.4347 7.56159L21.7391 5.72464V-0.869568H-0.869629V4.31159Z" fill="#EA4335"/> </g> <mask id="mask2" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="21"> <path fill-rule="evenodd" clip-rule="evenodd" d="M19.7674 8.53755H10.2326V12.5692H15.7209C15.2093 15.1304 13.0698 16.6008 10.2326 16.6008C6.88372 16.6008 4.18605 13.8498 4.18605 10.4348C4.18605 7.01976 6.88372 4.26877 10.2326 4.26877C11.6744 4.26877 12.9767 4.79051 14 5.64427L16.9767 2.6087C15.1628 0.996047 12.8372 0 10.2326 0C4.55814 0 0 4.64822 0 10.4348C0 16.2213 4.55814 20.8696 10.2326 20.8696C15.3488 20.8696 20 17.0751 20 10.4348C20 9.81818 19.907 9.15415 19.7674 8.53755Z" fill="white"/> </mask> <g mask="url(#mask2)"> <path d="M-0.869629 16.558L13.2608 5.72464L16.9818 6.19565L21.7391 -0.869568V21.7391H-0.869629V16.558Z" fill="#34A853"/> </g> <mask id="mask3" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="21"> <path fill-rule="evenodd" clip-rule="evenodd" d="M19.7674 8.53755H10.2326V12.5692H15.7209C15.2093 15.1304 13.0698 16.6008 10.2326 16.6008C6.88372 16.6008 4.18605 13.8498 4.18605 10.4348C4.18605 7.01976 6.88372 4.26877 10.2326 4.26877C11.6744 4.26877 12.9767 4.79051 14 5.64427L16.9767 2.6087C15.1628 0.996047 12.8372 0 10.2326 0C4.55814 0 0 4.64822 0 10.4348C0 16.2213 4.55814 20.8696 10.2326 20.8696C15.3488 20.8696 20 17.0751 20 10.4348C20 9.81818 19.907 9.15415 19.7674 8.53755Z" fill="white"/> </mask> <g mask="url(#mask3)"> <path d="M21.7391 21.7391L7.10561 10.4583L5.21741 9.04819L21.7391 4.34784V21.7391Z" fill="#4285F4"/> </g> </svg>
    """
  end
end
