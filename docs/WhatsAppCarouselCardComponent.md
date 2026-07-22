# Zernio::WhatsAppCarouselCardComponent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::WhatsAppCarouselCardComponent.openapi_one_of
# =>
# [
#   :'WhatsAppBodyComponent',
#   :'WhatsAppButtonsComponent',
#   :'WhatsAppHeaderComponent'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'zernio-sdk'

Zernio::WhatsAppCarouselCardComponent.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'zernio-sdk'

Zernio::WhatsAppCarouselCardComponent.openapi_discriminator_mapping
# =>
# {
#   :'body' => :'WhatsAppBodyComponent',
#   :'buttons' => :'WhatsAppButtonsComponent',
#   :'header' => :'WhatsAppHeaderComponent'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::WhatsAppCarouselCardComponent.build(data)
# => #<WhatsAppBodyComponent:0x00007fdd4aab02a0>

Zernio::WhatsAppCarouselCardComponent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `WhatsAppBodyComponent`
- `WhatsAppButtonsComponent`
- `WhatsAppHeaderComponent`
- `nil` (if no type matches)

