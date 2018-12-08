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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.ListCustomersResponse do
  @moduledoc """
  Response message of all customers related to this partner.

  ## Attributes

  - customers ([Company]): List of customers related to this reseller partner. Defaults to: `null`.
  - nextPageToken (String.t): A token to retrieve the next page of results. Omitted if no further results are available. Defaults to: `null`.
  - totalSize (integer()): The total count of items in the list irrespective of pagination. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customers => list(GoogleApi.AndroidDeviceProvisioning.V1.Model.Company.t()),
          :nextPageToken => any(),
          :totalSize => any()
        }

  field(:customers, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.Company, type: :list)
  field(:nextPageToken)
  field(:totalSize)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.ListCustomersResponse do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.ListCustomersResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.ListCustomersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
