defmodule CardGameConceptWeb do
    def controller do
        quote do
            use Phoenix.Controller, namespace: CardGameConceptWeb
        end
    end

    def view do
        quote do
            use Phoenix.View,   root: "web/templates",
                                namespace: CardGameConceptWeb

            use Phoenix.Html
        end
    end

    def router do
        quote do
            use Phoenix.Router
            import Phoenix.Controller
        end
    end

    defmacro __using__(which) when is_atom(which) do
        apply(__MODULE__, which, [])
    end
end