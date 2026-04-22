# Zernio::CreateSequenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **steps** | [**Array&lt;CreateSequenceRequestStepsInner&gt;**](CreateSequenceRequestStepsInner.md) |  | [optional] |
| **exit_on_reply** | **Boolean** |  | [optional][default to true] |
| **exit_on_unsubscribe** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateSequenceRequest.new(
  profile_id: null,
  account_id: null,
  platform: null,
  name: null,
  description: null,
  steps: null,
  exit_on_reply: null,
  exit_on_unsubscribe: null
)
```

