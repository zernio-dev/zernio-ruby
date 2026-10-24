# Zernio::FacebookPageInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **about** | **String** | Short description, shown as Description in the Page&#39;s Edit Page Info. |  |
| **description** | **String** | Longer text, shown as Additional Information. |  |
| **website** | **String** |  |  |
| **phone** | **String** |  |  |
| **emails** | **Array&lt;String&gt;** |  |  |
| **hours** | **Hash&lt;String, String&gt;** | Opening hours keyed &#x60;{day}_{slot}_{open|close}&#x60;, for example &#x60;mon_1_open: \&quot;09:00\&quot;&#x60;. Empty when the Page has none. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FacebookPageInfo.new(
  about: null,
  description: null,
  website: null,
  phone: null,
  emails: null,
  hours: null
)
```

