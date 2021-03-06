defmodule Strings do
  use Koans

  @intro "Strings"

  koan "Strings are there to represent text" do
    assert "hello" == "hello"
  end

  koan "They can be put together" do
    assert "hello world" == "hello " <> "world"
  end

  koan "Or pulled apart when needed" do
    assert ["hello", "world"] == String.split("hello world", " ")
  end

  koan "Be careful, a message may be altered" do
    assert String.replace("An awful day", "awful", "incredible") == "An incredible day"
  end

  koan "But strings never lie about themselves" do
    assert true == String.contains?("An incredible day", "day")
  end

  koan "Sometimes you want just the opposite of what is given" do
    assert "banana" == String.reverse("ananab")
  end

  koan "Other times a little cleaning is in order" do
    assert String.strip("  \n banana\n  ") == "banana"
  end

  koan "Repetition is the mother of learning" do
    assert "StringStringString" == String.duplicate("String", 3)
  end

  koan "Strings can be louder when necessary" do
    assert "LISTEN" == String.upcase("listen")
  end
end
