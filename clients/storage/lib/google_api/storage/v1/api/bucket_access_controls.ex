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

defmodule GoogleApi.Storage.V1.Api.BucketAccessControls do
  @moduledoc """
  API calls for all endpoints tagged `BucketAccessControls`.
  """

  alias GoogleApi.Storage.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Permanently deletes the ACL entry for the specified entity on the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): Name of a bucket.
  - entity (String.t): The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec storage_bucket_access_controls_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def storage_bucket_access_controls_delete(
        connection,
        bucket,
        entity,
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
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/storage/v1/b/{bucket}/acl/{entity}", %{
        "bucket" => URI.encode_www_form(bucket),
        "entity" => URI.encode_www_form(entity)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns the ACL entry for the specified entity on the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): Name of a bucket.
  - entity (String.t): The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.BucketAccessControl{}} on success
  {:error, info} on failure
  """
  @spec storage_bucket_access_controls_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.BucketAccessControl.t()} | {:error, Tesla.Env.t()}
  def storage_bucket_access_controls_get(
        connection,
        bucket,
        entity,
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
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}/acl/{entity}", %{
        "bucket" => URI.encode_www_form(bucket),
        "entity" => URI.encode_www_form(entity)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.BucketAccessControl{}])
  end

  @doc """
  Creates a new ACL entry on the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): Name of a bucket.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.
    - :body (BucketAccessControl): 

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.BucketAccessControl{}} on success
  {:error, info} on failure
  """
  @spec storage_bucket_access_controls_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.BucketAccessControl.t()} | {:error, Tesla.Env.t()}
  def storage_bucket_access_controls_insert(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/storage/v1/b/{bucket}/acl", %{
        "bucket" => URI.encode_www_form(bucket)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.BucketAccessControl{}])
  end

  @doc """
  Retrieves ACL entries on the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): Name of a bucket.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.BucketAccessControls{}} on success
  {:error, info} on failure
  """
  @spec storage_bucket_access_controls_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Storage.V1.Model.BucketAccessControls.t()} | {:error, Tesla.Env.t()}
  def storage_bucket_access_controls_list(connection, bucket, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :userProject => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/storage/v1/b/{bucket}/acl", %{
        "bucket" => URI.encode_www_form(bucket)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.BucketAccessControls{}])
  end

  @doc """
  Patches an ACL entry on the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): Name of a bucket.
  - entity (String.t): The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.
    - :body (BucketAccessControl): 

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.BucketAccessControl{}} on success
  {:error, info} on failure
  """
  @spec storage_bucket_access_controls_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Storage.V1.Model.BucketAccessControl.t()} | {:error, Tesla.Env.t()}
  def storage_bucket_access_controls_patch(
        connection,
        bucket,
        entity,
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
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/storage/v1/b/{bucket}/acl/{entity}", %{
        "bucket" => URI.encode_www_form(bucket),
        "entity" => URI.encode_www_form(entity)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.BucketAccessControl{}])
  end

  @doc """
  Updates an ACL entry on the specified bucket.

  ## Parameters

  - connection (GoogleApi.Storage.V1.Connection): Connection to server
  - bucket (String.t): Name of a bucket.
  - entity (String.t): The entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :userProject (String.t): The project to be billed for this request. Required for Requester Pays buckets.
    - :body (BucketAccessControl): 

  ## Returns

  {:ok, %GoogleApi.Storage.V1.Model.BucketAccessControl{}} on success
  {:error, info} on failure
  """
  @spec storage_bucket_access_controls_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.Storage.V1.Model.BucketAccessControl.t()} | {:error, Tesla.Env.t()}
  def storage_bucket_access_controls_update(
        connection,
        bucket,
        entity,
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
      :userProject => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/storage/v1/b/{bucket}/acl/{entity}", %{
        "bucket" => URI.encode_www_form(bucket),
        "entity" => URI.encode_www_form(entity)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Storage.V1.Model.BucketAccessControl{}])
  end
end
