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

defmodule GoogleApi.PlusDomains.V1.Api.Activities do
  @moduledoc """
  API calls for all endpoints tagged `Activities`.
  """

  alias GoogleApi.PlusDomains.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Get an activity.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - activity_id (String.t): The ID of the activity to get.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Activity{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_activities_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.Activity.t()} | {:error, Tesla.Env.t()}
  def plus_domains_activities_get(connection, activity_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/plusDomains/v1/activities/{activityId}", %{
        "activityId" => URI.encode_www_form(activity_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Activity{}])
  end

  @doc """
  Create a new activity for the authenticated user.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - user_id (String.t): The ID of the user to create the activity on behalf of. Its value should be \&quot;me\&quot;, to indicate the authenticated user.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :preview (boolean()): If \&quot;true\&quot;, extract the potential media attachments for a URL. The response will include all possible attachments for a URL, including video, photos, and articles based on the content of the page.
    - :body (Activity): 

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.Activity{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_activities_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.Activity.t()} | {:error, Tesla.Env.t()}
  def plus_domains_activities_insert(connection, user_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :preview => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/plusDomains/v1/people/{userId}/activities", %{
        "userId" => URI.encode_www_form(user_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.Activity{}])
  end

  @doc """
  List all of the activities in the specified collection for a particular user.

  ## Parameters

  - connection (GoogleApi.PlusDomains.V1.Connection): Connection to server
  - user_id (String.t): The ID of the user to get activities for. The special value \&quot;me\&quot; can be used to indicate the authenticated user.
  - collection (String.t): The collection of activities to list.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): The maximum number of activities to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    - :pageToken (String.t): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \&quot;nextPageToken\&quot; from the previous response.

  ## Returns

  {:ok, %GoogleApi.PlusDomains.V1.Model.ActivityFeed{}} on success
  {:error, info} on failure
  """
  @spec plus_domains_activities_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.PlusDomains.V1.Model.ActivityFeed.t()} | {:error, Tesla.Env.t()}
  def plus_domains_activities_list(
        connection,
        user_id,
        collection,
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
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/plusDomains/v1/people/{userId}/activities/{collection}", %{
        "userId" => URI.encode_www_form(user_id),
        "collection" => URI.encode_www_form(collection)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.PlusDomains.V1.Model.ActivityFeed{}])
  end
end
