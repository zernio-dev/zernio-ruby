# Zernio::DuplicateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **deep_copy** | **Boolean** | Copy child ad sets + ads + creatives + targeting | [optional][default to true] |
| **status_option** | **String** | ACTIVE &#x3D; launch the clone immediately (spends the moment LinkedIn approves it). PAUSED &#x3D; clone stays DRAFT, safe default. INHERITED_FROM_SOURCE &#x3D; mirror each entity&#39;s source status per-entity. Duplicating an ACTIVE campaign this way starts a second front of spend.  | [optional][default to &#39;PAUSED&#39;] |
| **start_time** | **Time** | Reschedule the copied hierarchy&#39;s start time | [optional] |
| **end_time** | **Time** |  | [optional] |
| **rename_strategy** | **String** |  | [optional] |
| **rename_prefix** | **String** |  | [optional] |
| **rename_suffix** | **String** |  | [optional] |
| **sync_after** | **Boolean** | Trigger ads discovery on the owning account after the copy succeeds | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateAdCampaignRequest.new(
  platform: null,
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

