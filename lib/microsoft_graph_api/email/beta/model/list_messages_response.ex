defmodule MicrosoftGraphApi.Email.Beta.Model.ListMessagesResponse do
  use GoogleApi.Gax.ModelBase

  field(:value, as: MicrosoftGraphApi.Email.Beta.Model.Message, type: :list)
  field(String.to_atom("@odata.context"))
  field(String.to_atom("@odata.nextLink"))
end

defimpl Poison.Decoder, for: MicrosoftGraphApi.Email.Beta.Model.ListMessagesResponse do
  def decode(value, options) do
    MicrosoftGraphApi.Email.Beta.Model.ListMessagesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: MicrosoftGraphApi.Email.Beta.Model.ListMessagesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
