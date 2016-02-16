defmodule Stripex.Actions.Update do
  alias Stripex.API

  defmacro __using__(_) do
    quote do
      def update(params) do
        update(params.id, Map.delete(params))
      end

      def update(id, params) do
        API.post("/#{@resource}" <> "/#{id}", params)
      end
    end
  end
end
