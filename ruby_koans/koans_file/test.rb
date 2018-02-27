in_ruby_version("1.8") do
    def as_name(name)
      name.to_s
    end
  end

  in_ruby_version("1.9", "2") do
    def as_name(name)
      name.to_sym
    end
  end

  def test_each_is_a_method_on_arrays
    puts [].methods.include?(as_name(:each))
  end

  test_each_is_a_method_on_arrays