defmodule MicrosoftGraphApi.Email.Beta.Connection do
  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # Read user mail
      "https://graph.microsoft.com/Mail.Read",


    ],
    otp_app: :microsoft_graph_api_email,
    base_url: "https://graph.microsoft.com/"


end
