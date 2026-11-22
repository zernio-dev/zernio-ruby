# Zernio::SubmitCreatorDraftRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **media_url** | **String** | The &#x60;publicUrl&#x60; of the uploaded file. |  |
| **media_type** | **String** |  |  |
| **caption** | **String** |  | [optional][default to &#39;&#39;] |
| **revision_of** | **String** | The version marked &#x60;revision_requested&#x60; that this draft answers. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SubmitCreatorDraftRequest.new(
  media_url: null,
  media_type: null,
  caption: null,
  revision_of: null
)
```

