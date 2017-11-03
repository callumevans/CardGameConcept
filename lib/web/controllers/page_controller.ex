defmodule CardGameConceptWeb.PageController do
    use CardGameConceptWeb, :controller
    import CardCollection

    def index(conn, _params) do
        CardCollection.get_card
        text conn, "Hello, Callum!"
    end
end