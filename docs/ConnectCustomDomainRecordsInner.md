# Zernio::ConnectCustomDomainRecordsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **name** | **String** | The full record name. |  |
| **host** | **String** | The name relative to &#x60;zone&#x60;, what most DNS providers ask for. |  |
| **value** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectCustomDomainRecordsInner.new(
  type: null,
  name: null,
  host: null,
  value: null
)
```

