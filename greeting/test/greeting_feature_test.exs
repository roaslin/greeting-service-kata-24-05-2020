defmodule GreetingFeaturesTest do
    use ExUnit.Case

    describe "When a greeting message is requested" do
        test "Then the system will reply with 'Hello my friend!'" do
            Greeting.Application.start(nil, [])
            response = HTTPoison.get!("http://localhost:4000/greet")

            assert response.status_code == 200
            assert response.body == "Hello my friend!"
            # IO.inspect response
        end
    end
    
end