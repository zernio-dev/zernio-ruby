# Zernio::CreateStandaloneAdRequestPlacements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **publisher_platforms** | **Array&lt;String&gt;** | Top-level platforms to deliver on. A position field below is only honoured when its parent platform is included here. | [optional] |
| **facebook_positions** | **Array&lt;String&gt;** |  | [optional] |
| **instagram_positions** | **Array&lt;String&gt;** |  | [optional] |
| **messenger_positions** | **Array&lt;String&gt;** |  | [optional] |
| **audience_network_positions** | **Array&lt;String&gt;** |  | [optional] |
| **threads_positions** | **Array&lt;String&gt;** |  | [optional] |
| **whatsapp_positions** | **Array&lt;String&gt;** |  | [optional] |
| **device_platforms** | **Array&lt;String&gt;** | Restrict by device. Omit to deliver on both mobile and desktop. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestPlacements.new(
  publisher_platforms: null,
  facebook_positions: null,
  instagram_positions: null,
  messenger_positions: null,
  audience_network_positions: null,
  threads_positions: null,
  whatsapp_positions: null,
  device_platforms: null
)
```

