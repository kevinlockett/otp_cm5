defmodule Perplexer.Server do
  
  use GenServer

  alias Perplexer.Countarr

  # Callbacks

  @impl true
  def init(input) do
    {:ok, Countarr.new(input)}
  end

  @impl true
  def handle_cast(:inc, state) do
    {:noreply, Countarr.inc(state)}
  end

  @impl true
  def handle_cast(:dec, state) do
    {:noreply, Countarr.dec(state)}
  end

  @impl true
  def handle_call(:show, _from, state) do
    {:reply, Countarr.show(state), state}
  end

end