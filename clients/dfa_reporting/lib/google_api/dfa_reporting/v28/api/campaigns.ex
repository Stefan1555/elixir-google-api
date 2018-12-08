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

defmodule GoogleApi.DFAReporting.V28.Api.Campaigns do
  @moduledoc """
  API calls for all endpoints tagged `Campaigns`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets one campaign by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - id (String.t): Campaign ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Campaign{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_campaigns_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.Campaign.t()} | {:error, Tesla.Env.t()}
  def dfareporting_campaigns_get(connection, profile_id, id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/campaigns/{id}", %{
        "profileId" => URI.encode_www_form(profile_id),
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.Campaign{}])
  end

  @doc """
  Inserts a new campaign.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - default_landing_page_name (String.t): Default landing page name for this new campaign. Must be less than 256 characters long.
  - default_landing_page_url (String.t): Default landing page URL for this new campaign.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Campaign): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Campaign{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_campaigns_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.DFAReporting.V28.Model.Campaign.t()} | {:error, Tesla.Env.t()}
  def dfareporting_campaigns_insert(
        connection,
        profile_id,
        default_landing_page_name,
        default_landing_page_url,
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
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/campaigns", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_param(:query, :defaultLandingPageName, default_landing_page_name)
      |> Request.add_param(:query, :defaultLandingPageUrl, default_landing_page_url)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.Campaign{}])
  end

  @doc """
  Retrieves a list of campaigns, possibly filtered. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :advertiserGroupIds ([String.t]): Select only campaigns whose advertisers belong to these advertiser groups.
    - :advertiserIds ([String.t]): Select only campaigns that belong to these advertisers.
    - :archived (boolean()): Select only archived campaigns. Don&#39;t set this field to select both archived and non-archived campaigns.
    - :atLeastOneOptimizationActivity (boolean()): Select only campaigns that have at least one optimization activity.
    - :excludedIds ([String.t]): Exclude campaigns with these IDs.
    - :ids ([String.t]): Select only campaigns with these IDs.
    - :maxResults (integer()): Maximum number of results to return.
    - :overriddenEventTagId (String.t): Select only campaigns that have overridden this event tag ID.
    - :pageToken (String.t): Value of the nextPageToken from the previous result page.
    - :searchString (String.t): Allows searching for campaigns by name or ID. Wildcards (*) are allowed. For example, \&quot;campaign*2015\&quot; will return campaigns with names like \&quot;campaign June 2015\&quot;, \&quot;campaign April 2015\&quot;, or simply \&quot;campaign 2015\&quot;. Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \&quot;campaign\&quot; will match campaigns with name \&quot;my campaign\&quot;, \&quot;campaign 2015\&quot;, or simply \&quot;campaign\&quot;.
    - :sortField (String.t): Field by which to sort the list.
    - :sortOrder (String.t): Order of sorted results.
    - :subaccountId (String.t): Select only campaigns that belong to this subaccount.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.CampaignsListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_campaigns_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.CampaignsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def dfareporting_campaigns_list(connection, profile_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :advertiserGroupIds => :query,
      :advertiserIds => :query,
      :archived => :query,
      :atLeastOneOptimizationActivity => :query,
      :excludedIds => :query,
      :ids => :query,
      :maxResults => :query,
      :overriddenEventTagId => :query,
      :pageToken => :query,
      :searchString => :query,
      :sortField => :query,
      :sortOrder => :query,
      :subaccountId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/campaigns", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.CampaignsListResponse{}]
    )
  end

  @doc """
  Updates an existing campaign. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - id (String.t): Campaign ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Campaign): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Campaign{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_campaigns_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.Campaign.t()} | {:error, Tesla.Env.t()}
  def dfareporting_campaigns_patch(connection, profile_id, id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:patch)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/campaigns", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_param(:query, :id, id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.Campaign{}])
  end

  @doc """
  Updates an existing campaign.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Campaign): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Campaign{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_campaigns_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.Campaign.t()} | {:error, Tesla.Env.t()}
  def dfareporting_campaigns_update(connection, profile_id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:put)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/campaigns", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.Campaign{}])
  end
end
