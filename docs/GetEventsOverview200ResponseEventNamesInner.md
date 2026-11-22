# Zernio::GetEventsOverview200ResponseEventNamesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_name** | **String** |  | [optional] |
| **server_sources** | **Array&lt;String&gt;** | The server sources that reported it (api, stripe, shopify...). Empty when only the website did. | [optional] |
| **from_website** | **Boolean** | The website tag reported it. | [optional] |
| **website_today** | **Integer** | Website copies today. | [optional] |
| **server_today** | **Integer** | Server copies today. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverview200ResponseEventNamesInner.new(
  event_name: null,
  server_sources: null,
  from_website: null,
  website_today: null,
  server_today: null
)
```

