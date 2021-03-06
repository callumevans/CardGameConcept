defmodule CardGameConcept.Application do
    use Application, CardCollection

    def start(type, args) do
        import Supervisor.Spec

        children = [
            supervisor(CardCollection, []),
            supervisor(CardGameConceptWeb.Endpoint, [])
        ]

        opts = [strategy: :one_for_one, name: CardGameConcept.Supervisor]
        Supervisor.start_link(children, opts)
    end

    def config_change(changed, _new, removed) do
        CardGameConceptWeb.Endpoint.config_change(changed, removed)
        :ok
    end
end