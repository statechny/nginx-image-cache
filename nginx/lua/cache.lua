-- nginx/lua/cache.lua

local uri = ngx.var.request_uri
local req_count = ngx.shared.req_count

if not req_count then
    ngx.log(ngx.ERR, "Shared dict 'req_count' not found.")
    return "1"  -- Bypass cache
end

local count = req_count:get(uri) or 0
count = count + 1
req_count:set(uri, count)

if count < 2 then
    return "1"  -- Bypass cache
else
    return "0"  -- Enable cache
end
