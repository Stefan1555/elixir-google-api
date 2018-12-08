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

defmodule GoogleApi.DFAReporting.V28.Model.Rule do
  @moduledoc """
  A rule associates an asset with a targeting template for asset-level targeting. Applicable to INSTREAM_VIDEO creatives.

  ## Attributes

  - assetId (String.t): A creativeAssets[].id. This should refer to one of the parent assets in this creative. This is a required field. Defaults to: `null`.
  - name (String.t): A user-friendly name for this rule. This is a required field. Defaults to: `null`.
  - targetingTemplateId (String.t): A targeting template ID. The targeting from the targeting template will be used to determine whether this asset should be served. This is a required field. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetId => any(),
          :name => any(),
          :targetingTemplateId => any()
        }

  field(:assetId)
  field(:name)
  field(:targetingTemplateId)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Rule do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Rule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Rule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
