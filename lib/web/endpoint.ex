defmodule CardGameConceptWeb.Endpoint do
    use Phoenix.Endpoint, otp_app: :hello
    
    plug CardGameConceptWeb.Router

    def init(_key, config) do
        if config[:load_from_system_env] do
            port = System.get_env("PORT") || raise "expected the PORT environment variable to be set"
            {:ok, Keyword.put(config, :http, [:inet6, port: port])}
        else
            {:ok, config}
        end    
    end
end