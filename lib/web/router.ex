defmodule CardGameConceptWeb.Router do
    use CardGameConceptWeb, :router

    pipeline :api do
        plug :accepts, ["json"]
    end

    scope "/", CardGameConceptWeb do
        pipe_through :api
        
        get "/", PageController, :index
    end
end