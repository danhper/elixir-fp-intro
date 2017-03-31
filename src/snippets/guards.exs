def status(age) when age < 18, do: "child"
def status(age) when age < 65, do: "adult"
def status(age), do: "senior"
