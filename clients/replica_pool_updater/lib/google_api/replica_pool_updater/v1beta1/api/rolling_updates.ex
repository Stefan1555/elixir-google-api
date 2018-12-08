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

defmodule GoogleApi.ReplicaPoolUpdater.V1beta1.Api.RollingUpdates do
  @moduledoc """
  API calls for all endpoints tagged `RollingUpdates`.
  """

  alias GoogleApi.ReplicaPoolUpdater.V1beta1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Cancels an update. The update must be PAUSED before it can be cancelled. This has no effect if the update is already CANCELLED.

  ## Parameters

  - connection (GoogleApi.ReplicaPoolUpdater.V1beta1.Connection): Connection to server
  - project (String.t): The Google Developers Console project name.
  - zone (String.t): The name of the zone in which the update&#39;s target resides.
  - rolling_update (String.t): The name of the update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec replicapoolupdater_rolling_updates_cancel(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def replicapoolupdater_rolling_updates_cancel(
        connection,
        project,
        zone,
        rolling_update,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/cancel", %{
        "project" => URI.encode_www_form(project),
        "zone" => URI.encode_www_form(zone),
        "rollingUpdate" => URI.encode_www_form(rolling_update)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}])
  end

  @doc """
  Returns information about an update.

  ## Parameters

  - connection (GoogleApi.ReplicaPoolUpdater.V1beta1.Connection): Connection to server
  - project (String.t): The Google Developers Console project name.
  - zone (String.t): The name of the zone in which the update&#39;s target resides.
  - rolling_update (String.t): The name of the update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdate{}} on success
  {:error, info} on failure
  """
  @spec replicapoolupdater_rolling_updates_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdate.t()}
          | {:error, Tesla.Env.t()}
  def replicapoolupdater_rolling_updates_get(
        connection,
        project,
        zone,
        rolling_update,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/zones/{zone}/rollingUpdates/{rollingUpdate}", %{
        "project" => URI.encode_www_form(project),
        "zone" => URI.encode_www_form(zone),
        "rollingUpdate" => URI.encode_www_form(rolling_update)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdate{}]
    )
  end

  @doc """
  Inserts and starts a new update.

  ## Parameters

  - connection (GoogleApi.ReplicaPoolUpdater.V1beta1.Connection): Connection to server
  - project (String.t): The Google Developers Console project name.
  - zone (String.t): The name of the zone in which the update&#39;s target resides.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (RollingUpdate): 

  ## Returns

  {:ok, %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec replicapoolupdater_rolling_updates_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def replicapoolupdater_rolling_updates_insert(
        connection,
        project,
        zone,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/zones/{zone}/rollingUpdates", %{
        "project" => URI.encode_www_form(project),
        "zone" => URI.encode_www_form(zone)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}])
  end

  @doc """
  Lists recent updates for a given managed instance group, in reverse chronological order and paginated format.

  ## Parameters

  - connection (GoogleApi.ReplicaPoolUpdater.V1beta1.Connection): Connection to server
  - project (String.t): The Google Developers Console project name.
  - zone (String.t): The name of the zone in which the update&#39;s target resides.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :filter (String.t): Optional. Filter expression for filtering listed resources.
    - :maxResults (integer()): Optional. Maximum count of results to be returned. Maximum value is 500 and default value is 500.
    - :pageToken (String.t): Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.

  ## Returns

  {:ok, %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdateList{}} on success
  {:error, info} on failure
  """
  @spec replicapoolupdater_rolling_updates_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdateList.t()}
          | {:error, Tesla.Env.t()}
  def replicapoolupdater_rolling_updates_list(
        connection,
        project,
        zone,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :filter => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/zones/{zone}/rollingUpdates", %{
        "project" => URI.encode_www_form(project),
        "zone" => URI.encode_www_form(zone)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.RollingUpdateList{}]
    )
  end

  @doc """
  Lists the current status for each instance within a given update.

  ## Parameters

  - connection (GoogleApi.ReplicaPoolUpdater.V1beta1.Connection): Connection to server
  - project (String.t): The Google Developers Console project name.
  - zone (String.t): The name of the zone in which the update&#39;s target resides.
  - rolling_update (String.t): The name of the update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :filter (String.t): Optional. Filter expression for filtering listed resources.
    - :maxResults (integer()): Optional. Maximum count of results to be returned. Maximum value is 500 and default value is 500.
    - :pageToken (String.t): Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.

  ## Returns

  {:ok, %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdateList{}} on success
  {:error, info} on failure
  """
  @spec replicapoolupdater_rolling_updates_list_instance_updates(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdateList.t()}
          | {:error, Tesla.Env.t()}
  def replicapoolupdater_rolling_updates_list_instance_updates(
        connection,
        project,
        zone,
        rolling_update,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :filter => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/instanceUpdates", %{
        "project" => URI.encode_www_form(project),
        "zone" => URI.encode_www_form(zone),
        "rollingUpdate" => URI.encode_www_form(rolling_update)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdateList{}]
    )
  end

  @doc """
  Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no effect if invoked when the state of the update is PAUSED.

  ## Parameters

  - connection (GoogleApi.ReplicaPoolUpdater.V1beta1.Connection): Connection to server
  - project (String.t): The Google Developers Console project name.
  - zone (String.t): The name of the zone in which the update&#39;s target resides.
  - rolling_update (String.t): The name of the update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec replicapoolupdater_rolling_updates_pause(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def replicapoolupdater_rolling_updates_pause(
        connection,
        project,
        zone,
        rolling_update,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/pause", %{
        "project" => URI.encode_www_form(project),
        "zone" => URI.encode_www_form(zone),
        "rollingUpdate" => URI.encode_www_form(rolling_update)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}])
  end

  @doc """
  Continues an update in PAUSED state. Has no effect if invoked when the state of the update is ROLLED_OUT.

  ## Parameters

  - connection (GoogleApi.ReplicaPoolUpdater.V1beta1.Connection): Connection to server
  - project (String.t): The Google Developers Console project name.
  - zone (String.t): The name of the zone in which the update&#39;s target resides.
  - rolling_update (String.t): The name of the update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec replicapoolupdater_rolling_updates_resume(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def replicapoolupdater_rolling_updates_resume(
        connection,
        project,
        zone,
        rolling_update,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/resume", %{
        "project" => URI.encode_www_form(project),
        "zone" => URI.encode_www_form(zone),
        "rollingUpdate" => URI.encode_www_form(rolling_update)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}])
  end

  @doc """
  Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no effect if invoked when the state of the update is ROLLED_BACK.

  ## Parameters

  - connection (GoogleApi.ReplicaPoolUpdater.V1beta1.Connection): Connection to server
  - project (String.t): The Google Developers Console project name.
  - zone (String.t): The name of the zone in which the update&#39;s target resides.
  - rolling_update (String.t): The name of the update.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec replicapoolupdater_rolling_updates_rollback(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation.t()}
          | {:error, Tesla.Env.t()}
  def replicapoolupdater_rolling_updates_rollback(
        connection,
        project,
        zone,
        rolling_update,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/zones/{zone}/rollingUpdates/{rollingUpdate}/rollback", %{
        "project" => URI.encode_www_form(project),
        "zone" => URI.encode_www_form(zone),
        "rollingUpdate" => URI.encode_www_form(rolling_update)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ReplicaPoolUpdater.V1beta1.Model.Operation{}])
  end
end
