# Zernio::GetAccountHealth200ResponseCoexistenceHistorySync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | - &#x60;requested&#x60;: Meta accepted the request and has not sent history yet, which can take a while. - &#x60;imported&#x60;: Meta sent chat history to this account, including history a reconnect kept. - &#x60;declined&#x60;: the business chose not to share its chat history in Meta&#39;s window. - &#x60;already_synced&#x60;: Meta refused the request because an earlier connection already used the number&#39;s one history share. The description above says how to get a new import. - &#x60;refused&#x60;: Meta refused it for another reason.  | [optional] |
| **request_id** | **String** | The id of the last history request Meta accepted, kept across reconnects. Quote it in a Meta support case. | [optional] |
| **refused_at** | **Time** | When Meta refused the latest request. Null when it was accepted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountHealth200ResponseCoexistenceHistorySync.new(
  status: null,
  request_id: null,
  refused_at: null
)
```

