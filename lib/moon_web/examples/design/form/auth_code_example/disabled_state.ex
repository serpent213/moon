defmodule MoonWeb.Examples.Design.Form.AuthCodeExample.DisabledState do
  @moduledoc false

  use Moon.StatelessComponent
  use MoonWeb, :example

  alias Moon.Design.Form.AuthCode

  def render(assigns) do
    ~F"""
    <AuthCode disabled id="disabled_state">
      <AuthCode.Input />
    </AuthCode>
    """
  end

  def code() do
    """
    alias Moon.Design.Form.AuthCode

    ...

    <AuthCode disabled id="disabled_state">
      <AuthCode.Input />
    </AuthCode>
    """
  end
end
