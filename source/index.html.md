---
title: SoftLedger v1.0.0
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - javascript--nodejs: Node.JS
  - ruby: Ruby
  - python: Python
  - java: Java
toc_footers: []
includes: []
search: true
highlight_theme: darkula
---

# SoftLedger v1.0.0

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

SoftLedger API

Base URLs:

* <a href="https://app.softledger.com/api">https://app.softledger.com/api</a>

* <a href="https://trial.softledger.com/api">https://trial.softledger.com/api</a>





# Authentication



- oAuth2 authentication. 

    - Flow: password

    - Token URL = [https://softledger.auth0.com/oauth/token](https://softledger.auth0.com/oauth/token)

|Scope|Scope Description|
|---|---|
|admin|full access|




# Bill

## GET /bills

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/bills \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/bills HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/bills',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/bills',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/bills',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/bills', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/bills");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Bills*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
{
  "totalItems": 0,
  "data": {
    "_id": 0,
    "invoiceNumber": "string",
    "description": "string",
    "dueDate": "2017-10-02",
    "postingDate": "2017-10-02",
    "invoiceDate": "2017-10-02",
    "currency": "string",
    "LocationId": 0,
    "ICLocationId": 0,
    "VendorId": 0,
    "APAccountId": 0,
    "Location": {},
    "ICLocation": {},
    "Vendor": {},
    "APAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    }
  }
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|A list of Bills|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
totalItems|integer|false|No description
data|[Bill_](#schemabill_)|false|No description
» _id|integer|false|No description
» invoiceNumber|string|false|No description
» description|string|false|No description
» dueDate|string(date)|false|No description
» postingDate|string(date)|false|No description
» invoiceDate|string(date)|false|No description
» currency|string|false|No description
» LocationId|integer|false|No description
» ICLocationId|integer|false|No description
» VendorId|integer|false|No description
» APAccountId|integer|false|No description
» Location|[Location_](#schemalocation_)|false|No description
»» _id|integer|false|No description
»» id|string|false|No description
»» name|string|false|No description
» ICLocation|[Location_](#schemalocation_)|false|No description
»» _id|integer|false|No description
»» id|string|false|No description
»» name|string|false|No description
» Vendor|[Vendor_](#schemavendor_)|false|No description
»» _id|integer|false|No description
»» accNumber|string|false|No description
»» name|string|false|No description
»» email|string|false|No description
» APAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /bills

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/bills \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/bills HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/bills',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "billLineItems": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/bills',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/bills',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/bills', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/bills");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create A Bill*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[BillBody](#schema+billbody)|true|Bill details


> Example responses

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Vendor": {},
  "APAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "billLineItems": [
    {
      "_id": 0,
      "description": "string",
      "ItemId": 0,
      "CostCenterId": 0,
      "LedgerAccountId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      },
      "LedgerAccount": {
        "_id": 0,
        "number": 0,
        "name": "string"
      },
      "CostCenter": {}
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Bill|[Bill](#schemabill)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /bills/{id}

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/bills/{id} \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/bills/{id} HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/bills/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/bills/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/bills/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/bills/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/bills/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Bill*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Vendor": {},
  "APAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "billLineItems": [
    {
      "_id": 0,
      "description": "string",
      "ItemId": 0,
      "CostCenterId": 0,
      "LedgerAccountId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      },
      "LedgerAccount": {
        "_id": 0,
        "number": 0,
        "name": "string"
      },
      "CostCenter": {}
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Bill|[Bill](#schemabill)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /bills/{id}

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/bills/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/bills/{id} HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/bills/{id}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/bills/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/bills/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/bills/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/bills/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Bill*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[Bill_](#schemabill_)|true|Bill details


> Example responses

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Vendor": {},
  "APAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "billLineItems": [
    {
      "_id": 0,
      "description": "string",
      "ItemId": 0,
      "CostCenterId": 0,
      "LedgerAccountId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      },
      "LedgerAccount": {
        "_id": 0,
        "number": 0,
        "name": "string"
      },
      "CostCenter": {}
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Bill Updated|[Bill](#schemabill)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /bills/{id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/bills/{id}

```

```http
DELETE https://app.softledger.com/api/bills/{id} HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/bills/{id}',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/bills/{id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/bills/{id}',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/bills/{id}', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/bills/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Bill*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Bill Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /bills/nextNumber

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/bills/nextNumber \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/bills/nextNumber HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/bills/nextNumber',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/bills/nextNumber',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/bills/nextNumber',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/bills/nextNumber', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/bills/nextNumber");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get Next Auto Generated Bill Number*

> Example responses

```json
{
  "number": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Next Bill Number|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
number|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /bills/pay

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/bills/pay \
  -H 'Content-Type: application/json'

```

```http
POST https://app.softledger.com/api/bills/pay HTTP/1.1
Host: app.softledger.com
Content-Type: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/bills/pay',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "method": 0,
  "bills": [
    {
      "paymentAmount": 0.01,
      "billLineItems": [
        {}
      ]
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'

};

fetch('https://app.softledger.com/api/bills/pay',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/bills/pay',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://app.softledger.com/api/bills/pay', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/bills/pay");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Pay Bills*

> Body parameter

```json
{
  "method": 0,
  "bills": [
    {}
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|Payment Method, and Bills to pay
» method|body|integer|false|No description
» bills|body|[Unknown]|false|No description
»» paymentAmount|body|number(float)|false|No description
»» billLineItems|body|[[billLineItem_](#schemabilllineitem_)]|false|No description


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Bills Paid|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Cost Center

## GET /cost_centers

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/cost_centers \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/cost_centers HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/cost_centers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/cost_centers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/cost_centers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/cost_centers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cost_centers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Cost Centers*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
[
  {
    "_id": 0,
    "name": "string",
    "id": "string",
    "description": "string"
  }
]
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Cost Centers|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
anonymous|[[CostCenter](#schemacostcenter)]|false|No description
» _id|integer|false|No description
» name|string|false|No description
» id|string|false|No description
» description|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /cost_centers

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/cost_centers \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/cost_centers HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/cost_centers',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "name": "string",
  "id": "string",
  "description": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/cost_centers',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/cost_centers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/cost_centers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cost_centers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create A Coast Center*

> Body parameter

```json
{
  "_id": 0,
  "name": "string",
  "id": "string",
  "description": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[CostCenter](#schemacostcenter)|true|Cost Center details


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "id": "string",
  "description": "string"
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Cost Center|[CostCenter](#schemacostcenter)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /cost_centers/{id}

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/cost_centers/{id} \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/cost_centers/{id} HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/cost_centers/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/cost_centers/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/cost_centers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/cost_centers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cost_centers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Cost Center*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "id": "string",
  "description": "string"
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Cost Center|[CostCenter](#schemacostcenter)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /cost_centers/{id}

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/cost_centers/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/cost_centers/{id} HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/cost_centers/{id}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "name": "string",
  "id": "string",
  "description": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/cost_centers/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/cost_centers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/cost_centers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cost_centers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Cost Center*

> Body parameter

```json
{
  "_id": 0,
  "name": "string",
  "id": "string",
  "description": "string"
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[CostCenter](#schemacostcenter)|true|Cost Center details


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "id": "string",
  "description": "string"
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Cost Center Updated|[CostCenter](#schemacostcenter)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /cost_centers/{id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/cost_centers/{id}

```

```http
DELETE https://app.softledger.com/api/cost_centers/{id} HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/cost_centers/{id}',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/cost_centers/{id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/cost_centers/{id}',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/cost_centers/{id}', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cost_centers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Cost Center*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Cost Center Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Customer

## GET /customers

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/customers \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/customers HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/customers',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/customers',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/customers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/customers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/customers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Customers*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
{
  "totalItems": 0,
  "data": [
    {
      "_id": 0,
      "name": "string",
      "email": "string",
      "website": "string",
      "Addresses": [
        {}
      ],
      "Contacts": [
        {}
      ]
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Customers|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
totalItems|integer|false|No description
data|[[Customer](#schemacustomer)]|false|No description
» _id|integer|false|No description
» name|string|false|No description
» email|string|false|No description
» website|string|false|No description
» Addresses|[[Address](#schemaaddress)]|false|No description
»» _id|integer|false|No description
»» label|string|false|No description
»» line1|string|false|No description
»» line2|string|false|No description
»» city|string|false|No description
»» state|string|false|No description
»» country|string|false|No description
»» isDefault|boolean|false|No description
» Contacts|[[Contact](#schemacontact)]|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» email|string|false|No description
»» phone|string|false|No description
»» isPrimary|boolean|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /customers

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/customers \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/customers HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/customers',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "name": "string",
  "email": "string",
  "website": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/customers',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/customers',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/customers', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/customers");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create A Customer*

> Body parameter

```json
{
  "_id": 0,
  "name": "string",
  "email": "string",
  "website": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Customer](#schemacustomer)|true|Customer details


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "email": "string",
  "website": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Customer|[Customer](#schemacustomer)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /customers/{id}

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/customers/{id} \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/customers/{id} HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/customers/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/customers/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/customers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/customers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/customers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Customer*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "email": "string",
  "website": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Customer|[Customer](#schemacustomer)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /customers/{id}

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/customers/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/customers/{id} HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/customers/{id}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "name": "string",
  "email": "string",
  "website": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/customers/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/customers/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/customers/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/customers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Customer*

> Body parameter

```json
{
  "_id": 0,
  "name": "string",
  "email": "string",
  "website": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[Customer](#schemacustomer)|true|Customer details


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "email": "string",
  "website": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Customer Updated|[Customer](#schemacustomer)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /customers/{id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/customers/{id}

```

```http
DELETE https://app.softledger.com/api/customers/{id} HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/customers/{id}',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/customers/{id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/customers/{id}',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/customers/{id}', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/customers/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Customer*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Customer Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Invoice

## GET /invoices

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/invoices \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/invoices HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/invoices',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/invoices',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/invoices', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Invoices*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
{
  "totalItems": 0,
  "data": [
    {
      "_id": 0,
      "invoiceNumber": "string",
      "description": "string",
      "dueDate": "2017-10-02",
      "postingDate": "2017-10-02",
      "invoiceDate": "2017-10-02",
      "currency": "string",
      "LocationId": 0,
      "ICLocationId": 0,
      "VendorId": 0,
      "APAccountId": 0,
      "Location": {},
      "ICLocation": {},
      "Agent": {},
      "ARAccount": {
        "_id": 0,
        "number": 0,
        "name": "string"
      },
      "InvoiceLineItems": [
        {
          "_id": 0,
          "description": "string",
          "unitAmount": 0,
          "quantity": 0,
          "ItemId": 0,
          "Item": {
            "_id": 0,
            "name": "string",
            "description": "string",
            "InvoiceAccountId": 0,
            "BillAccountId": 0,
            "InventoryAccountId": 0,
            "InvoiceAccount": {
              "_id": 0,
              "number": 0,
              "name": "string"
            },
            "BillAccount": {
              "_id": 0,
              "number": 0,
              "name": "string"
            },
            "InventoryAccount": {
              "_id": 0,
              "number": 0,
              "name": "string"
            }
          }
        }
      ]
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Invoices|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
totalItems|integer|false|No description
data|[[Invoice](#schemainvoice)]|false|No description
» _id|integer|false|No description
» invoiceNumber|string|false|No description
» description|string|false|No description
» dueDate|string(date)|false|No description
» postingDate|string(date)|false|No description
» invoiceDate|string(date)|false|No description
» currency|string|false|No description
» LocationId|integer|false|No description
» ICLocationId|integer|false|No description
» VendorId|integer|false|No description
» APAccountId|integer|false|No description
» Location|[Location_](#schemalocation_)|false|No description
»» _id|integer|false|No description
»» id|string|false|No description
»» name|string|false|No description
» ICLocation|[Location_](#schemalocation_)|false|No description
»» _id|integer|false|No description
»» id|string|false|No description
»» name|string|false|No description
» Agent|[Customer_](#schemacustomer_)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» email|string|false|No description
»» website|string|false|No description
» ARAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» InvoiceLineItems|[[InvoiceLineItem](#schemainvoicelineitem)]|false|No description
»» _id|integer|false|No description
»» description|string|false|No description
»» unitAmount|number|false|No description
»» quantity|number|false|No description
»» ItemId|integer|false|No description
»» Item|[Item](#schemaitem)|false|No description
»»» _id|integer|false|No description
»»» name|string|false|No description
»»» description|string|false|No description
»»» InvoiceAccountId|integer|false|No description
»»» BillAccountId|integer|false|No description
»»» InventoryAccountId|integer|false|No description
»»» InvoiceAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»»» _id|integer|false|No description
»»»» number|integer|false|No description
»»»» name|string|false|No description
»»» BillAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»»» _id|integer|false|No description
»»»» number|integer|false|No description
»»»» name|string|false|No description
»»» InventoryAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»»» _id|integer|false|No description
»»»» number|integer|false|No description
»»»» name|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /invoices

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/invoices \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/invoices HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "InvoiceLineItems": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/invoices',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/invoices',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/invoices', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create an Invoice*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[InvoiceBody](#schema+invoicebody)|true|Invoice details


> Example responses

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Agent": {},
  "ARAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InvoiceLineItems": [
    {
      "_id": 0,
      "description": "string",
      "unitAmount": 0,
      "quantity": 0,
      "ItemId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      }
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Invoice|[Invoice](#schemainvoice)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /invoices/{id}

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/invoices/{id} \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/invoices/{id} HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/invoices/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/invoices/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/invoices/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Invoice*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Agent": {},
  "ARAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InvoiceLineItems": [
    {
      "_id": 0,
      "description": "string",
      "unitAmount": 0,
      "quantity": 0,
      "ItemId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      }
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Invoice|[Invoice](#schemainvoice)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /invoices/{id}

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/invoices/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/invoices/{id} HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices/{id}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/invoices/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/invoices/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/invoices/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Invoice*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[Invoice_](#schemainvoice_)|true|Invoice details


> Example responses

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Agent": {},
  "ARAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InvoiceLineItems": [
    {
      "_id": 0,
      "description": "string",
      "unitAmount": 0,
      "quantity": 0,
      "ItemId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      }
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Invoice Updated|[Invoice](#schemainvoice)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /invoices/{id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/invoices/{id}

```

```http
DELETE https://app.softledger.com/api/invoices/{id} HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/invoices/{id}',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/invoices/{id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/invoices/{id}',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/invoices/{id}', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Invoice*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Invoice Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /invoices/nextNumber

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/invoices/nextNumber \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/invoices/nextNumber HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices/nextNumber',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/invoices/nextNumber',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/invoices/nextNumber',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/invoices/nextNumber', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices/nextNumber");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get Next Auto Generated Invoice Number*

> Example responses

```json
{
  "number": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Next Invoice Number|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
number|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /invoices/{id}/pdf

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/invoices/{id}/pdf \
  -H 'Accept: application/pdf'

```

```http
GET https://app.softledger.com/api/invoices/{id}/pdf HTTP/1.1
Host: app.softledger.com

Accept: application/pdf

```

```javascript
var headers = {
  'Accept':'application/pdf'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices/{id}/pdf',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/pdf'

};

fetch('https://app.softledger.com/api/invoices/{id}/pdf',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/pdf'
}

result = RestClient.get 'https://app.softledger.com/api/invoices/{id}/pdf',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/pdf'
}

r = requests.get('https://app.softledger.com/api/invoices/{id}/pdf', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices/{id}/pdf");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get Next Auto Generated Bill Number*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Next Bill Number|string(binary)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /invoices/{id}/issue

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/invoices/{id}/issue \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/invoices/{id}/issue HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices/{id}/issue',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/invoices/{id}/issue',
{
  method: 'PUT',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/invoices/{id}/issue',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/invoices/{id}/issue', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices/{id}/issue");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Issue invoice to customer*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Agent": {},
  "ARAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InvoiceLineItems": [
    {
      "_id": 0,
      "description": "string",
      "unitAmount": 0,
      "quantity": 0,
      "ItemId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      }
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Updated invoice (status = 'issued')|[Invoice](#schemainvoice)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /invoices/{id}/void

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/invoices/{id}/void \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/invoices/{id}/void HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices/{id}/void',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/invoices/{id}/void',
{
  method: 'PUT',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/invoices/{id}/void',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/invoices/{id}/void', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices/{id}/void");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Void invoice*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Agent": {},
  "ARAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InvoiceLineItems": [
    {
      "_id": 0,
      "description": "string",
      "unitAmount": 0,
      "quantity": 0,
      "ItemId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      }
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Updated invoice (status = 'voided')|[Invoice](#schemainvoice)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /invoices/apply

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/invoices/apply \
  -H 'Content-Type: application/json'

```

```http
POST https://app.softledger.com/api/invoices/apply HTTP/1.1
Host: app.softledger.com
Content-Type: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/invoices/apply',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "cashReceipt": {},
  "invoices": [
    {
      "paymentAmount": 0.01
    }
  ]
}';
const headers = {
  'Content-Type':'application/json'

};

fetch('https://app.softledger.com/api/invoices/apply',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/invoices/apply',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json'
}

r = requests.post('https://app.softledger.com/api/invoices/apply', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/invoices/apply");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Apply Cash Receipt to Invoices*

> Body parameter

```json
{
  "cashReceipt": {
    "_id": 0,
    "number": "string",
    "amount": 0,
    "unused": 0,
    "description": "string",
    "AgentId": 0,
    "LedgerAccountId": 0,
    "LocationId": 0,
    "Agent": {},
    "LedgerAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "Location": {}
  },
  "invoices": [
    {
      "_id": 0,
      "invoiceNumber": "string",
      "description": "string",
      "dueDate": "2017-10-02",
      "postingDate": "2017-10-02",
      "invoiceDate": "2017-10-02",
      "currency": "string",
      "LocationId": 0,
      "ICLocationId": 0,
      "VendorId": 0,
      "APAccountId": 0,
      "Location": {},
      "ICLocation": {},
      "Agent": {},
      "ARAccount": {
        "_id": 0,
        "number": 0,
        "name": "string"
      },
      "InvoiceLineItems": [
        {
          "_id": 0,
          "description": "string",
          "unitAmount": 0,
          "quantity": 0,
          "ItemId": 0,
          "Item": {
            "_id": 0,
            "name": "string",
            "description": "string",
            "InvoiceAccountId": 0,
            "BillAccountId": 0,
            "InventoryAccountId": 0,
            "InvoiceAccount": {
              "_id": 0,
              "number": 0,
              "name": "string"
            },
            "BillAccount": {
              "_id": 0,
              "number": 0,
              "name": "string"
            },
            "InventoryAccount": {
              "_id": 0,
              "number": 0,
              "name": "string"
            }
          }
        }
      ]
    }
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|object|true|Cash Receipt, and Invoices to apply receipt to
» cashReceipt|body|[CashReceipt](#schemacashreceipt)|false|No description
» invoices|body|[Unknown]|false|No description
»» paymentAmount|body|number(float)|false|No description


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Payments Applied|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Item

## GET /items*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/items* \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/items* HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/items*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/items*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/items*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/items*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/items*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Items*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
[
  {
    "_id": 0,
    "name": "string",
    "description": "string",
    "InvoiceAccountId": 0,
    "BillAccountId": 0,
    "InventoryAccountId": 0,
    "InvoiceAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "BillAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "InventoryAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    }
  }
]
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Items|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
anonymous|[[Item](#schemaitem)]|false|No description
» _id|integer|false|No description
» name|string|false|No description
» description|string|false|No description
» InvoiceAccountId|integer|false|No description
» BillAccountId|integer|false|No description
» InventoryAccountId|integer|false|No description
» InvoiceAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» BillAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» InventoryAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /items*

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/items* \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/items* HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/items*',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/items*',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/items*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/items*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/items*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create An Item*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Item_](#schemaitem_)|true|Item details


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "description": "string",
  "InvoiceAccountId": 0,
  "BillAccountId": 0,
  "InventoryAccountId": 0,
  "InvoiceAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "BillAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InventoryAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  }
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Item|[Item](#schemaitem)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /items/{id}*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/items/{id}* \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/items/{id}* HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/items/{id}*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/items/{id}*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/items/{id}*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/items/{id}*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/items/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Item*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "description": "string",
  "InvoiceAccountId": 0,
  "BillAccountId": 0,
  "InventoryAccountId": 0,
  "InvoiceAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "BillAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InventoryAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  }
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Item|[Item](#schemaitem)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /items/{id}*

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/items/{id}* \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/items/{id}* HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/items/{id}*',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/items/{id}*',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/items/{id}*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/items/{id}*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/items/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Item*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[Item_](#schemaitem_)|true|Item details


> Example responses

```json
{
  "_id": 0,
  "name": "string",
  "description": "string",
  "InvoiceAccountId": 0,
  "BillAccountId": 0,
  "InventoryAccountId": 0,
  "InvoiceAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "BillAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InventoryAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  }
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Item Updated|[Item](#schemaitem)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /items/{id}*

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/items/{id}*

```

```http
DELETE https://app.softledger.com/api/items/{id}* HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/items/{id}*',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/items/{id}*',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/items/{id}*',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/items/{id}*', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/items/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Item*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Item Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Journal

## GET /journals/nextId

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/journals/nextId \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/journals/nextId HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/journals/nextId',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/journals/nextId',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/journals/nextId',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/journals/nextId', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/journals/nextId");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get Next Auto Generated Journal Number*

> Example responses

```json
{
  "number": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Next Journal Number|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
number|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /journals

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/journals \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/journals HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/journals',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "Transactions": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/journals',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/journals',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/journals', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/journals");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Post Journal Entry*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[JournalBody](#schema+journalbody)|true|Journal with Transactions


> Example responses

```json
{}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Posted Journal|[Journal](#schemajournal)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Ledger Account

## GET /ledger_accounts

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/ledger_accounts \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/ledger_accounts HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/ledger_accounts',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/ledger_accounts',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/ledger_accounts',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/ledger_accounts', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/ledger_accounts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Ledger Accounts*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
[
  {
    "Location": {}
  }
]
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Ledger Accounts|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
anonymous|[[LedgerAccount](#schemaledgeraccount)]|false|No description
» Location|[Location_](#schemalocation_)|false|No description
»» _id|integer|false|No description
»» id|string|false|No description
»» name|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /ledger_accounts

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/ledger_accounts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/ledger_accounts HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/ledger_accounts',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "number": 0,
  "name": "string",
  "naturalBalance": "string",
  "type": "string",
  "description": "string",
  "includeLocationChildren": true,
  "LocationId": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/ledger_accounts',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/ledger_accounts',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/ledger_accounts', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/ledger_accounts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create An Ledger Account*

> Body parameter

```json
{
  "_id": 0,
  "number": 0,
  "name": "string",
  "naturalBalance": "string",
  "type": "string",
  "description": "string",
  "includeLocationChildren": true,
  "LocationId": 0
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[LedgerAccount](#schemaledgeraccount)|true|Ledger Account


> Example responses

```json
{
  "_id": 0,
  "number": 0,
  "name": "string",
  "naturalBalance": "string",
  "type": "string",
  "description": "string",
  "includeLocationChildren": true,
  "LocationId": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Ledger Account|[LedgerAccount](#schemaledgeraccount)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /ledger_accounts/{id}

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/ledger_accounts/{id} \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/ledger_accounts/{id} HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/ledger_accounts/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/ledger_accounts/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/ledger_accounts/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/ledger_accounts/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/ledger_accounts/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Ledger Account*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "Location": {}
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Ledger Account|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
Location|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /ledger_accounts/{id}

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/ledger_accounts/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/ledger_accounts/{id} HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/ledger_accounts/{id}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "number": 0,
  "name": "string",
  "naturalBalance": "string",
  "type": "string",
  "description": "string",
  "includeLocationChildren": true,
  "LocationId": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/ledger_accounts/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/ledger_accounts/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/ledger_accounts/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/ledger_accounts/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Ledger Account*

> Body parameter

```json
{
  "_id": 0,
  "number": 0,
  "name": "string",
  "naturalBalance": "string",
  "type": "string",
  "description": "string",
  "includeLocationChildren": true,
  "LocationId": 0
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[LedgerAccount](#schemaledgeraccount)|true|Ledger Account


> Example responses

```json
{
  "_id": 0,
  "number": 0,
  "name": "string",
  "naturalBalance": "string",
  "type": "string",
  "description": "string",
  "includeLocationChildren": true,
  "LocationId": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Ledger Account Updated|[LedgerAccount](#schemaledgeraccount)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /ledger_accounts/{id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/ledger_accounts/{id}

```

```http
DELETE https://app.softledger.com/api/ledger_accounts/{id} HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/ledger_accounts/{id}',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/ledger_accounts/{id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/ledger_accounts/{id}',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/ledger_accounts/{id}', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/ledger_accounts/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Ledger Account*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Ledger Account Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Location

## GET /location

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/location \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/location HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/location',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/location',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/location',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/location', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/location");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Locations user has access to*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
[
  {
    "_id": 0,
    "id": "string",
    "name": "string",
    "currency": "string",
    "description": "string",
    "parent_id": 0
  }
]
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Locations|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
anonymous|[[Location](#schemalocation)]|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
» currency|string|false|No description
» description|string|false|No description
» parent_id|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /location

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/location \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/location HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/location',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "id": "string",
  "name": "string",
  "currency": "string",
  "description": "string",
  "parent_id": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/location',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/location',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/location', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/location");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create A Location*

> Body parameter

```json
{
  "_id": 0,
  "id": "string",
  "name": "string",
  "currency": "string",
  "description": "string",
  "parent_id": 0
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Location](#schemalocation)|true|Location


> Example responses

```json
{
  "_id": 0,
  "id": "string",
  "name": "string",
  "currency": "string",
  "description": "string",
  "parent_id": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Location|[Location](#schemalocation)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /location/{id}

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/location/{id} \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/location/{id} HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/location/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/location/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/location/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/location/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/location/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Location*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "id": "string",
  "name": "string",
  "currency": "string",
  "description": "string",
  "parent_id": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Location|[Location](#schemalocation)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /location/{id}

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/location/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/location/{id} HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/location/{id}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "id": "string",
  "name": "string",
  "currency": "string",
  "description": "string",
  "parent_id": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/location/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/location/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/location/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/location/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Location*

> Body parameter

```json
{
  "_id": 0,
  "id": "string",
  "name": "string",
  "currency": "string",
  "description": "string",
  "parent_id": 0
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[Location](#schemalocation)|true|Location


> Example responses

```json
{
  "_id": 0,
  "id": "string",
  "name": "string",
  "currency": "string",
  "description": "string",
  "parent_id": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Location Updated|[Location](#schemalocation)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /location/{id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/location/{id}

```

```http
DELETE https://app.softledger.com/api/location/{id} HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/location/{id}',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/location/{id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/location/{id}',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/location/{id}', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/location/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Location*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Location Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /locations/me

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/locations/me \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/locations/me HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/locations/me',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/locations/me',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/locations/me',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/locations/me', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/locations/me");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Returns users location and all its children*

> Example responses

```json
{
  "children": [
    {
      "_id": 0,
      "id": "string",
      "name": "string",
      "currency": "string",
      "description": "string",
      "parent_id": 0
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Users location 'tree'|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
children|[[Location](#schemalocation)]|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
» currency|string|false|No description
» description|string|false|No description
» parent_id|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /locations/{id}/descendents

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/locations/{id}/descendents \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/locations/{id}/descendents HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/locations/{id}/descendents',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/locations/{id}/descendents',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/locations/{id}/descendents',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/locations/{id}/descendents', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/locations/{id}/descendents");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Returns a locations descendants(children)*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "children": [
    {
      "_id": 0,
      "id": "string",
      "name": "string",
      "currency": "string",
      "description": "string",
      "parent_id": 0
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Location|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
children|[[Location](#schemalocation)]|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
» currency|string|false|No description
» description|string|false|No description
» parent_id|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Purchase Order

## GET /purchaseOrders*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/purchaseOrders* \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/purchaseOrders* HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/purchaseOrders*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/purchaseOrders*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/purchaseOrders*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/purchaseOrders*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/purchaseOrders*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All POs*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
{
  "totalItems": 0,
  "data": [
    {
      "number": "string",
      "description": "string",
      "issueDate": "2017-10-02",
      "deliveryDate": "2017-10-02",
      "status": "created",
      "amount": 0,
      "currency": "USD",
      "notes": "string",
      "VendorId": 0,
      "WarehouseId": 0,
      "ShippingAddressId": 0,
      "LocationId": 0,
      "ICLocationId": 0,
      "InventoryReceivingAccountId": 0,
      "Vendor": {},
      "Warehouse": {},
      "ShippingAddress": {},
      "Location": {},
      "ICLocation": {},
      "InventoryReceivingAccount": {
        "_id": 0,
        "number": 0,
        "name": "string"
      }
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of POs|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
totalItems|integer|false|No description
data|[[PurchaseOrder](#schemapurchaseorder)]|false|No description
» number|string|false|No description
» description|string|false|No description
» issueDate|string(date)|false|No description
» deliveryDate|string(date)|false|No description
» status|string|false|No description
» amount|number|false|No description
» currency|string|false|No description
» notes|string|false|No description
» VendorId|integer|false|No description
» WarehouseId|integer|false|No description
» ShippingAddressId|integer|false|No description
» LocationId|integer|false|No description
» ICLocationId|integer|false|No description
» InventoryReceivingAccountId|integer|false|No description
» Vendor|[Vendor_](#schemavendor_)|false|No description
»» _id|integer|false|No description
»» accNumber|string|false|No description
»» name|string|false|No description
»» email|string|false|No description
» Warehouse|[Warehouse_](#schemawarehouse_)|false|No description
»» name|string|false|No description
»» description|string|false|No description
» ShippingAddress|[Address](#schemaaddress)|false|No description
»» _id|integer|false|No description
»» label|string|false|No description
»» line1|string|false|No description
»» line2|string|false|No description
»» city|string|false|No description
»» state|string|false|No description
»» country|string|false|No description
»» isDefault|boolean|false|No description
» Location|[Location_](#schemalocation_)|false|No description
»» _id|integer|false|No description
»» id|string|false|No description
»» name|string|false|No description
» ICLocation|[Location_](#schemalocation_)|false|No description
»» _id|integer|false|No description
»» id|string|false|No description
»» name|string|false|No description
» InventoryReceivingAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /purchaseOrders*

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/purchaseOrders* \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/purchaseOrders* HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/purchaseOrders*',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "POLineItems": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/purchaseOrders*',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/purchaseOrders*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/purchaseOrders*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/purchaseOrders*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create an PO*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[PurchaseOrderBody](#schema+purchaseorderbody)|true|PO


> Example responses

```json
{
  "number": "string",
  "description": "string",
  "issueDate": "2017-10-02",
  "deliveryDate": "2017-10-02",
  "status": "created",
  "amount": 0,
  "currency": "USD",
  "notes": "string",
  "VendorId": 0,
  "WarehouseId": 0,
  "ShippingAddressId": 0,
  "LocationId": 0,
  "ICLocationId": 0,
  "InventoryReceivingAccountId": 0,
  "POLineItems": {}
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created PurchaseOrder|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
number|string|false|No description
description|string|false|No description
issueDate|string(date)|false|No description
deliveryDate|string(date)|false|No description
status|string|false|No description
amount|number|false|No description
currency|string|false|No description
notes|string|false|No description
VendorId|integer|false|No description
WarehouseId|integer|false|No description
ShippingAddressId|integer|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
InventoryReceivingAccountId|integer|false|No description
POLineItems|[POLineItem_](#schemapolineitem_)|false|No description
» description|string|false|No description
» amount|number|false|No description
» quantity|integer|false|No description
» quantityReceived|integer|false|No description
» ItemId|integer|false|No description
» LedgerAccountId|integer|false|No description
» CostCenterId|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /purchaseOrders/{id}*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/purchaseOrders/{id}* \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/purchaseOrders/{id}* HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/purchaseOrders/{id}*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/purchaseOrders/{id}*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/purchaseOrders/{id}*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/purchaseOrders/{id}*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/purchaseOrders/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One PO*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "POLineItems": {
    "description": "string",
    "amount": 0,
    "quantity": 0,
    "quantityReceived": 0,
    "ItemId": 0,
    "LedgerAccountId": 0,
    "CostCenterId": 0,
    "Item": {},
    "LedgerAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "CostCenter": {}
  }
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|PO|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
POLineItems|[POLineItem](#schemapolineitem)|false|No description
» description|string|false|No description
» amount|number|false|No description
» quantity|integer|false|No description
» quantityReceived|integer|false|No description
» ItemId|integer|false|No description
» LedgerAccountId|integer|false|No description
» CostCenterId|integer|false|No description
» Item|[Item_](#schemaitem_)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» description|string|false|No description
»» InvoiceAccountId|integer|false|No description
»» BillAccountId|integer|false|No description
»» InventoryAccountId|integer|false|No description
» LedgerAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» CostCenter|[CostCenter_](#schemacostcenter_)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» id|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /purchaseOrders/{id}*

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/purchaseOrders/{id}* \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/purchaseOrders/{id}* HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/purchaseOrders/{id}*',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/purchaseOrders/{id}*',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/purchaseOrders/{id}*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/purchaseOrders/{id}*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/purchaseOrders/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update PO*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[PurchaseOrder_](#schemapurchaseorder_)|true|PO


> Example responses

```json
{
  "number": "string",
  "description": "string",
  "issueDate": "2017-10-02",
  "deliveryDate": "2017-10-02",
  "status": "created",
  "amount": 0,
  "currency": "USD",
  "notes": "string",
  "VendorId": 0,
  "WarehouseId": 0,
  "ShippingAddressId": 0,
  "LocationId": 0,
  "ICLocationId": 0,
  "InventoryReceivingAccountId": 0,
  "POLineItems": {}
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|PO Updated|Inline

### Response Schema

Status Code **201**

Name|Type|Required|Description
---|---|---|---|---|
number|string|false|No description
description|string|false|No description
issueDate|string(date)|false|No description
deliveryDate|string(date)|false|No description
status|string|false|No description
amount|number|false|No description
currency|string|false|No description
notes|string|false|No description
VendorId|integer|false|No description
WarehouseId|integer|false|No description
ShippingAddressId|integer|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
InventoryReceivingAccountId|integer|false|No description
POLineItems|[POLineItem_](#schemapolineitem_)|false|No description
» description|string|false|No description
» amount|number|false|No description
» quantity|integer|false|No description
» quantityReceived|integer|false|No description
» ItemId|integer|false|No description
» LedgerAccountId|integer|false|No description
» CostCenterId|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /purchaseOrders/{id}*

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/purchaseOrders/{id}*

```

```http
DELETE https://app.softledger.com/api/purchaseOrders/{id}* HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/purchaseOrders/{id}*',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/purchaseOrders/{id}*',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/purchaseOrders/{id}*',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/purchaseOrders/{id}*', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/purchaseOrders/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete PO*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|PO Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /purchaseOrders/nextNumber*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/purchaseOrders/nextNumber* \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/purchaseOrders/nextNumber* HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/purchaseOrders/nextNumber*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/purchaseOrders/nextNumber*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/purchaseOrders/nextNumber*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/purchaseOrders/nextNumber*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/purchaseOrders/nextNumber*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get Next Auto Generated PO Number*

> Example responses

```json
{
  "number": 0
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Next PO Number|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
number|integer|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /purchaseOrders/{id}/pdf*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/purchaseOrders/{id}/pdf* \
  -H 'Accept: application/pdf'

```

```http
GET https://app.softledger.com/api/purchaseOrders/{id}/pdf* HTTP/1.1
Host: app.softledger.com

Accept: application/pdf

```

```javascript
var headers = {
  'Accept':'application/pdf'

};

$.ajax({
  url: 'https://app.softledger.com/api/purchaseOrders/{id}/pdf*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/pdf'

};

fetch('https://app.softledger.com/api/purchaseOrders/{id}/pdf*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/pdf'
}

result = RestClient.get 'https://app.softledger.com/api/purchaseOrders/{id}/pdf*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/pdf'
}

r = requests.get('https://app.softledger.com/api/purchaseOrders/{id}/pdf*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/purchaseOrders/{id}/pdf*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get Purchase Order PDF*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|PO PDF|string(binary)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /purchaseOrders/{id}/lineItems*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/purchaseOrders/{id}/lineItems* \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/purchaseOrders/{id}/lineItems* HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/purchaseOrders/{id}/lineItems*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/purchaseOrders/{id}/lineItems*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/purchaseOrders/{id}/lineItems*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/purchaseOrders/{id}/lineItems*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/purchaseOrders/{id}/lineItems*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get all Line Items for a PO*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
[
  {
    "description": "string",
    "amount": 0,
    "quantity": 0,
    "quantityReceived": 0,
    "ItemId": 0,
    "LedgerAccountId": 0,
    "CostCenterId": 0,
    "Item": {},
    "LedgerAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "CostCenter": {}
  }
]
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|PO Line Items|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
anonymous|[[POLineItem](#schemapolineitem)]|false|No description
» description|string|false|No description
» amount|number|false|No description
» quantity|integer|false|No description
» quantityReceived|integer|false|No description
» ItemId|integer|false|No description
» LedgerAccountId|integer|false|No description
» CostCenterId|integer|false|No description
» Item|[Item_](#schemaitem_)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» description|string|false|No description
»» InvoiceAccountId|integer|false|No description
»» BillAccountId|integer|false|No description
»» InventoryAccountId|integer|false|No description
» LedgerAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» CostCenter|[CostCenter_](#schemacostcenter_)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» id|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Vendor

## GET /vendors

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/vendors \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/vendors HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/vendors',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/vendors',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/vendors',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/vendors', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/vendors");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Vendors*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
{
  "totalItems": 0,
  "data": [
    {
      "_id": 0,
      "accNumber": "string",
      "name": "string",
      "email": "string",
      "Addresses": [
        {}
      ],
      "Contacts": [
        {}
      ]
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Vendors|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
totalItems|integer|false|No description
data|[[Vendor](#schemavendor)]|false|No description
» _id|integer|false|No description
» accNumber|string|false|No description
» name|string|false|No description
» email|string|false|No description
» Addresses|[[Address](#schemaaddress)]|false|No description
»» _id|integer|false|No description
»» label|string|false|No description
»» line1|string|false|No description
»» line2|string|false|No description
»» city|string|false|No description
»» state|string|false|No description
»» country|string|false|No description
»» isDefault|boolean|false|No description
» Contacts|[[Contact](#schemacontact)]|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» email|string|false|No description
»» phone|string|false|No description
»» isPrimary|boolean|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /vendors

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/vendors \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/vendors HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/vendors',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "accNumber": "string",
  "name": "string",
  "email": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/vendors',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/vendors',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/vendors', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/vendors");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create A Vendor*

> Body parameter

```json
{
  "_id": 0,
  "accNumber": "string",
  "name": "string",
  "email": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Vendor](#schemavendor)|true|Vendor


> Example responses

```json
{
  "_id": 0,
  "accNumber": "string",
  "name": "string",
  "email": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Vendor|[Vendor](#schemavendor)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /vendors/{id}

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/vendors/{id} \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/vendors/{id} HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/vendors/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/vendors/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/vendors/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/vendors/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/vendors/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Vendor*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "accNumber": "string",
  "name": "string",
  "email": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Vendor|[Vendor](#schemavendor)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /vendors/{id}

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/vendors/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/vendors/{id} HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/vendors/{id}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "_id": 0,
  "accNumber": "string",
  "name": "string",
  "email": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/vendors/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/vendors/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/vendors/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/vendors/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Vendor*

> Body parameter

```json
{
  "_id": 0,
  "accNumber": "string",
  "name": "string",
  "email": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[Vendor](#schemavendor)|true|Vendor


> Example responses

```json
{
  "_id": 0,
  "accNumber": "string",
  "name": "string",
  "email": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Vendor Updated|[Vendor](#schemavendor)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /vendors/{id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/vendors/{id}

```

```http
DELETE https://app.softledger.com/api/vendors/{id} HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/vendors/{id}',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/vendors/{id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/vendors/{id}',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/vendors/{id}', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/vendors/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Vendor*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Vendor Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Warehouse

## GET /warehouses*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/warehouses* \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/warehouses* HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/warehouses*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/warehouses*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/warehouses*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/warehouses*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/warehouses*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Warehouses*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
[
  {
    "name": "string",
    "description": "string",
    "Address": {}
  }
]
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Warehouses|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
anonymous|[[Warehouse](#schemawarehouse)]|false|No description
» name|string|false|No description
» description|string|false|No description
» Address|[Address](#schemaaddress)|false|No description
»» _id|integer|false|No description
»» label|string|false|No description
»» line1|string|false|No description
»» line2|string|false|No description
»» city|string|false|No description
»» state|string|false|No description
»» country|string|false|No description
»» isDefault|boolean|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /warehouses*

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/warehouses* \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/warehouses* HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/warehouses*',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "description": "string",
  "Address": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/warehouses*',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/warehouses*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/warehouses*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/warehouses*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create A Warehouse*

> Body parameter

```json
{
  "name": "string",
  "description": "string",
  "Address": {}
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[Warehouse](#schemawarehouse)|true|Warehouse


> Example responses

```json
{
  "name": "string",
  "description": "string",
  "Address": {}
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Warehouse|[Warehouse](#schemawarehouse)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /warehouses/{id}*

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/warehouses/{id}* \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/warehouses/{id}* HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/warehouses/{id}*',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/warehouses/{id}*',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/warehouses/{id}*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/warehouses/{id}*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/warehouses/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Warehouse*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "name": "string",
  "description": "string",
  "Address": {}
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Warehouse|[Warehouse](#schemawarehouse)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /warehouses/{id}*

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/warehouses/{id}* \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/warehouses/{id}* HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/warehouses/{id}*',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "name": "string",
  "description": "string",
  "Address": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/warehouses/{id}*',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/warehouses/{id}*',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/warehouses/{id}*', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/warehouses/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Warehouse*

> Body parameter

```json
{
  "name": "string",
  "description": "string",
  "Address": {}
}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[Warehouse](#schemawarehouse)|true|Warehouse


> Example responses

```json
{
  "name": "string",
  "description": "string",
  "Address": {}
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Warehouse Updated|[Warehouse](#schemawarehouse)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /warehouses/{id}*

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/warehouses/{id}*

```

```http
DELETE https://app.softledger.com/api/warehouses/{id}* HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/warehouses/{id}*',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/warehouses/{id}*',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/warehouses/{id}*',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/warehouses/{id}*', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/warehouses/{id}*");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Warehouse*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Warehouse Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Cash Receipt

## GET /cashReceipts

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/cashReceipts \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/cashReceipts HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/cashReceipts',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/cashReceipts',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/cashReceipts',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/cashReceipts', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cashReceipts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get All Cash Receipts*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
where|query|object|false|Key:Value object to filter results on
offset|query|integer|false|number of pages to skip
limit|query|integer|false|max records to return


> Example responses

```json
{
  "totalItems": 0,
  "data": [
    {
      "_id": 0,
      "number": "string",
      "amount": 0,
      "unused": 0,
      "description": "string",
      "AgentId": 0,
      "LedgerAccountId": 0,
      "LocationId": 0,
      "Agent": {},
      "LedgerAccount": {
        "_id": 0,
        "number": 0,
        "name": "string"
      },
      "Location": {}
    }
  ]
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of Cash Receipts|Inline

### Response Schema

Status Code **200**

Name|Type|Required|Description
---|---|---|---|---|
totalItems|integer|false|No description
data|[[CashReceipt](#schemacashreceipt)]|false|No description
» _id|integer|false|No description
» number|string|false|No description
» amount|number|false|No description
» unused|number|false|No description
» description|string|false|No description
» AgentId|integer|false|No description
» LedgerAccountId|integer|false|No description
» LocationId|integer|false|No description
» Agent|[Customer_](#schemacustomer_)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» email|string|false|No description
»» website|string|false|No description
» LedgerAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» Location|[Location_](#schemalocation_)|false|No description
»» _id|integer|false|No description
»» id|string|false|No description
»» name|string|false|No description



<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## POST /cashReceipts

> Code samples

```shell
# You can also use wget
curl -X POST https://app.softledger.com/api/cashReceipts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://app.softledger.com/api/cashReceipts HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/cashReceipts',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/cashReceipts',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://app.softledger.com/api/cashReceipts',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://app.softledger.com/api/cashReceipts', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cashReceipts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Create A Cash Receipt*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
body|body|[CashReceipt_](#schemacashreceipt_)|true|Cash Receipt


> Example responses

```json
{}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created Cash Receipt|[CashReceipt_](#schemacashreceipt_)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## GET /cashReceipts/{id}

> Code samples

```shell
# You can also use wget
curl -X GET https://app.softledger.com/api/cashReceipts/{id} \
  -H 'Accept: application/json'

```

```http
GET https://app.softledger.com/api/cashReceipts/{id} HTTP/1.1
Host: app.softledger.com

Accept: application/json

```

```javascript
var headers = {
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/cashReceipts/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/cashReceipts/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://app.softledger.com/api/cashReceipts/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://app.softledger.com/api/cashReceipts/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cashReceipts/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Get One Cash Receipt*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


> Example responses

```json
{
  "_id": 0,
  "number": "string",
  "amount": 0,
  "unused": 0,
  "description": "string",
  "AgentId": 0,
  "LedgerAccountId": 0,
  "LocationId": 0,
  "Agent": {},
  "LedgerAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "Location": {}
}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|One Cash Receipt|[CashReceipt](#schemacashreceipt)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## PUT /cashReceipts/{id}

> Code samples

```shell
# You can also use wget
curl -X PUT https://app.softledger.com/api/cashReceipts/{id} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PUT https://app.softledger.com/api/cashReceipts/{id} HTTP/1.1
Host: app.softledger.com
Content-Type: application/json
Accept: application/json

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

$.ajax({
  url: 'https://app.softledger.com/api/cashReceipts/{id}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'

};

fetch('https://app.softledger.com/api/cashReceipts/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.put 'https://app.softledger.com/api/cashReceipts/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)
```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.put('https://app.softledger.com/api/cashReceipts/{id}', params={

}, headers = headers)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cashReceipts/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Update Cash Receipt*

> Body parameter

```json
{}
```
### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value
body|body|[CashReceipt_](#schemacashreceipt_)|true|Cash Receipt


> Example responses

```json
{}
```
### Responses

Status|Meaning|Description|Schema
---|---|---|---|
201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Cash Receipt Updated|[CashReceipt_](#schemacashreceipt_)

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

## DELETE /cashReceipts/{id}

> Code samples

```shell
# You can also use wget
curl -X DELETE https://app.softledger.com/api/cashReceipts/{id}

```

```http
DELETE https://app.softledger.com/api/cashReceipts/{id} HTTP/1.1
Host: app.softledger.com


```

```javascript

$.ajax({
  url: 'https://app.softledger.com/api/cashReceipts/{id}',
  method: 'delete',

  success: function(data) {
    console.log(JSON.stringify(data));
  }
})
```

```javascript--nodejs
const request = require('node-fetch');

fetch('https://app.softledger.com/api/cashReceipts/{id}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});
```

```ruby
require 'rest-client'
require 'json'


result = RestClient.delete 'https://app.softledger.com/api/cashReceipts/{id}',
  params: {
  }

p JSON.parse(result)
```

```python
import requests

r = requests.delete('https://app.softledger.com/api/cashReceipts/{id}', params={

)

print r.json()
```

```java
URL obj = new URL("https://app.softledger.com/api/cashReceipts/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());
```

*Delete Cash Receipt*

### Parameters

Parameter|In|Type|Required|Description
---|---|---|---|---|
id|path|integer|true|_id value


### Responses

Status|Meaning|Description|Schema
---|---|---|---|
204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Cash Receipt Deleted|None

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
oauth2 ( Scopes: admin )
</aside>

# Schemas

## Bill_

<a name="schemabill_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
invoiceNumber|string|false|No description
description|string|false|No description
dueDate|string(date)|false|No description
postingDate|string(date)|false|No description
invoiceDate|string(date)|false|No description
currency|string|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
VendorId|integer|false|No description
APAccountId|integer|false|No description



## Bill

<a name="schemabill"></a>

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Vendor": {},
  "APAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "billLineItems": [
    {
      "_id": 0,
      "description": "string",
      "ItemId": 0,
      "CostCenterId": 0,
      "LedgerAccountId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      },
      "LedgerAccount": {
        "_id": 0,
        "number": 0,
        "name": "string"
      },
      "CostCenter": {}
    }
  ]
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
invoiceNumber|string|false|No description
description|string|false|No description
dueDate|string(date)|false|No description
postingDate|string(date)|false|No description
invoiceDate|string(date)|false|No description
currency|string|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
VendorId|integer|false|No description
APAccountId|integer|false|No description
Location|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
ICLocation|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
Vendor|[Vendor_](#schemavendor_)|false|No description
» _id|integer|false|No description
» accNumber|string|false|No description
» name|string|false|No description
» email|string|false|No description
APAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description
billLineItems|[[billLineItem](#schemabilllineitem)]|false|No description
» _id|integer|false|No description
» description|string|false|No description
» ItemId|integer|false|No description
» CostCenterId|integer|false|No description
» LedgerAccountId|integer|false|No description
» Item|[Item](#schemaitem)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» description|string|false|No description
»» InvoiceAccountId|integer|false|No description
»» BillAccountId|integer|false|No description
»» InventoryAccountId|integer|false|No description
»» InvoiceAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»» _id|integer|false|No description
»»» number|integer|false|No description
»»» name|string|false|No description
»» BillAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»» _id|integer|false|No description
»»» number|integer|false|No description
»»» name|string|false|No description
»» InventoryAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»» _id|integer|false|No description
»»» number|integer|false|No description
»»» name|string|false|No description
» LedgerAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» CostCenter|[CostCenter_](#schemacostcenter_)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» id|string|false|No description



## billLineItem_

<a name="schemabilllineitem_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
description|string|false|No description
ItemId|integer|false|No description
CostCenterId|integer|false|No description
LedgerAccountId|integer|false|No description



## billLineItem

<a name="schemabilllineitem"></a>

```json
{
  "_id": 0,
  "description": "string",
  "ItemId": 0,
  "CostCenterId": 0,
  "LedgerAccountId": 0,
  "Item": {
    "_id": 0,
    "name": "string",
    "description": "string",
    "InvoiceAccountId": 0,
    "BillAccountId": 0,
    "InventoryAccountId": 0,
    "InvoiceAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "BillAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "InventoryAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    }
  },
  "LedgerAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "CostCenter": {}
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
description|string|false|No description
ItemId|integer|false|No description
CostCenterId|integer|false|No description
LedgerAccountId|integer|false|No description
Item|[Item](#schemaitem)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» description|string|false|No description
» InvoiceAccountId|integer|false|No description
» BillAccountId|integer|false|No description
» InventoryAccountId|integer|false|No description
» InvoiceAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» BillAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» InventoryAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
LedgerAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description
CostCenter|[CostCenter_](#schemacostcenter_)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» id|string|false|No description



## Invoice_

<a name="schemainvoice_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
number|string|false|No description
status|string|false|No description
invoiceDate|string(date)|false|No description
postedDate|string(date)|false|No description
amount|number|false|No description
amountPayable|number|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
AgentId|integer|false|No description
ARAccountId|integer|false|No description



## Invoice

<a name="schemainvoice"></a>

```json
{
  "_id": 0,
  "invoiceNumber": "string",
  "description": "string",
  "dueDate": "2017-10-02",
  "postingDate": "2017-10-02",
  "invoiceDate": "2017-10-02",
  "currency": "string",
  "LocationId": 0,
  "ICLocationId": 0,
  "VendorId": 0,
  "APAccountId": 0,
  "Location": {},
  "ICLocation": {},
  "Agent": {},
  "ARAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InvoiceLineItems": [
    {
      "_id": 0,
      "description": "string",
      "unitAmount": 0,
      "quantity": 0,
      "ItemId": 0,
      "Item": {
        "_id": 0,
        "name": "string",
        "description": "string",
        "InvoiceAccountId": 0,
        "BillAccountId": 0,
        "InventoryAccountId": 0,
        "InvoiceAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "BillAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        },
        "InventoryAccount": {
          "_id": 0,
          "number": 0,
          "name": "string"
        }
      }
    }
  ]
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
invoiceNumber|string|false|No description
description|string|false|No description
dueDate|string(date)|false|No description
postingDate|string(date)|false|No description
invoiceDate|string(date)|false|No description
currency|string|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
VendorId|integer|false|No description
APAccountId|integer|false|No description
Location|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
ICLocation|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
Agent|[Customer_](#schemacustomer_)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» email|string|false|No description
» website|string|false|No description
ARAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description
InvoiceLineItems|[[InvoiceLineItem](#schemainvoicelineitem)]|false|No description
» _id|integer|false|No description
» description|string|false|No description
» unitAmount|number|false|No description
» quantity|number|false|No description
» ItemId|integer|false|No description
» Item|[Item](#schemaitem)|false|No description
»» _id|integer|false|No description
»» name|string|false|No description
»» description|string|false|No description
»» InvoiceAccountId|integer|false|No description
»» BillAccountId|integer|false|No description
»» InventoryAccountId|integer|false|No description
»» InvoiceAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»» _id|integer|false|No description
»»» number|integer|false|No description
»»» name|string|false|No description
»» BillAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»» _id|integer|false|No description
»»» number|integer|false|No description
»»» name|string|false|No description
»» InventoryAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»»» _id|integer|false|No description
»»» number|integer|false|No description
»»» name|string|false|No description



## InvoiceLineItem_

<a name="schemainvoicelineitem_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
description|string|false|No description
unitAmount|number|false|No description
quantity|number|false|No description
ItemId|integer|false|No description



## InvoiceLineItem

<a name="schemainvoicelineitem"></a>

```json
{
  "_id": 0,
  "description": "string",
  "unitAmount": 0,
  "quantity": 0,
  "ItemId": 0,
  "Item": {
    "_id": 0,
    "name": "string",
    "description": "string",
    "InvoiceAccountId": 0,
    "BillAccountId": 0,
    "InventoryAccountId": 0,
    "InvoiceAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "BillAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    },
    "InventoryAccount": {
      "_id": 0,
      "number": 0,
      "name": "string"
    }
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
description|string|false|No description
unitAmount|number|false|No description
quantity|number|false|No description
ItemId|integer|false|No description
Item|[Item](#schemaitem)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» description|string|false|No description
» InvoiceAccountId|integer|false|No description
» BillAccountId|integer|false|No description
» InventoryAccountId|integer|false|No description
» InvoiceAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» BillAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description
» InventoryAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
»» _id|integer|false|No description
»» number|integer|false|No description
»» name|string|false|No description



## CashReceipt_

<a name="schemacashreceipt_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
number|string|false|No description
amount|number|false|No description
unused|number|false|No description
description|string|false|No description
AgentId|integer|false|No description
LedgerAccountId|integer|false|No description
LocationId|integer|false|No description



## CashReceipt

<a name="schemacashreceipt"></a>

```json
{
  "_id": 0,
  "number": "string",
  "amount": 0,
  "unused": 0,
  "description": "string",
  "AgentId": 0,
  "LedgerAccountId": 0,
  "LocationId": 0,
  "Agent": {},
  "LedgerAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "Location": {}
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
number|string|false|No description
amount|number|false|No description
unused|number|false|No description
description|string|false|No description
AgentId|integer|false|No description
LedgerAccountId|integer|false|No description
LocationId|integer|false|No description
Agent|[Customer_](#schemacustomer_)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» email|string|false|No description
» website|string|false|No description
LedgerAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description
Location|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description



## Item_

<a name="schemaitem_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
name|string|false|No description
description|string|false|No description
InvoiceAccountId|integer|false|No description
BillAccountId|integer|false|No description
InventoryAccountId|integer|false|No description



## Item

<a name="schemaitem"></a>

```json
{
  "_id": 0,
  "name": "string",
  "description": "string",
  "InvoiceAccountId": 0,
  "BillAccountId": 0,
  "InventoryAccountId": 0,
  "InvoiceAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "BillAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "InventoryAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
name|string|false|No description
description|string|false|No description
InvoiceAccountId|integer|false|No description
BillAccountId|integer|false|No description
InventoryAccountId|integer|false|No description
InvoiceAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description
BillAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description
InventoryAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description



## Journal

<a name="schemajournal"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
entryType|string|false|No description
sourceLedger|string|false|No description
reference|string|false|No description


#### Enumerated Values

|Property|Value|
|---|---|
entryType|standard|
entryType|reversing|
sourceLedger|Financial|
sourceLedger|AP|
sourceLedger|AR|


## Transaction_

<a name="schematransaction_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
transactionDate|string(date)|false|No description
postedDate|string(date)|false|No description
debit|number|false|No description
credit|number|false|No description
CostCenterId|integer|false|No description
LedgerAccountId|integer|false|No description
ProductId|integer|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
InvoiceId|integer|false|No description
BillId|integer|false|No description
AgentId|integer|false|No description
VendorId|integer|false|No description
CashReceiptId|integer|false|No description



## Transaction

<a name="schematransaction"></a>

```json
{
  "transactionDate": "2017-10-02",
  "postedDate": "2017-10-02",
  "debit": 0,
  "credit": 0,
  "CostCenterId": 0,
  "LedgerAccountId": 0,
  "ProductId": 0,
  "LocationId": 0,
  "ICLocationId": 0,
  "InvoiceId": 0,
  "BillId": 0,
  "AgentId": 0,
  "VendorId": 0,
  "CashReceiptId": 0,
  "CostCenter": {},
  "LedgerAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "Location": {},
  "ICLocation": {},
  "Invoice": {},
  "Bill": {},
  "Agent": {},
  "Vendor": {},
  "CashReceipt": {}
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
transactionDate|string(date)|false|No description
postedDate|string(date)|false|No description
debit|number|false|No description
credit|number|false|No description
CostCenterId|integer|false|No description
LedgerAccountId|integer|false|No description
ProductId|integer|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
InvoiceId|integer|false|No description
BillId|integer|false|No description
AgentId|integer|false|No description
VendorId|integer|false|No description
CashReceiptId|integer|false|No description
CostCenter|[CostCenter_](#schemacostcenter_)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» id|string|false|No description
LedgerAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description
Location|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
ICLocation|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
Invoice|[Invoice_](#schemainvoice_)|false|No description
» _id|integer|false|No description
» number|string|false|No description
» status|string|false|No description
» invoiceDate|string(date)|false|No description
» postedDate|string(date)|false|No description
» amount|number|false|No description
» amountPayable|number|false|No description
» LocationId|integer|false|No description
» ICLocationId|integer|false|No description
» AgentId|integer|false|No description
» ARAccountId|integer|false|No description
Bill|[Bill_](#schemabill_)|false|No description
» _id|integer|false|No description
» invoiceNumber|string|false|No description
» description|string|false|No description
» dueDate|string(date)|false|No description
» postingDate|string(date)|false|No description
» invoiceDate|string(date)|false|No description
» currency|string|false|No description
» LocationId|integer|false|No description
» ICLocationId|integer|false|No description
» VendorId|integer|false|No description
» APAccountId|integer|false|No description
Agent|[Customer_](#schemacustomer_)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» email|string|false|No description
» website|string|false|No description
Vendor|[Vendor_](#schemavendor_)|false|No description
» _id|integer|false|No description
» accNumber|string|false|No description
» name|string|false|No description
» email|string|false|No description
CashReceipt|[CashReceipt_](#schemacashreceipt_)|false|No description
» _id|integer|false|No description
» number|string|false|No description
» amount|number|false|No description
» unused|number|false|No description
» description|string|false|No description
» AgentId|integer|false|No description
» LedgerAccountId|integer|false|No description
» LocationId|integer|false|No description



## LedgerAccount_

<a name="schemaledgeraccount_"></a>

```json
{
  "_id": 0,
  "number": 0,
  "name": "string"
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
number|integer|false|No description
name|string|false|No description



## LedgerAccount

<a name="schemaledgeraccount"></a>

```json
{
  "_id": 0,
  "number": 0,
  "name": "string",
  "naturalBalance": "string",
  "type": "string",
  "description": "string",
  "includeLocationChildren": true,
  "LocationId": 0
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
number|integer|false|No description
name|string|false|No description
naturalBalance|string|false|No description
type|string|false|No description
description|string|false|No description
includeLocationChildren|boolean|false|No description
LocationId|integer|false|No description



## Location_

<a name="schemalocation_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
id|string|false|No description
name|string|false|No description



## Location

<a name="schemalocation"></a>

```json
{
  "_id": 0,
  "id": "string",
  "name": "string",
  "currency": "string",
  "description": "string",
  "parent_id": 0
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
id|string|false|No description
name|string|false|No description
currency|string|false|No description
description|string|false|No description
parent_id|integer|false|No description



## Vendor_

<a name="schemavendor_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
accNumber|string|false|No description
name|string|false|No description
email|string|false|No description



## Vendor

<a name="schemavendor"></a>

```json
{
  "_id": 0,
  "accNumber": "string",
  "name": "string",
  "email": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
accNumber|string|false|No description
name|string|false|No description
email|string|false|No description
Addresses|[[Address](#schemaaddress)]|false|No description
» _id|integer|false|No description
» label|string|false|No description
» line1|string|false|No description
» line2|string|false|No description
» city|string|false|No description
» state|string|false|No description
» country|string|false|No description
» isDefault|boolean|false|No description
Contacts|[[Contact](#schemacontact)]|false|No description
» _id|integer|false|No description
» name|string|false|No description
» email|string|false|No description
» phone|string|false|No description
» isPrimary|boolean|false|No description



## Customer_

<a name="schemacustomer_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
name|string|false|No description
email|string|false|No description
website|string|false|No description



## Customer

<a name="schemacustomer"></a>

```json
{
  "_id": 0,
  "name": "string",
  "email": "string",
  "website": "string",
  "Addresses": [
    {}
  ],
  "Contacts": [
    {}
  ]
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
name|string|false|No description
email|string|false|No description
website|string|false|No description
Addresses|[[Address](#schemaaddress)]|false|No description
» _id|integer|false|No description
» label|string|false|No description
» line1|string|false|No description
» line2|string|false|No description
» city|string|false|No description
» state|string|false|No description
» country|string|false|No description
» isDefault|boolean|false|No description
Contacts|[[Contact](#schemacontact)]|false|No description
» _id|integer|false|No description
» name|string|false|No description
» email|string|false|No description
» phone|string|false|No description
» isPrimary|boolean|false|No description



## Address

<a name="schemaaddress"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
label|string|false|No description
line1|string|false|No description
line2|string|false|No description
city|string|false|No description
state|string|false|No description
country|string|false|No description
isDefault|boolean|false|No description



## Contact

<a name="schemacontact"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
name|string|false|No description
email|string|false|No description
phone|string|false|No description
isPrimary|boolean|false|No description



## CostCenter_

<a name="schemacostcenter_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
name|string|false|No description
id|string|false|No description



## CostCenter

<a name="schemacostcenter"></a>

```json
{
  "_id": 0,
  "name": "string",
  "id": "string",
  "description": "string"
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
_id|integer|false|No description
name|string|false|No description
id|string|false|No description
description|string|false|No description



## PurchaseOrder_

<a name="schemapurchaseorder_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
number|string|false|No description
description|string|false|No description
issueDate|string(date)|false|No description
deliveryDate|string(date)|false|No description
status|string|false|No description
amount|number|false|No description
currency|string|false|No description
notes|string|false|No description
VendorId|integer|false|No description
WarehouseId|integer|false|No description
ShippingAddressId|integer|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
InventoryReceivingAccountId|integer|false|No description


#### Enumerated Values

|Property|Value|
|---|---|
status|created|
status|issued|
status|partiallyfulfilled|
status|fulfilled|


## PurchaseOrder

<a name="schemapurchaseorder"></a>

```json
{
  "number": "string",
  "description": "string",
  "issueDate": "2017-10-02",
  "deliveryDate": "2017-10-02",
  "status": "created",
  "amount": 0,
  "currency": "USD",
  "notes": "string",
  "VendorId": 0,
  "WarehouseId": 0,
  "ShippingAddressId": 0,
  "LocationId": 0,
  "ICLocationId": 0,
  "InventoryReceivingAccountId": 0,
  "Vendor": {},
  "Warehouse": {},
  "ShippingAddress": {},
  "Location": {},
  "ICLocation": {},
  "InventoryReceivingAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  }
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
number|string|false|No description
description|string|false|No description
issueDate|string(date)|false|No description
deliveryDate|string(date)|false|No description
status|string|false|No description
amount|number|false|No description
currency|string|false|No description
notes|string|false|No description
VendorId|integer|false|No description
WarehouseId|integer|false|No description
ShippingAddressId|integer|false|No description
LocationId|integer|false|No description
ICLocationId|integer|false|No description
InventoryReceivingAccountId|integer|false|No description
Vendor|[Vendor_](#schemavendor_)|false|No description
» _id|integer|false|No description
» accNumber|string|false|No description
» name|string|false|No description
» email|string|false|No description
Warehouse|[Warehouse_](#schemawarehouse_)|false|No description
» name|string|false|No description
» description|string|false|No description
ShippingAddress|[Address](#schemaaddress)|false|No description
» _id|integer|false|No description
» label|string|false|No description
» line1|string|false|No description
» line2|string|false|No description
» city|string|false|No description
» state|string|false|No description
» country|string|false|No description
» isDefault|boolean|false|No description
Location|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
ICLocation|[Location_](#schemalocation_)|false|No description
» _id|integer|false|No description
» id|string|false|No description
» name|string|false|No description
InventoryReceivingAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description


#### Enumerated Values

|Property|Value|
|---|---|
status|created|
status|issued|
status|partiallyfulfilled|
status|fulfilled|


## POLineItem_

<a name="schemapolineitem_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
description|string|false|No description
amount|number|false|No description
quantity|integer|false|No description
quantityReceived|integer|false|No description
ItemId|integer|false|No description
LedgerAccountId|integer|false|No description
CostCenterId|integer|false|No description



## POLineItem

<a name="schemapolineitem"></a>

```json
{
  "description": "string",
  "amount": 0,
  "quantity": 0,
  "quantityReceived": 0,
  "ItemId": 0,
  "LedgerAccountId": 0,
  "CostCenterId": 0,
  "Item": {},
  "LedgerAccount": {
    "_id": 0,
    "number": 0,
    "name": "string"
  },
  "CostCenter": {}
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
description|string|false|No description
amount|number|false|No description
quantity|integer|false|No description
quantityReceived|integer|false|No description
ItemId|integer|false|No description
LedgerAccountId|integer|false|No description
CostCenterId|integer|false|No description
Item|[Item_](#schemaitem_)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» description|string|false|No description
» InvoiceAccountId|integer|false|No description
» BillAccountId|integer|false|No description
» InventoryAccountId|integer|false|No description
LedgerAccount|[LedgerAccount_](#schemaledgeraccount_)|false|No description
» _id|integer|false|No description
» number|integer|false|No description
» name|string|false|No description
CostCenter|[CostCenter_](#schemacostcenter_)|false|No description
» _id|integer|false|No description
» name|string|false|No description
» id|string|false|No description



## Warehouse_

<a name="schemawarehouse_"></a>

```json
{} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
name|string|false|No description
description|string|false|No description



## Warehouse

<a name="schemawarehouse"></a>

```json
{
  "name": "string",
  "description": "string",
  "Address": {}
} 
```

### Properties

Name|Type|Required|Description
---|---|---|---|
name|string|false|No description
description|string|false|No description
Address|[Address](#schemaaddress)|false|No description
» _id|integer|false|No description
» label|string|false|No description
» line1|string|false|No description
» line2|string|false|No description
» city|string|false|No description
» state|string|false|No description
» country|string|false|No description
» isDefault|boolean|false|No description





