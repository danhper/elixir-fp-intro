list = [1, 2, 3, 4]
List.delete(list, 3)# returns a new list

map = %{foo: "bar"}
Map.put(map, :bar, "baz") # returns a new map

conn = get_conn()
halt(conn) # returns a new conn
