defmodule MicrosoftGraphApi.Email.Beta.Model.Message do
  @moduledoc """
  An email message.
  """
  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :bccRecipients => list(String.t()),
          :body => String.t(),
          :ccRecipients => list(String.t()),
          :bodyPreview => String.t(),
          :conversationId => String.t(),
          :receivedDateTime => String.t(),
          :toRecipients => list(String.t()),
          :subject => String.t(),
          :sender => String.t()
        }

  field(:id)
  field(:bccRecipients)
  field(:body)
  field(:ccRecipients, type: :list)
  field(:bodyPreview)
  field(:conversationId)
  field(:receivedDateTime)
  field(:toRecipients, type: :list)
  field(:subject)
  field(:sender)
end

defimpl Poison.Decoder, for: MicrosoftGraphApi.Email.Beta.Model.Message do
  def decode(value, options) do
    MicrosoftGraphApi.Email.Beta.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: MicrosoftGraphApi.Email.Beta.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
