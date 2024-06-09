# Debug

The **debug** library is an extension of the Lua debug library. It allows the programmer to alter the behaviour of closures in a non-invasive manner. Allowing for Test Driven Development to be much easier.

---
## debug.getregistry (Aliases: getregistry, getreg)

returns LUA_REGISTRYINDEX as a table.

Usage:

```lua
for i,v in pairs(getreg()) do
print(v)
end
```

Implementation:

```cpp
int getreg(lua_State* L) {
  pushvalue(L, LUA_REGISTRYINDEX);
  return 1;
}
```

---
