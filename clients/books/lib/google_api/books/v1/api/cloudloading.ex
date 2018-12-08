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

defmodule GoogleApi.Books.V1.Api.Cloudloading do
  @moduledoc """
  API calls for all endpoints tagged `Cloudloading`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """


  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :drive_document_id (String.t): A drive document id. The upload_client_token must not be set.
    - :mime_type (String.t): The document MIME type. It can be set only if the drive_document_id is set.
    - :name (String.t): The document name. It can be set only if the drive_document_id is set.
    - :upload_client_token (String.t): 

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.BooksCloudloadingResource{}} on success
  {:error, info} on failure
  """
  @spec books_cloudloading_add_book(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.BooksCloudloadingResource.t()} | {:error, Tesla.Env.t()}
  def books_cloudloading_add_book(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :drive_document_id => :query,
      :mime_type => :query,
      :name => :query,
      :upload_client_token => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/cloudloading/addBook")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.BooksCloudloadingResource{}])
  end

  @doc """
  Remove the book and its contents

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - volume_id (String.t): The id of the book to be removed.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec books_cloudloading_delete_book(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def books_cloudloading_delete_book(connection, volume_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/cloudloading/deleteBook")
      |> Request.add_param(:query, :volumeId, volume_id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """


  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (BooksCloudloadingResource): 

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.BooksCloudloadingResource{}} on success
  {:error, info} on failure
  """
  @spec books_cloudloading_update_book(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.BooksCloudloadingResource.t()} | {:error, Tesla.Env.t()}
  def books_cloudloading_update_book(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/cloudloading/updateBook")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.BooksCloudloadingResource{}])
  end
end
