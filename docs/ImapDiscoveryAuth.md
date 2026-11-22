# Zernio::ImapDiscoveryAuth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **why** | **String** |  | [optional] |
| **help_url** | **String** |  | [optional] |
| **steps** | **Array&lt;String&gt;** |  | [optional] |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImapDiscoveryAuth.new(
  kind: null,
  label: App-specific password,
  why: null,
  help_url: null,
  steps: null,
  note: null
)
```

