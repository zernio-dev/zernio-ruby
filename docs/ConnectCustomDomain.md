# Zernio::ConnectCustomDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **hostname** | **String** | The subdomain, such as &#x60;connect.yourbrand.com&#x60;. |  |
| **zone** | **String** | The registered domain the records live in, such as &#x60;yourbrand.com&#x60;. |  |
| **status** | **String** | &#x60;pending&#x60; until the TXT record is found and the certificate is issued, &#x60;active&#x60; once the domain serves the connect screens, &#x60;failed&#x60; when it stopped pointing at Zernio (remove it and add it again). |  |
| **connect_enabled** | **Boolean** | Whether new connect links open on this domain while it is active. |  |
| **ownership_verified** | **Boolean** | True once the TXT record was found. |  |
| **records** | [**Array&lt;ConnectCustomDomainRecordsInner&gt;**](ConnectCustomDomainRecordsInner.md) | The DNS records to add at your DNS provider. |  |
| **activated_at** | **Time** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectCustomDomain.new(
  id: null,
  hostname: null,
  zone: null,
  status: null,
  connect_enabled: null,
  ownership_verified: null,
  records: null,
  activated_at: null,
  created_at: null
)
```

