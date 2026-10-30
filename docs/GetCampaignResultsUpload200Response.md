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
  created_at: null,
  completed_at: null
)
```

