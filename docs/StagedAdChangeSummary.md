# Zernio::StagedAdChangeSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The change id, used in /v1/ads/changes/{changeId}. |  |
| **type** | **String** | Which write was staged. &#x60;operation&#x60; is a write staged as its request, named by &#x60;request&#x60;. |  |
| **request** | [**StagedAdChangeSummaryRequest**](StagedAdChangeSummaryRequest.md) |  | [optional] |
| **status** | **String** | The status the list was asked for. |  |
| **stale** | **Boolean** | Present and true on a staged change whose object was edited on the ad network after staging. Refresh it with PATCH /v1/ads/changes/{changeId}. | [optional] |
| **error** | [**StagedAdChangeSummaryError**](StagedAdChangeSummaryError.md) |  | [optional] |
| **platform** | **String** | The ad platform of the object, as the write route names it. |  |
| **account_id** | **String** | The connected account the write goes through. |  |
| **ad_account_id** | **String** | The ad account id on the platform. |  |
| **target_id** | **String** | The object the change applies to. Null for a create, whose object does not exist yet. |  |
| **target_name** | **String** | The name of the object when the change was staged, or the name a create will give it. Null when it is not known. |  |
| **creates** | **Boolean** | True when the change creates a new object. |  |
| **created_by** | **String** | The user who staged the change. |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StagedAdChangeSummary.new(
  id: null,
  type: null,
  request: null,
  status: null,
  stale: null,
  error: null,
  platform: facebook,
  account_id: null,
  ad_account_id: null,
  target_id: null,
  target_name: null,
  creates: null,
  created_by: null,
  created_at: null
)
```

