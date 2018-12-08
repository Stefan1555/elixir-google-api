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

defmodule GoogleApi.CloudIot.V1.Model.Device do
  @moduledoc """
  The device resource.

  ## Attributes

  - blocked (boolean()): If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance. Defaults to: `null`.
  - config (DeviceConfig): The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of &#x60;1&#x60;. To update this field after creation, use the &#x60;DeviceManager.ModifyCloudToDeviceConfig&#x60; method. Defaults to: `null`.
  - credentials ([DeviceCredential]): The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the &#x60;DeviceRegistry.credentials&#x60; field. Defaults to: `null`.
  - gatewayConfig (GatewayConfig): Gateway-related configuration and state. Defaults to: `null`.
  - id (String.t): The user-defined device identifier. The device ID must be unique within a device registry. Defaults to: `null`.
  - lastConfigAckTime (DateTime.t): [Output only] The last time a cloud-to-device config version acknowledgment was received from the device. This field is only for configurations sent through MQTT. Defaults to: `null`.
  - lastConfigSendTime (DateTime.t): [Output only] The last time a cloud-to-device config version was sent to the device. Defaults to: `null`.
  - lastErrorStatus (Status): [Output only] The error message of the most recent error, such as a failure to publish to Cloud Pub/Sub. &#39;last_error_time&#39; is the timestamp of this field. If no errors have occurred, this field has an empty message and the status code 0 &#x3D;&#x3D; OK. Otherwise, this field is expected to have a status code other than OK. Defaults to: `null`.
  - lastErrorTime (DateTime.t): [Output only] The time the most recent error occurred, such as a failure to publish to Cloud Pub/Sub. This field is the timestamp of &#39;last_error_status&#39;. Defaults to: `null`.
  - lastEventTime (DateTime.t): [Output only] The last time a telemetry event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes. Defaults to: `null`.
  - lastHeartbeatTime (DateTime.t): [Output only] The last time an MQTT &#x60;PINGREQ&#x60; was received. This field applies only to devices connecting through MQTT. MQTT clients usually only send &#x60;PINGREQ&#x60; messages if the connection is idle, and no other messages have been sent. Timestamps are periodically collected and written to storage; they may be stale by a few minutes. Defaults to: `null`.
  - lastStateTime (DateTime.t): [Output only] The last time a state event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes. Defaults to: `null`.
  - logLevel (String.t): **Beta Feature**  The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used. Defaults to: `null`.
    - Enum - one of [LOG_LEVEL_UNSPECIFIED, NONE, ERROR, INFO, DEBUG]
  - metadata (%{optional(String.t) &#x3D;&gt; String.t}): The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device.  Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length.  Values are free-form strings. Each value must be less than or equal to 32 KB in size.  The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500. Defaults to: `null`.
  - name (String.t): The resource path name. For example, &#x60;projects/p1/locations/us-central1/registries/registry0/devices/dev0&#x60; or &#x60;projects/p1/locations/us-central1/registries/registry0/devices/{num_id}&#x60;. When &#x60;name&#x60; is populated as a response from the service, it always ends in the device numeric ID. Defaults to: `null`.
  - numId (String.t): [Output only] A server-defined unique numeric ID for the device. This is a more compact way to identify devices, and it is globally unique. Defaults to: `null`.
  - state (DeviceState): [Output only] The state most recently received from the device. If no state has been reported, this field is not present. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blocked => any(),
          :config => GoogleApi.CloudIot.V1.Model.DeviceConfig.t(),
          :credentials => list(GoogleApi.CloudIot.V1.Model.DeviceCredential.t()),
          :gatewayConfig => GoogleApi.CloudIot.V1.Model.GatewayConfig.t(),
          :id => any(),
          :lastConfigAckTime => DateTime.t(),
          :lastConfigSendTime => DateTime.t(),
          :lastErrorStatus => GoogleApi.CloudIot.V1.Model.Status.t(),
          :lastErrorTime => DateTime.t(),
          :lastEventTime => DateTime.t(),
          :lastHeartbeatTime => DateTime.t(),
          :lastStateTime => DateTime.t(),
          :logLevel => any(),
          :metadata => map(),
          :name => any(),
          :numId => any(),
          :state => GoogleApi.CloudIot.V1.Model.DeviceState.t()
        }

  field(:blocked)
  field(:config, as: GoogleApi.CloudIot.V1.Model.DeviceConfig)
  field(:credentials, as: GoogleApi.CloudIot.V1.Model.DeviceCredential, type: :list)
  field(:gatewayConfig, as: GoogleApi.CloudIot.V1.Model.GatewayConfig)
  field(:id)
  field(:lastConfigAckTime, as: DateTime)
  field(:lastConfigSendTime, as: DateTime)
  field(:lastErrorStatus, as: GoogleApi.CloudIot.V1.Model.Status)
  field(:lastErrorTime, as: DateTime)
  field(:lastEventTime, as: DateTime)
  field(:lastHeartbeatTime, as: DateTime)
  field(:lastStateTime, as: DateTime)
  field(:logLevel)
  field(:metadata, type: :map)
  field(:name)
  field(:numId)
  field(:state, as: GoogleApi.CloudIot.V1.Model.DeviceState)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.Device do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.Device.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
