defmodule Tasks.Todo do
  use Ash.Resource,
    otp_app: :phoenixnew_is_sentient,
    domain: Tasks,
    data_layer: AshPostgres.DataLayer,
    authorizers: [Ash.Policy.Authorizer]

  postgres do
    table "todos"
    repo PhoenixnewIsSentient.Repo
  end

  actions do
    defaults [:read]
  end

  policies do
    policy action(:read) do
      always()
      authorize_if always()
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :title, :string do
      allow_nil? false
      public? true
    end

    timestamps()
  end
end
