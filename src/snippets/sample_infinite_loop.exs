def sample_infinite_loop() do
  wait_for_something()
  do_something()
  sample_infinite_loop()
end
