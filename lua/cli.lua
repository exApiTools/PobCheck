package.path = package.path .. ";lua/?.lua;lua/?/init.lua"
local dkjson = require "dkjson"
dofile(arg[0].."\\..\\HeadlessWrapper.lua")
dofile(arg[0].."\\..\\statDump.lua")
newBuild()

function newItem(itemText)
    if build.targetVersionData then -- handle code format changes in 1.4.170.17
        return new("Item", build.targetVersion, itemText)
    else
        return new("Item", itemText)
    end
end

function testItemForDisplayNew(itemText)
    local item = newItem(itemText)

    if item.base then
        item:NormaliseQuality() -- Set to top quality
        item:BuildModList()
        local statDiff = getStatChange(item)

        return statDiff
    end
end

function table_print (tt, indent, done)
  done = done or {}
  indent = indent or 0
  if type(tt) == "table" then
    local sb = {}
    for key, value in pairs (tt) do
      table.insert(sb, string.rep (" ", indent)) -- indent it
      if type (value) == "table" and not done [value] then
        done [value] = true
        table.insert(sb, key .. " = {\n");
        table.insert(sb, table_print (value, indent + 2, done))
        table.insert(sb, string.rep (" ", indent)) -- indent it
        table.insert(sb, "}\n");
      elseif "number" == type(key) then
        table.insert(sb, string.format("\"%s\"\n", tostring(value)))
      else
        table.insert(sb, string.format(
            "%s = \"%s\"\n", tostring (key), tostring(value)))
       end
    end
    return table.concat(sb)
  else
    return tt .. "\n"
  end
end

print("XXX")
dofile(arg[0].."\\..\\cliRunner.lua")
print("YYY")
