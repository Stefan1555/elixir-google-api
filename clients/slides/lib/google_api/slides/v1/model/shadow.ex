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

defmodule GoogleApi.Slides.V1.Model.Shadow do
  @moduledoc """
  The shadow properties of a page element.  If these fields are unset, they may be inherited from a parent placeholder if it exists. If there is no parent, the fields will default to the value used for new page elements created in the Slides editor, which may depend on the page element kind.

  ## Attributes

  - alignment (String.t): The alignment point of the shadow, that sets the origin for translate, scale and skew of the shadow. This property is read-only. Defaults to: `null`.
    - Enum - one of [RECTANGLE_POSITION_UNSPECIFIED, TOP_LEFT, TOP_CENTER, TOP_RIGHT, LEFT_CENTER, CENTER, RIGHT_CENTER, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT]
  - alpha (float()): The alpha of the shadow&#39;s color, from 0.0 to 1.0. Defaults to: `null`.
  - blurRadius (Dimension): The radius of the shadow blur. The larger the radius, the more diffuse the shadow becomes. Defaults to: `null`.
  - color (OpaqueColor): The shadow color value. Defaults to: `null`.
  - propertyState (String.t): The shadow property state.  Updating the shadow on a page element will implicitly update this field to &#x60;RENDERED&#x60;, unless another value is specified in the same request. To have no shadow on a page element, set this field to &#x60;NOT_RENDERED&#x60;. In this case, any other shadow fields set in the same request will be ignored. Defaults to: `null`.
    - Enum - one of [RENDERED, NOT_RENDERED, INHERIT]
  - rotateWithShape (boolean()): Whether the shadow should rotate with the shape. This property is read-only. Defaults to: `null`.
  - transform (AffineTransform): Transform that encodes the translate, scale, and skew of the shadow, relative to the alignment position. Defaults to: `null`.
  - type (String.t): The type of the shadow. This property is read-only. Defaults to: `null`.
    - Enum - one of [SHADOW_TYPE_UNSPECIFIED, OUTER]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alignment => any(),
          :alpha => any(),
          :blurRadius => GoogleApi.Slides.V1.Model.Dimension.t(),
          :color => GoogleApi.Slides.V1.Model.OpaqueColor.t(),
          :propertyState => any(),
          :rotateWithShape => any(),
          :transform => GoogleApi.Slides.V1.Model.AffineTransform.t(),
          :type => any()
        }

  field(:alignment)
  field(:alpha)
  field(:blurRadius, as: GoogleApi.Slides.V1.Model.Dimension)
  field(:color, as: GoogleApi.Slides.V1.Model.OpaqueColor)
  field(:propertyState)
  field(:rotateWithShape)
  field(:transform, as: GoogleApi.Slides.V1.Model.AffineTransform)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Shadow do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Shadow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Shadow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
