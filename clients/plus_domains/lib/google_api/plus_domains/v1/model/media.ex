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

defmodule GoogleApi.PlusDomains.V1.Model.Media do
  @moduledoc """


  ## Attributes

  - author (MediaAuthor):  Defaults to: `null`.
  - displayName (String.t): The display name for this media. Defaults to: `null`.
  - etag (String.t): ETag of this response for caching purposes. Defaults to: `null`.
  - exif (MediaExif):  Defaults to: `null`.
  - height (integer()): The height in pixels of the original image. Defaults to: `null`.
  - id (String.t): ID of this media, which is generated by the API. Defaults to: `null`.
  - kind (String.t): The type of resource. Defaults to: `null`.
  - mediaCreatedTime (DateTime.t): The time at which this media was originally created in UTC. Formatted as an RFC 3339 timestamp that matches this example: 2010-11-25T14:30:27.655Z Defaults to: `null`.
  - mediaUrl (String.t): The URL of this photo or video&#39;s still image. Defaults to: `null`.
  - published (DateTime.t): The time at which this media was uploaded. Formatted as an RFC 3339 timestamp. Defaults to: `null`.
  - sizeBytes (String.t): The size in bytes of this video. Defaults to: `null`.
  - streams ([Videostream]): The list of video streams for this video. There might be several different streams available for a single video, either Flash or MPEG, of various sizes Defaults to: `null`.
  - summary (String.t): A description, or caption, for this media. Defaults to: `null`.
  - updated (DateTime.t): The time at which this media was last updated. This includes changes to media metadata. Formatted as an RFC 3339 timestamp. Defaults to: `null`.
  - url (String.t): The URL for the page that hosts this media. Defaults to: `null`.
  - videoDuration (String.t): The duration in milliseconds of this video. Defaults to: `null`.
  - videoStatus (String.t): The encoding status of this video. Possible values are:   - \&quot;UPLOADING\&quot; - Not all the video bytes have been received.  - \&quot;PENDING\&quot; - Video not yet processed.  - \&quot;FAILED\&quot; - Video processing failed.  - \&quot;READY\&quot; - A single video stream is playable.  - \&quot;FINAL\&quot; - All video streams are playable. Defaults to: `null`.
  - width (integer()): The width in pixels of the original image. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :author => GoogleApi.PlusDomains.V1.Model.MediaAuthor.t(),
          :displayName => any(),
          :etag => any(),
          :exif => GoogleApi.PlusDomains.V1.Model.MediaExif.t(),
          :height => any(),
          :id => any(),
          :kind => any(),
          :mediaCreatedTime => DateTime.t(),
          :mediaUrl => any(),
          :published => DateTime.t(),
          :sizeBytes => any(),
          :streams => list(GoogleApi.PlusDomains.V1.Model.Videostream.t()),
          :summary => any(),
          :updated => DateTime.t(),
          :url => any(),
          :videoDuration => any(),
          :videoStatus => any(),
          :width => any()
        }

  field(:author, as: GoogleApi.PlusDomains.V1.Model.MediaAuthor)
  field(:displayName)
  field(:etag)
  field(:exif, as: GoogleApi.PlusDomains.V1.Model.MediaExif)
  field(:height)
  field(:id)
  field(:kind)
  field(:mediaCreatedTime, as: DateTime)
  field(:mediaUrl)
  field(:published, as: DateTime)
  field(:sizeBytes)
  field(:streams, as: GoogleApi.PlusDomains.V1.Model.Videostream, type: :list)
  field(:summary)
  field(:updated, as: DateTime)
  field(:url)
  field(:videoDuration)
  field(:videoStatus)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.Media do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.Media.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.Media do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
