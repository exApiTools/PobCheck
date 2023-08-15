local io = require("io")
local dkjson = require('dkjson')

local function encode(value)
    return json.encode(value)
end

local function respond(response)
    print("---BEGIN RESPONSE---")
    print(response)
end

local function doline(line)
    local data, _, decodeErr = dkjson.decode(line)
    if decodeErr then
        return respond('{"status":"error","error":' .. dkjson.encode(decodeErr) .. '}')
    end
    if not data.code then
        return respond(dkjson.encode({status='error', error='Code is missing from the request line', id=data.id}))
    end
    local fn, err = loadstring('return ' .. data.code, "<input>")
    if not fn then
        msg = {status='error', error='Parse failure:' .. err, id=data.id}
    else
        extArgs = data.args
        local success, fnCallResult = pcall(fn)
        extArgs = nil
        if not success then
            msg = {status='error', error=tostring(fnCallResult), id=data.id}
        else
            if launch.promptMsg then
                msg = {status='error', error=tostring(launch.promptMsg), id=data.id}
            else
                msg = {status='ok', result=fnCallResult, id=data.id}
            end
        end
    end

    local success, strmsg = pcall(dkjson.encode, msg)
    if success then
        return respond(strmsg)
    else
        return respond('{"status":"error","id":'..data.id ..',"error":' .. dkjson.encode(strmsg) .. '}')
    end
end

io.stdout:flush()
while 1 do
    local success, line = pcall(io.stdin.read, io.stdin, "*l")
    if not success then break end
    if line then
        doline(line)
        io.stdout:flush()
    end
end