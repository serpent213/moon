defmodule Moon.Design.Form.Field do
  @moduledoc false

  use Moon.StatelessComponent

  import Moon.Helpers.Form

  alias __MODULE__

  @doc "Form info, usually should be taken from context"
  prop(form, :form, from_context: {Surface.Components.Form, :form})
  @doc "Field name, surface-style"
  prop(field, :atom)
  @doc "Input size"
  prop(size, :string, values!: ~w(sm md lg), default: "md")
  @doc "Label for input field"
  prop(label, :string)
  @doc "Hint for input field"
  prop(hint, :string)
  @doc "Whether error message is shown"
  prop(hide_errors, :boolean)
  @doc "Additional Tailwind classes"
  prop(class, :css_class)
  @doc "Id attribute for DOM element"
  prop(id, :string)
  @doc "Data-testid attribute for DOM element"
  prop(testid, :string)
  @doc "Inner content of the component"
  slot(default)

  prop(attrs, :map)

  # opts={Map.merge(%{id: @id, "data-testid": @testid}, @attrs)}

  def render(assigns) do
    ~F"""
    <Surface.Components.Form.Field name={@field} {=@class}>
      <Field.Label :if={@label} {=@size} title={@label} />
      <#slot context_put={size: @size, error: !!@field && !!@form && has_error(@form, @field)} />
      <Field.Hint :if={@hint} title={@hint} />
      <Field.Error :if={!@hide_errors && !!@field && !!@form} />
    </Surface.Components.Form.Field>
    """
  end
end
