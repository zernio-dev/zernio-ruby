# Zernio::DuplicateAdSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **campaign_id** | **String** | Destination platform campaign id (defaults to the source&#39;s campaign) | [optional] |
| **deep_copy** | **Boolean** | Copy child ads + creatives | [optional][default to true] |
| **status_option** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **start_time** | **Time** | Reschedule the copy&#39;s start time | [optional] |
| **end_time** | **Time** |  | [optional] |
| **rename_strategy** | **String** |  | [optional] |
| **rename_prefix** | **String** |  | [optional] |
| **rename_suffix** | **String** |  | [optional] |
| **sync_after** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateAdSetRequest.new(
  platform: null,
  campaign_id: null,
  deep_copy: null,
  status_option: null,
  start_time: null,
  end_time: null,
  rename_strategy: null,
  rename_prefix: null,
  rename_suffix: null,
  sync_after: null
)
```

