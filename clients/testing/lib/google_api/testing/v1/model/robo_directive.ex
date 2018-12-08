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

defmodule GoogleApi.Testing.V1.Model.RoboDirective do
  @moduledoc """
  Directs Robo to interact with a specific UI element if it is encountered during the crawl. Currently, Robo can perform text entry or element click.

  ## Attributes

  - actionType (String.t): The type of action that Robo should perform on the specified element. Required. Defaults to: `null`.
    - Enum - one of [ACTION_TYPE_UNSPECIFIED, SINGLE_CLICK, ENTER_TEXT]
  - inputText (String.t): The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name. Optional Defaults to: `null`.
  - resourceName (String.t): The android resource name of the target UI element For example,    in Java: R.string.foo    in xml: @string/foo Only the “foo” part is needed. Reference doc: https://developer.android.com/guide/topics/resources/accessing-resources.html Required Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionType => any(),
          :inputText => any(),
          :resourceName => any()
        }

  field(:actionType)
  field(:inputText)
  field(:resourceName)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.RoboDirective do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.RoboDirective.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.RoboDirective do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
