defmodule CardCollection do
    use GenServer

    def start_link do
        GenServer.start_link(__MODULE__, [], [name: :collection])
    end

    def get_card do
        GenServer.call(:collection, {:read})
    end

    # Server

    def handle_call({:read}, from, list) do
    IO.puts 'Halo'
        {:reply, list, list}
    end

    def handle_cast({:add, quote}, list) do
        {:noreply, list ++ [quote]}
    end
end