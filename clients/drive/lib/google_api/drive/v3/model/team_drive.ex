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

defmodule GoogleApi.Drive.V3.Model.TeamDrive do
  @moduledoc """
  Representation of a Team Drive.

  ## Attributes

  - backgroundImageFile (TeamDriveBackgroundImageFile):  Defaults to: `null`.
  - backgroundImageLink (String.t): A short-lived link to this Team Drive&#39;s background image. Defaults to: `null`.
  - capabilities (TeamDriveCapabilities):  Defaults to: `null`.
  - colorRgb (String.t): The color of this Team Drive as an RGB hex string. It can only be set on a drive.teamdrives.update request that does not set themeId. Defaults to: `null`.
  - createdTime (DateTime.t): The time at which the Team Drive was created (RFC 3339 date-time). Defaults to: `null`.
  - id (String.t): The ID of this Team Drive which is also the ID of the top level folder of this Team Drive. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;drive#teamDrive\&quot;. Defaults to: `null`.
  - name (String.t): The name of this Team Drive. Defaults to: `null`.
  - restrictions (TeamDriveRestrictions):  Defaults to: `null`.
  - themeId (String.t): The ID of the theme from which the background image and color will be set. The set of possible teamDriveThemes can be retrieved from a drive.about.get response. When not specified on a drive.teamdrives.create request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don&#39;t set colorRgb or backgroundImageFile. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backgroundImageFile => GoogleApi.Drive.V3.Model.TeamDriveBackgroundImageFile.t(),
          :backgroundImageLink => any(),
          :capabilities => GoogleApi.Drive.V3.Model.TeamDriveCapabilities.t(),
          :colorRgb => any(),
          :createdTime => DateTime.t(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :restrictions => GoogleApi.Drive.V3.Model.TeamDriveRestrictions.t(),
          :themeId => any()
        }

  field(:backgroundImageFile, as: GoogleApi.Drive.V3.Model.TeamDriveBackgroundImageFile)
  field(:backgroundImageLink)
  field(:capabilities, as: GoogleApi.Drive.V3.Model.TeamDriveCapabilities)
  field(:colorRgb)
  field(:createdTime, as: DateTime)
  field(:id)
  field(:kind)
  field(:name)
  field(:restrictions, as: GoogleApi.Drive.V3.Model.TeamDriveRestrictions)
  field(:themeId)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.TeamDrive do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.TeamDrive.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.TeamDrive do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
