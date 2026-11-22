# Zernio::EmailCleanRemoved

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quoted** | **Boolean** | Quoted earlier mail was removed. | [optional] |
| **forward_header** | **Boolean** | A forward&#39;s header block was removed; it is parsed into &#x60;forwarded&#x60;. | [optional] |
| **boilerplate** | **Boolean** | Client boilerplate such as \&quot;Sent from my iPhone\&quot; was removed. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailCleanRemoved.new(
  quoted: null,
  forward_header: null,
  boilerplate: null
)
```

