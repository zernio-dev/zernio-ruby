# Zernio::WorkflowsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_workflow**](WorkflowsApi.md#activate_workflow) | **POST** /v1/workflows/{workflowId}/activate | Activate workflow |
| [**create_workflow**](WorkflowsApi.md#create_workflow) | **POST** /v1/workflows | Create workflow |
| [**delete_workflow**](WorkflowsApi.md#delete_workflow) | **DELETE** /v1/workflows/{workflowId} | Delete workflow |
| [**duplicate_workflow**](WorkflowsApi.md#duplicate_workflow) | **POST** /v1/workflows/{workflowId}/duplicate | Duplicate a workflow |
| [**get_workflow**](WorkflowsApi.md#get_workflow) | **GET** /v1/workflows/{workflowId} | Get workflow with graph |
| [**get_workflow_version**](WorkflowsApi.md#get_workflow_version) | **GET** /v1/workflows/{workflowId}/versions/{version} | Get a specific workflow version |
| [**list_workflow_execution_events**](WorkflowsApi.md#list_workflow_execution_events) | **GET** /v1/workflows/{workflowId}/executions/{executionId}/events | Get an execution&#39;s timeline |
| [**list_workflow_executions**](WorkflowsApi.md#list_workflow_executions) | **GET** /v1/workflows/{workflowId}/executions | List workflow runs |
| [**list_workflow_versions**](WorkflowsApi.md#list_workflow_versions) | **GET** /v1/workflows/{workflowId}/versions | List a workflow&#39;s version history |
| [**list_workflows**](WorkflowsApi.md#list_workflows) | **GET** /v1/workflows | List workflows |
| [**pause_workflow**](WorkflowsApi.md#pause_workflow) | **POST** /v1/workflows/{workflowId}/pause | Pause workflow |
| [**restore_workflow_version**](WorkflowsApi.md#restore_workflow_version) | **POST** /v1/workflows/{workflowId}/versions/{version}/restore | Restore a previous workflow version |
| [**trigger_workflow**](WorkflowsApi.md#trigger_workflow) | **POST** /v1/workflows/{workflowId}/executions | Manually start a workflow run |
| [**update_workflow**](WorkflowsApi.md#update_workflow) | **PATCH** /v1/workflows/{workflowId} | Update workflow |


## activate_workflow

> <ActivateWorkflow200Response> activate_workflow(workflow_id)

Activate workflow

Validate the graph is runnable and set the workflow live. Once active, matching inbound messages start executions. Idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 

begin
  # Activate workflow
  result = api_instance.activate_workflow(workflow_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->activate_workflow: #{e}"
end
```

#### Using the activate_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivateWorkflow200Response>, Integer, Hash)> activate_workflow_with_http_info(workflow_id)

```ruby
begin
  # Activate workflow
  data, status_code, headers = api_instance.activate_workflow_with_http_info(workflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivateWorkflow200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->activate_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |

### Return type

[**ActivateWorkflow200Response**](ActivateWorkflow200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_workflow

> <CreateWorkflow200Response> create_workflow(create_workflow_request)

Create workflow

Create a branching conversation workflow (draft) from a node/edge graph. Created in `draft` status; activate it to start matching inbound messages. The graph is validated structurally; completeness (a trigger node + reachable entry) is required at activation. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
create_workflow_request = Zernio::CreateWorkflowRequest.new({profile_id: 'profile_id_example', account_id: 'account_id_example', name: 'name_example'}) # CreateWorkflowRequest | 

begin
  # Create workflow
  result = api_instance.create_workflow(create_workflow_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow: #{e}"
end
```

#### Using the create_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkflow200Response>, Integer, Hash)> create_workflow_with_http_info(create_workflow_request)

```ruby
begin
  # Create workflow
  data, status_code, headers = api_instance.create_workflow_with_http_info(create_workflow_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkflow200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->create_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workflow_request** | [**CreateWorkflowRequest**](CreateWorkflowRequest.md) |  |  |

### Return type

[**CreateWorkflow200Response**](CreateWorkflow200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_workflow

> delete_workflow(workflow_id)

Delete workflow

Permanently delete a workflow and all of its executions.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 

begin
  # Delete workflow
  api_instance.delete_workflow(workflow_id)
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow: #{e}"
end
```

#### Using the delete_workflow_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workflow_with_http_info(workflow_id)

```ruby
begin
  # Delete workflow
  data, status_code, headers = api_instance.delete_workflow_with_http_info(workflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->delete_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## duplicate_workflow

> <DuplicateWorkflow201Response> duplicate_workflow(workflow_id)

Duplicate a workflow

Create an independent copy of a workflow's graph, name, description, and account binding. The copy is created in `draft` status with fresh execution counters and a new id — execution history is NOT copied. Useful for branching off a known-good workflow before making experimental edits. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 

begin
  # Duplicate a workflow
  result = api_instance.duplicate_workflow(workflow_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->duplicate_workflow: #{e}"
end
```

#### Using the duplicate_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateWorkflow201Response>, Integer, Hash)> duplicate_workflow_with_http_info(workflow_id)

```ruby
begin
  # Duplicate a workflow
  data, status_code, headers = api_instance.duplicate_workflow_with_http_info(workflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateWorkflow201Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->duplicate_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |

### Return type

[**DuplicateWorkflow201Response**](DuplicateWorkflow201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow

> <GetWorkflow200Response> get_workflow(workflow_id)

Get workflow with graph

Returns a workflow including its full node/edge graph and run stats.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 

begin
  # Get workflow with graph
  result = api_instance.get_workflow(workflow_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow: #{e}"
end
```

#### Using the get_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkflow200Response>, Integer, Hash)> get_workflow_with_http_info(workflow_id)

```ruby
begin
  # Get workflow with graph
  data, status_code, headers = api_instance.get_workflow_with_http_info(workflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkflow200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |

### Return type

[**GetWorkflow200Response**](GetWorkflow200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workflow_version

> <GetWorkflowVersion200Response> get_workflow_version(workflow_id, version)

Get a specific workflow version

Returns the full snapshot for a single historical version, including the graph.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 
version = 56 # Integer | 

begin
  # Get a specific workflow version
  result = api_instance.get_workflow_version(workflow_id, version)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_version: #{e}"
end
```

#### Using the get_workflow_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkflowVersion200Response>, Integer, Hash)> get_workflow_version_with_http_info(workflow_id, version)

```ruby
begin
  # Get a specific workflow version
  data, status_code, headers = api_instance.get_workflow_version_with_http_info(workflow_id, version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkflowVersion200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->get_workflow_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |
| **version** | **Integer** |  |  |

### Return type

[**GetWorkflowVersion200Response**](GetWorkflowVersion200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_execution_events

> <ListWorkflowExecutionEvents200Response> list_workflow_execution_events(workflow_id, execution_id)

Get an execution's timeline

Returns the per-step run-log for a single workflow execution: trigger fired, each node visited, edge handles taken, errors, and durations. Backed by Tinybird (90-day retention). Used by the Runs UI drawer to render the timeline. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 
execution_id = 'execution_id_example' # String | 

begin
  # Get an execution's timeline
  result = api_instance.list_workflow_execution_events(workflow_id, execution_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_execution_events: #{e}"
end
```

#### Using the list_workflow_execution_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowExecutionEvents200Response>, Integer, Hash)> list_workflow_execution_events_with_http_info(workflow_id, execution_id)

```ruby
begin
  # Get an execution's timeline
  data, status_code, headers = api_instance.list_workflow_execution_events_with_http_info(workflow_id, execution_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowExecutionEvents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_execution_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |
| **execution_id** | **String** |  |  |

### Return type

[**ListWorkflowExecutionEvents200Response**](ListWorkflowExecutionEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_executions

> <ListWorkflowExecutions200Response> list_workflow_executions(workflow_id, opts)

List workflow runs

Returns recent executions (runs) with their status, current node, and accumulated variables.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 
opts = {
  status: 'running', # String | 
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List workflow runs
  result = api_instance.list_workflow_executions(workflow_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_executions: #{e}"
end
```

#### Using the list_workflow_executions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowExecutions200Response>, Integer, Hash)> list_workflow_executions_with_http_info(workflow_id, opts)

```ruby
begin
  # List workflow runs
  data, status_code, headers = api_instance.list_workflow_executions_with_http_info(workflow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowExecutions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_executions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |
| **status** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListWorkflowExecutions200Response**](ListWorkflowExecutions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflow_versions

> <ListWorkflowVersions200Response> list_workflow_versions(workflow_id)

List a workflow's version history

Returns the snapshot history. A new version is recorded automatically before every PATCH to `nodes` / `edges` / `entryNodeId`, and explicitly when a previous version is restored. Lightweight list — call `getWorkflowVersion` for the full snapshot graph. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 

begin
  # List a workflow's version history
  result = api_instance.list_workflow_versions(workflow_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_versions: #{e}"
end
```

#### Using the list_workflow_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflowVersions200Response>, Integer, Hash)> list_workflow_versions_with_http_info(workflow_id)

```ruby
begin
  # List a workflow's version history
  data, status_code, headers = api_instance.list_workflow_versions_with_http_info(workflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflowVersions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflow_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |

### Return type

[**ListWorkflowVersions200Response**](ListWorkflowVersions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workflows

> <ListWorkflows200Response> list_workflows(opts)

List workflows

Returns workflows with run stats. Filter by status or profile.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
opts = {
  profile_id: 'profile_id_example', # String | Filter by profile. Omit to list across all profiles
  status: 'draft', # String | 
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List workflows
  result = api_instance.list_workflows(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflows: #{e}"
end
```

#### Using the list_workflows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkflows200Response>, Integer, Hash)> list_workflows_with_http_info(opts)

```ruby
begin
  # List workflows
  data, status_code, headers = api_instance.list_workflows_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkflows200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->list_workflows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Filter by profile. Omit to list across all profiles | [optional] |
| **status** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListWorkflows200Response**](ListWorkflows200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pause_workflow

> <PauseWorkflow200Response> pause_workflow(workflow_id)

Pause workflow

Stop matching new inbound messages. In-flight executions continue to completion. Idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 

begin
  # Pause workflow
  result = api_instance.pause_workflow(workflow_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->pause_workflow: #{e}"
end
```

#### Using the pause_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PauseWorkflow200Response>, Integer, Hash)> pause_workflow_with_http_info(workflow_id)

```ruby
begin
  # Pause workflow
  data, status_code, headers = api_instance.pause_workflow_with_http_info(workflow_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PauseWorkflow200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->pause_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |

### Return type

[**PauseWorkflow200Response**](PauseWorkflow200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_workflow_version

> <RestoreWorkflowVersion200Response> restore_workflow_version(workflow_id, version)

Restore a previous workflow version

Replace the current graph with the named version's snapshot. Before the swap, the current graph is itself snapshotted as a new version, so a restore is reversible. The workflow must be in `draft` or `paused` status (same gate as a normal graph edit). The returned workflow carries `restoredFromVersion` so the UI can surface which version was rolled back to. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 
version = 56 # Integer | 

begin
  # Restore a previous workflow version
  result = api_instance.restore_workflow_version(workflow_id, version)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->restore_workflow_version: #{e}"
end
```

#### Using the restore_workflow_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestoreWorkflowVersion200Response>, Integer, Hash)> restore_workflow_version_with_http_info(workflow_id, version)

```ruby
begin
  # Restore a previous workflow version
  data, status_code, headers = api_instance.restore_workflow_version_with_http_info(workflow_id, version)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestoreWorkflowVersion200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->restore_workflow_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |
| **version** | **Integer** |  |  |

### Return type

[**RestoreWorkflowVersion200Response**](RestoreWorkflowVersion200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_workflow

> <TriggerWorkflow200Response> trigger_workflow(workflow_id, trigger_workflow_request)

Manually start a workflow run

Kick off a run without waiting for an inbound message (useful for testing). Target an existing conversation by `conversationId`, or — WhatsApp only — a phone number via `to` (a conversation is found or created). `text` seeds the run's `lastMessage` variable. The graph must be runnable. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 
trigger_workflow_request = Zernio::TriggerWorkflowRequest.new # TriggerWorkflowRequest | 

begin
  # Manually start a workflow run
  result = api_instance.trigger_workflow(workflow_id, trigger_workflow_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->trigger_workflow: #{e}"
end
```

#### Using the trigger_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TriggerWorkflow200Response>, Integer, Hash)> trigger_workflow_with_http_info(workflow_id, trigger_workflow_request)

```ruby
begin
  # Manually start a workflow run
  data, status_code, headers = api_instance.trigger_workflow_with_http_info(workflow_id, trigger_workflow_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TriggerWorkflow200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->trigger_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |
| **trigger_workflow_request** | [**TriggerWorkflowRequest**](TriggerWorkflowRequest.md) |  |  |

### Return type

[**TriggerWorkflow200Response**](TriggerWorkflow200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_workflow

> <UpdateWorkflow200Response> update_workflow(workflow_id, opts)

Update workflow

Update name, description, the graph, or reassign to a different account. The graph can only be modified while the workflow is draft or paused. Account swaps re-validate the graph against the new platform (so e.g. moving from WhatsApp to Facebook surfaces a `start_call` node as an error instead of silently saving an unrunnable graph). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkflowsApi.new
workflow_id = 'workflow_id_example' # String | 
opts = {
  update_workflow_request: Zernio::UpdateWorkflowRequest.new # UpdateWorkflowRequest | 
}

begin
  # Update workflow
  result = api_instance.update_workflow(workflow_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow: #{e}"
end
```

#### Using the update_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWorkflow200Response>, Integer, Hash)> update_workflow_with_http_info(workflow_id, opts)

```ruby
begin
  # Update workflow
  data, status_code, headers = api_instance.update_workflow_with_http_info(workflow_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWorkflow200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkflowsApi->update_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflow_id** | **String** |  |  |
| **update_workflow_request** | [**UpdateWorkflowRequest**](UpdateWorkflowRequest.md) |  | [optional] |

### Return type

[**UpdateWorkflow200Response**](UpdateWorkflow200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

