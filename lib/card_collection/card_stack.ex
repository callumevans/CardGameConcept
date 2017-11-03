defmodule CardStack do
    use GenServer

    def start_link() do
        GenServer.start_link(__MODULE__, [], [])
    end

    def handle_call(:pop, _from, [h | t]) do
        {:reply, h, t}
    end

    def handle_cast({:push, item}, state) do
        {:noreply, [item | state]}
    end

    # def handle_call(request, from, state) do
    #     super(request, from, state)
    # end
end