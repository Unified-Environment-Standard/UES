local ENV = getfenv or function()
    return _ENV
end

local function TestFunction(FunctionName)
    if ENV()[FunctionName] then
        print(string.format("✔️ - FOUND - TESTED: %s", FunctionName))
    else
        print(string.format("❌ - NOT FOUND - TESTED: %s", FunctionName))
    end
end

EnvFunctions = {
    "getreg",
    "getregistry",
    "getgenv",
    "messagebox",
    'MessageBox'
}

for i,v in pairs(EnvFunctions) do
    TestFunction(v)
end
