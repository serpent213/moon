defmodule Moon.Components.Checkbox do
  use Moon.StatelessComponent
  alias Surface.Components.Form.Checkbox

  prop(on_click, :event)
  prop(checked, :boolean)
  prop(class, :string)
  slot(default)

  def render(assigns) do
    ~H"""
    {{ asset_import @socket, "js/components/checkbox" }}

    <label class="moon-checkbox {{ @class }}">
      <input class="moon-checkbox-input" type="checkbox" checked={{ @checked }} />
      <span class="moon-checkbox-caption">
        <slot />
      </span>
    </label>
    """
  end
end
