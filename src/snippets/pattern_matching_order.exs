def published?(platform, %{^platform => %{state: "published"}}), do: true
def published?(_platform, _info), do: false
