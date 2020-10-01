checkpoint = {
  server = "<>"
  username = "admin"
  password = ""
  context = "web_api"
  timeout = 120
}

services = { 
  "api_01" : { 
    address = "172.17.0.1"
    id      = "api_01" 
    name    = "apisvc_01" 
    port    = 80 
    meta = {} 
    tags            = [] 
    namespace       = "default" 
    status          = "passing" 
	  node_id         =  "node_a"	 
    node            = "foobar" 
    node_address    = "192.168.10.10" 
    node_datacenter = "dc1" 
    node_tagged_addresses  = { 
      lan = "192.168.10.10" 
      wan = "10.0.10.10" 
    } 
    node_meta = {} 
  },
  "api_02" : { 
    address = "172.17.0.2" 
    id      = "api_02" 
    name    = "apisvc_01" 
    port    = 80 
    meta = {} 
    tags            = [] 
    namespace       = "default" 
    status          = "passing" 
	  node_id         =  "node_b"	 
    node            = "foobar" 
    node_address    = "192.168.10.20" 
    node_datacenter = "dc1" 
    node_tagged_addresses  = { 
      lan = "192.168.10.20" 
      wan = "10.0.10.10" 
    } 
    node_meta = {} 
  },
	"web_01" : {	 
	  address = "172.17.0.3"	 
    id      = "web_01" 
	  name    = "websvc_01"	 
    port    = 5000 
    meta = { 
    foobar_meta_value = "baz" 
    } 
    tags            = ["tacos"]
    namespace       =  "default"
    status          = "passing"
    node_id         =  "node_a"	 
	  node            = "foobar"	 
    node_address    = "192.168.10.10" 
    node_datacenter = "dc1" 
    node_tagged_addresses = { 
      lan = "192.168.10.10" 
      wan = "10.0.10.10" 
    } 
    node_meta = { 
      somekey = "somevalue" 
    }, 
  }, 
  "web_02" : { 
    address = "172.17.0.4" 
    id      = "web_02" 
    name    = "websvc_01" 
    port    = 5000 
    meta = { 
      foobar_meta_value = "baz" 
    } 
    tags            = ["burrito"] 
    namespace       = "default"
    status          = "passing"
    node_id         = "node_b" 
    node            = "foobarbaz" 
    node_address    = "192.168.10.11" 
    node_datacenter = "dc1" 
    node_tagged_addresses = { 
      lan = "192.168.10.11" 
      wan = "10.0.10.10" 
    } 
    node_meta = {} 
  } 
}