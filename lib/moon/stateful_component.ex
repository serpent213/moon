defmodule Moon.StatefulComponent do
  @moduledoc false

  defmacro __using__(opts \\ []) do
    quote do
      use Surface.LiveComponent, unquote(opts)
      import Moon.Helpers.Styled
      import Moon.Helpers.MergeClass
      import Moon.Helpers.MoonRender

      def __moduledoc__(), do: @moduledoc
    end
  end
end
