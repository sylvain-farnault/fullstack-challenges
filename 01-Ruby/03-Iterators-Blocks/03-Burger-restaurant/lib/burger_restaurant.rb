def burger(patty, sauce, topping)
  # TODO: code the `burger` method
  custom_patty = yield(patty) if block_given?

  %W{bread #{custom_patty || patty} #{sauce} #{topping} bread}
end
