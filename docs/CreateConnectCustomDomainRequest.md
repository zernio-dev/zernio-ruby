# Zernio::CreateConnectCustomDomainRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hostname** | **String** | A subdomain, never the domain itself: &#x60;connect.yourbrand.com&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateConnectCustomDomainRequest.new(
  hostname: connect.yourbrand.com
)
```

