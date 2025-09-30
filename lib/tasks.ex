defmodule Tasks do
  use Ash.Domain, otp_app: :phoenixnew_is_sentient, extensions: [AshTypescript.Rpc]

  typescript_rpc do
    resource Tasks.Todo do
      rpc_action :list_todos, :read
    end
  end

  resources do
    resource Tasks.Todo
  end
end
