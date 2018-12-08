# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Chat.V1.Model.FormAction do
  @moduledoc """
  A form action describes the behavior when the form is submitted. For example, an Apps Script can be invoked to handle the form.

  ## Attributes

  - parameters ([ActionParameter]): List of action parameters. Defaults to: `null`.
  - actionMethodName (String.t): Apps Script function to invoke when the containing element is clicked/activated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => list(GoogleApi.Chat.V1.Model.ActionParameter.t()),
          :actionMethodName => any()
        }

  field(:parameters, as: GoogleApi.Chat.V1.Model.ActionParameter, type: :list)
  field(:actionMethodName)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.FormAction do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.FormAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.FormAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
