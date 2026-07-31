# Zernio::ConnectedApp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** |  | [optional] |
| **client_name** | **String** | Name the client declared at registration. Registration is open, so this is self-declared and not verified. | [optional] |
| **redirect_host** | **String** | Host of the client&#39;s registered redirect URI (non-http schemes are shown as scheme//host). The destination an impostor cannot fake. | [optional] |
| **scopes** | **Array&lt;String&gt;** | Scopes granted on the most recent token. | [optional] |
| **authorized_at** | **Time** |  | [optional] |
| **last_used_at** | **Time** | Last time any of the client&#39;s live tokens authenticated a request. | [optional] |
| **token_count** | **Integer** | Live tokens held by the client (an active session is typically one access plus one refresh token). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectedApp.new(
  client_id: null,
  client_name: null,
  redirect_host: null,
  scopes: null,
  authorized_at: null,
  last_used_at: null,
  token_count: null
)
```

