defmodule MicrosoftGraphApi.Email.Beta.Api.Messages do
  alias MicrosoftGraphApi.Email.Beta.Connection
  alias GoogleApi.Gax.{Request, Response}

  def email_users_messages_list(connection, user_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :maxResults => :query,
      String.to_atom("$skip") => :query,
      String.to_atom("$select") => :query,
      String.to_atom("$top") => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/beta/{userId}/messages", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %MicrosoftGraphApi.Email.Beta.Model.ListMessagesResponse{}])
  end

  def email_users_messages_get(connection, user_id, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      String.to_atom("$select") => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/beta/{userId}/messages/{id}", %{
        "userId" => URI.encode(user_id, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %MicrosoftGraphApi.Email.Beta.Model.Message{}])
  end
end
