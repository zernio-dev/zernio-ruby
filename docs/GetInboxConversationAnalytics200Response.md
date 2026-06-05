# Zernio::GetInboxConversationAnalytics200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **conversation_id** | **String** | The platformConversationId | [optional] |
| **mongo_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **from** | **Date** |  | [optional] |
| **to** | **Date** |  | [optional] |
| **summary** | [**GetInboxConversationAnalytics200ResponseSummary**](GetInboxConversationAnalytics200ResponseSummary.md) |  | [optional] |
| **timeseries** | [**Array&lt;GetInboxVolume200ResponseTimeseriesInner&gt;**](GetInboxVolume200ResponseTimeseriesInner.md) |  | [optional] |
| **by_source** | [**Array&lt;GetInboxConversationAnalytics200ResponseBySourceInner&gt;**](GetInboxConversationAnalytics200ResponseBySourceInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationAnalytics200Response.new(
  success: null,
  conversation_id: null,
  mongo_id: null,
  platform: null,
  from: null,
  to: null,
  summary: null,
  timeseries: null,
  by_source: null
)
```

