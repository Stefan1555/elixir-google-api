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

defmodule GoogleApi.CloudResourceManager.V1.Model.Project do
  @moduledoc """
  A Project is a high-level Google Cloud Platform entity.  It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.

  ## Attributes

  - createTime (DateTime.t): Creation time.  Read-only. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): The labels associated with this Project.  Label keys must be between 1 and 63 characters long and must conform to the following regular expression: \\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?.  Label values must be between 0 and 63 characters long and must conform to the regular expression (\\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?)?. A label value can be empty.  No more than 256 labels can be associated with a given resource.  Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed.  Example: &lt;code&gt;\&quot;environment\&quot; : \&quot;dev\&quot;&lt;/code&gt; Read-write. Defaults to: `null`.
  - lifecycleState (String.t): The Project lifecycle state.  Read-only. Defaults to: `null`.
    - Enum - one of [LIFECYCLE_STATE_UNSPECIFIED, ACTIVE, DELETE_REQUESTED, DELETE_IN_PROGRESS]
  - name (String.t): The user-assigned display name of the Project. It must be 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.  Example: &lt;code&gt;My Project&lt;/code&gt; Read-write. Defaults to: `null`.
  - parent (ResourceId): An optional reference to a parent Resource.  Supported parent types include \&quot;organization\&quot; and \&quot;folder\&quot;. Once set, the parent cannot be cleared. The &#x60;parent&#x60; can be set on creation or using the &#x60;UpdateProject&#x60; method; the end user must have the &#x60;resourcemanager.projects.create&#x60; permission on the parent.  Read-write. Defaults to: `null`.
  - projectId (String.t): The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited.  Example: &lt;code&gt;tokyo-rain-123&lt;/code&gt; Read-only after creation. Defaults to: `null`.
  - projectNumber (String.t): The number uniquely identifying the project.  Example: &lt;code&gt;415104041262&lt;/code&gt; Read-only. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :labels => map(),
          :lifecycleState => any(),
          :name => any(),
          :parent => GoogleApi.CloudResourceManager.V1.Model.ResourceId.t(),
          :projectId => any(),
          :projectNumber => any()
        }

  field(:createTime, as: DateTime)
  field(:labels, type: :map)
  field(:lifecycleState)
  field(:name)
  field(:parent, as: GoogleApi.CloudResourceManager.V1.Model.ResourceId)
  field(:projectId)
  field(:projectNumber)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.Project do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.Project.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.Project do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
