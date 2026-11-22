# Zernio::GetCampaignResultsUpload200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_id** | **String** |  |  |
| **status** | **String** |  |  |
| **source** | **String** |  |  |
| **rows_received** | **Integer** |  |  |
| **rows_matched** | **Integer** |  |  |
| **rows_unmatched** | **Integer** |  |  |
| **unmatched** | [**Array&lt;GetCampaignResultsUpload200ResponseUnmatchedInner&gt;**](GetCampaignResultsUpload200ResponseUnmatchedInner.md) |  |  |
| **failure_reason** | **String** | Set when &#x60;status&#x60; is &#x60;failed&#x60;. &#x60;queue_unavailable&#x60;: the upload could not be queued. &#x60;processing_failed&#x60;: its rows could not be stored after several retries. Both are on our side. |  |
| **created_at** | **Time** |  |  |
| **completed_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignResultsUpload200Response.new(
  upload_id: null,
  status: null,
  source: null,
  rows_received: null,
  rows_matched: null,
  rows_unmatched: null,
  unmatched: null,
  failure_reason: null,
  created_at: null,
  completed_at: null
)
```

