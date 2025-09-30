defmodule PhoenixnewIsSentientWeb.AshTypescriptRpcController do
  use PhoenixnewIsSentientWeb, :controller

  def run(conn, params) do
    result = AshTypescript.Rpc.run_action(:phoenixnew_is_sentient, conn, params)
    json(conn, result)
  end

  def validate(conn, params) do
    result = AshTypescript.Rpc.validate_action(:phoenixnew_is_sentient, conn, params)
    json(conn, result)
  end
end
