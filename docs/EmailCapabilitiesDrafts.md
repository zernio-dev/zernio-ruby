# Zernio::EmailCapabilitiesDrafts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supported** | **Boolean** |  | [optional] |
| **client_edits_visible** | **Boolean** | Edits the user makes in their mail client show up in the draft you read back. | [optional] |
| **versioned** | **Boolean** | Drafts carry a &#x60;version&#x60; for &#x60;If-Match&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailCapabilitiesDrafts.new(
  supported: null,
  client_edits_visible: null,
  versioned: null
)
```

