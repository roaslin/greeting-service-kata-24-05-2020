defmodule GreetingWeb do
    use Plug.Router

    plug :match
    plug :dispatch


    match "/greet" do
        send_resp(conn, 200, "Hello my friend!")
    end
end