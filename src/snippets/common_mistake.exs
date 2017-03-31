def some_plug(conn) do
  unless authorized?(conn) do
    conn
    |> put_status(403)
    |> halt()
  end
  conn
end
