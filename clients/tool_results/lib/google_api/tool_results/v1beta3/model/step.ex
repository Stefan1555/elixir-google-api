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

defmodule GoogleApi.ToolResults.V1beta3.Model.Step do
  @moduledoc """
  A Step represents a single operation performed as part of Execution. A step can be used to represent the execution of a tool ( for example a test runner execution or an execution of a compiler).  Steps can overlap (for instance two steps might have the same start time if some operations are done in parallel).  Here is an example, let&#39;s consider that we have a continuous build is executing a test runner for each iteration. The workflow would look like: - user creates a Execution with id 1 - user creates an TestExecutionStep with id 100 for Execution 1 - user update TestExecutionStep with id 100 to add a raw xml log + the service parses the xml logs and returns a TestExecutionStep with updated TestResult(s). - user update the status of TestExecutionStep with id 100 to COMPLETE  A Step can be updated until its state is set to COMPLETE at which points it becomes immutable.

  ## Attributes

  - completionTime (Timestamp): The time when the step status was set to complete.  This value will be set automatically when state transitions to COMPLETE.  - In response: set if the execution state is COMPLETE. - In create/update request: never set Defaults to: `null`.
  - creationTime (Timestamp): The time when the step was created.  - In response: always set - In create/update request: never set Defaults to: `null`.
  - description (String.t): A description of this tool For example: mvn clean package -D skipTests&#x3D;true  - In response: present if set by create/update request - In create/update request: optional Defaults to: `null`.
  - deviceUsageDuration (Duration): How much the device resource is used to perform the test.  This is the device usage used for billing purpose, which is different from the run_duration, for example, infrastructure failure won&#39;t be charged for device usage.  PRECONDITION_FAILED will be returned if one attempts to set a device_usage on a step which already has this field set.  - In response: present if previously set. - In create request: optional - In update request: optional Defaults to: `null`.
  - dimensionValue ([StepDimensionValueEntry]): If the execution containing this step has any dimension_definition set, then this field allows the child to specify the values of the dimensions.  The keys must exactly match the dimension_definition of the execution.  For example, if the execution has &#x60;dimension_definition &#x3D; [&#39;attempt&#39;, &#39;device&#39;]&#x60; then a step must define values for those dimensions, eg. &#x60;dimension_value &#x3D; [&#39;attempt&#39;: &#39;1&#39;, &#39;device&#39;: &#39;Nexus 6&#39;]&#x60;  If a step does not participate in one dimension of the matrix, the value for that dimension should be empty string. For example, if one of the tests is executed by a runner which does not support retries, the step could have &#x60;dimension_value &#x3D; [&#39;attempt&#39;: &#39;&#39;, &#39;device&#39;: &#39;Nexus 6&#39;]&#x60;  If the step does not participate in any dimensions of the matrix, it may leave dimension_value unset.  A PRECONDITION_FAILED will be returned if any of the keys do not exist in the dimension_definition of the execution.  A PRECONDITION_FAILED will be returned if another step in this execution already has the same name and dimension_value, but differs on other data fields, for example, step field is different.  A PRECONDITION_FAILED will be returned if dimension_value is set, and there is a dimension_definition in the execution which is not specified as one of the keys.  - In response: present if set by create - In create request: optional - In update request: never set Defaults to: `null`.
  - hasImages (boolean()): Whether any of the outputs of this step are images whose thumbnails can be fetched with ListThumbnails.  - In response: always set - In create/update request: never set Defaults to: `null`.
  - labels ([StepLabelsEntry]): Arbitrary user-supplied key/value pairs that are associated with the step.  Users are responsible for managing the key namespace such that keys don&#39;t accidentally collide.  An INVALID_ARGUMENT will be returned if the number of labels exceeds 100 or if the length of any of the keys or values exceeds 100 characters.  - In response: always set - In create request: optional - In update request: optional; any new key/value pair will be added to the map, and any new value for an existing key will update that key&#39;s value Defaults to: `null`.
  - name (String.t): A short human-readable name to display in the UI. Maximum of 100 characters. For example: Clean build  A PRECONDITION_FAILED will be returned upon creating a new step if it shares its name and dimension_value with an existing step. If two steps represent a similar action, but have different dimension values, they should share the same name. For instance, if the same set of tests is run on two different platforms, the two steps should have the same name.  - In response: always set - In create request: always set - In update request: never set Defaults to: `null`.
  - outcome (Outcome): Classification of the result, for example into SUCCESS or FAILURE  - In response: present if set by create/update request - In create/update request: optional Defaults to: `null`.
  - runDuration (Duration): How long it took for this step to run.  If unset, this is set to the difference between creation_time and completion_time when the step is set to the COMPLETE state. In some cases, it is appropriate to set this value separately: For instance, if a step is created, but the operation it represents is queued for a few minutes before it executes, it would be appropriate not to include the time spent queued in its run_duration.  PRECONDITION_FAILED will be returned if one attempts to set a run_duration on a step which already has this field set.  - In response: present if previously set; always present on COMPLETE step - In create request: optional - In update request: optional Defaults to: `null`.
  - state (String.t): The initial state is IN_PROGRESS. The only legal state transitions are * IN_PROGRESS -&gt; COMPLETE  A PRECONDITION_FAILED will be returned if an invalid transition is requested.  It is valid to create Step with a state set to COMPLETE. The state can only be set to COMPLETE once. A PRECONDITION_FAILED will be returned if the state is set to COMPLETE multiple times.  - In response: always set - In create/update request: optional Defaults to: `null`.
    - Enum - one of [complete, inProgress, pending, unknownState]
  - stepId (String.t): A unique identifier within a Execution for this Step.  Returns INVALID_ARGUMENT if this field is set or overwritten by the caller.  - In response: always set - In create/update request: never set Defaults to: `null`.
  - testExecutionStep (TestExecutionStep): An execution of a test runner. Defaults to: `null`.
  - toolExecutionStep (ToolExecutionStep): An execution of a tool (used for steps we don&#39;t explicitly support). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completionTime => GoogleApi.ToolResults.V1beta3.Model.Timestamp.t(),
          :creationTime => GoogleApi.ToolResults.V1beta3.Model.Timestamp.t(),
          :description => any(),
          :deviceUsageDuration => GoogleApi.ToolResults.V1beta3.Model.Duration.t(),
          :dimensionValue =>
            list(GoogleApi.ToolResults.V1beta3.Model.StepDimensionValueEntry.t()),
          :hasImages => any(),
          :labels => list(GoogleApi.ToolResults.V1beta3.Model.StepLabelsEntry.t()),
          :name => any(),
          :outcome => GoogleApi.ToolResults.V1beta3.Model.Outcome.t(),
          :runDuration => GoogleApi.ToolResults.V1beta3.Model.Duration.t(),
          :state => any(),
          :stepId => any(),
          :testExecutionStep => GoogleApi.ToolResults.V1beta3.Model.TestExecutionStep.t(),
          :toolExecutionStep => GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep.t()
        }

  field(:completionTime, as: GoogleApi.ToolResults.V1beta3.Model.Timestamp)
  field(:creationTime, as: GoogleApi.ToolResults.V1beta3.Model.Timestamp)
  field(:description)
  field(:deviceUsageDuration, as: GoogleApi.ToolResults.V1beta3.Model.Duration)

  field(
    :dimensionValue,
    as: GoogleApi.ToolResults.V1beta3.Model.StepDimensionValueEntry,
    type: :list
  )

  field(:hasImages)
  field(:labels, as: GoogleApi.ToolResults.V1beta3.Model.StepLabelsEntry, type: :list)
  field(:name)
  field(:outcome, as: GoogleApi.ToolResults.V1beta3.Model.Outcome)
  field(:runDuration, as: GoogleApi.ToolResults.V1beta3.Model.Duration)
  field(:state)
  field(:stepId)
  field(:testExecutionStep, as: GoogleApi.ToolResults.V1beta3.Model.TestExecutionStep)
  field(:toolExecutionStep, as: GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.Step do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.Step.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.Step do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
