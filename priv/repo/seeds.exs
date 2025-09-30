[
  "First todo",
  "Second todo",
  "Third todo"
]
|> Enum.each(fn title ->
  %Tasks.Todo{title: title}
  |> PhoenixnewIsSentient.Repo.insert!()
end)
