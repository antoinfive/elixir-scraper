defmodule ScrapingWithElixir do
  use Hound.Helpers

  def start do
    IO.puts "starting"
    Hound.start_session
    navigate_to "https://accounts.google.com/ServiceLogin?service=youtube&uilel=3&continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Fapp%3Ddesktop%26hl%3Den%26feature%3Dsign_in_button%26action_handle_signin%3Dtrue%26next%3D%252F&hl=en&passive=true#identifier"
     find_element(:id, "Email")
        |> fill_field("antoinfive@gmail.com")
    email_next = find_element(:id, "next")
    submit_element(email_next)
    password_ = find_element(:id, "Passwd")
        |> fill_field("goobledegook")
    password_submit = find_element(:id, "signIn")
    submit_element(password)
  end
end
