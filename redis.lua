local redis = require "resty.redis"
local red = redis.new()
local ok, err = red:connect("127.0.0.1", 6379)
local uri = ngx.var.uri
local geturl = red:get(uri)
res = ngx.location.capture(geturl)
ngx.say(res.body)
return geturl
