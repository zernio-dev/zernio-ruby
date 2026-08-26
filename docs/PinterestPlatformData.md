# Zernio::PinterestPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Pin title. Defaults to first line of content or \&quot;Pin\&quot;. Must be ≤ 100 characters. | [optional] |
| **board_id** | **String** | Target Pinterest board ID. If omitted, the first available board is used. | [optional] |
| **board_section_id** | **String** | Target section inside the board. Optional; the pin lands on the board itself when omitted. Pinterest rejects the pin if the section does not belong to boardId, so send both together. | [optional] |
| **link** | **String** | Destination link (pin URL) | [optional] |
| **cover_image_url** | **String** | Optional cover image for video pins | [optional] |
| **cover_image_key_frame_time** | **Integer** | Optional key frame time in seconds for derived video cover | [optional] |
| **is_ai_generated** | **Boolean** | When true, the Pin is created with Pinterest&#39;s AI_MODIFIED disclosure (ai_disclosures), which shows an \&quot;AI modified\&quot; label. Applies to image and video Pins. Pinterest offers no \&quot;not AI\&quot; value, so false simply omits the disclosure. Pinterest may still label a Pin on its own detection. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PinterestPlatformData.new(
  title: null,
  board_id: null,
  board_section_id: null,
  link: null,
  cover_image_url: null,
  cover_image_key_frame_time: null,
  is_ai_generated: null
)
```

