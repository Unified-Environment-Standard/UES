# System

The **system** library will be useful to interact with Windows API. The user will be able to access the clipboard, open a new messagebox etc.

---
## messagebox (Aliases: MessageBox, msgbox)

Calls MessageBoxA with two arguments, Text and Caption.

Usage:

```lua
messagebox("Foo", "Bar");
```

Implementation:

```cpp
int messagebox(lua_State* L) {
	const char* Text = lua_tostring(L, 1);
	const char* Caption = lua_tostring(L, 2);
	MessageBoxA(NULL, Text, Caption, NULL);
	return 0;
}
```
Note: It causes a client stack leak in Garry's Mod and crashes the client.

---
