<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/d9289d9d-60a8-4351-b72e-b456a8af6cdb" />


# Chatgpt was used for the documentation. Some stuff may be wrong
---

# Getting Started

```lua
local Window = Library:Window({
    Name = "juanita"
})
```

---

# Window

Creates the main UI container.

## Creation

```lua
local Window = Library:Window({
    Name = "Main Window"
})
```

---

## Parameters

| Parameter | Type     | Description  |
| --------- | -------- | ------------ |
| `Name`    | `string` | Window title |

---

## Methods

### `Window:SetOpen(bool)`

Opens or closes the window.

```lua
Window:SetOpen(true)
```

---

### `Window:Center()`

Centers the window on screen.

```lua
Window:Center()
```

---

### `Window:Page(params)`

Creates a page.

```lua
local Page = Window:Page({
    Name = "Combat"
})
```

---

# Page

Creates a tab/page.

## Parameters

| Parameter | Type     |
| --------- | -------- |
| `Name`    | `string` |

---

## Methods

### `Page:Turn()`

Switches to the page.

```lua
Page:Turn()
```

---

### `Page:Section(params)`

Creates a section.

```lua
local Section = Page:Section({
    Name = "Main",
    Side = 1
})
```

---

# Section

Container for UI elements.

## Parameters

| Parameter | Type     |
| --------- | -------- |
| `Name`    | `string` |
| `Side`    | `number` |

### Side Values

| Value | Description |
| ----- | ----------- |
| `1`   | Left side   |
| `2`   | Right side  |

---

## Methods

### `Section:SetText(text)`

Changes section title.

```lua
Section:SetText("Settings")
```

---

### Element Constructors

| Method               |
| -------------------- |
| `Section:Toggle()`   |
| `Section:Button()`   |
| `Section:Slider()`   |
| `Section:Dropdown()` |
| `Section:Label()`    |
| `Section:Textbox()`  |

---

# Toggle

Boolean toggle element.

## Creation

```lua
local Toggle = Section:Toggle({
    Name = "Auto Farm",
    Flag = "autofarm",
    Default = false,
    Callback = function(value)

    end
})
```

---

## Parameters

| Parameter  | Type       |
| ---------- | ---------- |
| `Name`     | `string`   |
| `Flag`     | `string`   |
| `Default`  | `boolean`  |
| `Callback` | `function` |
| `Parent`   | `Instance` |

---

## Methods

### `Toggle:Set(bool)`

```lua
Toggle:Set(true)
```

---

### `Toggle:SetVisibility(bool)`

```lua
Toggle:SetVisibility(false)
```

---

### `Toggle:SetText(text)`

```lua
Toggle:SetText("Enabled")
```

---

### `Toggle:Colorpicker(params)`

Attaches a colorpicker.

```lua
local Picker = Toggle:Colorpicker({
    Flag = "accent",
    Default = Color3.fromRGB(255,0,0),
    Alpha = 0,
    Callback = function(color, alpha)

    end
})
```

---

### `Toggle:Keybind(params)`

Attaches a keybind.

```lua
local Bind = Toggle:Keybind({
    Flag = "aimbot_bind",
    Default = Enum.KeyCode.E,
    Mode = "Toggle",
    Callback = function(state)

    end
})
```

---

# Button

Clickable button.

## Creation

```lua
local Button = Section:Button({
    Name = "Inject",
    Callback = function()

    end
})
```

---

## Parameters

| Parameter  | Type       |
| ---------- | ---------- |
| `Name`     | `string`   |
| `Callback` | `function` |
| `Parent`   | `Instance` |

---

## Methods

### `Button:Press()`

Triggers callback manually.

```lua
Button:Press()
```

---

### `Button:SetVisibility(bool)`

```lua
Button:SetVisibility(true)
```

---

### `Button:SetText(text)`

```lua
Button:SetText("Execute")
```

---

# Slider

Number slider element.

## Creation

```lua
local Slider = Section:Slider({
    Name = "Walkspeed",
    Flag = "walkspeed",
    Min = 0,
    Max = 100,
    Default = 16,
    Decimals = 1,
    Suffix = "%",
    Callback = function(value)

    end
})
```

---

## Parameters

| Parameter  | Type       |
| ---------- | ---------- |
| `Name`     | `string`   |
| `Flag`     | `string`   |
| `Default`  | `number`   |
| `Min`      | `number`   |
| `Max`      | `number`   |
| `Decimals` | `number`   |
| `Suffix`   | `string`   |
| `Callback` | `function` |
| `Parent`   | `Instance` |

---

## Methods

### `Slider:Set(value)`

```lua
Slider:Set(50)
```

---

### `Slider:SetVisibility(bool)`

```lua
Slider:SetVisibility(false)
```

---

### `Slider:SetText(text)`

```lua
Slider:SetText("Speed")
```

---

# Dropdown

Selection element.

## Creation

```lua
local Dropdown = Section:Dropdown({
    Name = "Target",
    Flag = "target",
    Items = {"Head", "Torso"},
    Default = "Head",
    Multi = false,
    Callback = function(value)

    end
})
```

---

## Parameters

| Parameter  | Type           |
| ---------- | -------------- |
| `Name`     | `string`       |
| `Items`    | `table`        |
| `Flag`     | `string`       |
| `Default`  | `string/table` |
| `Multi`    | `boolean`      |
| `Callback` | `function`     |
| `Parent`   | `Instance`     |

---

## Methods

### `Dropdown:Set(value)`

```lua
Dropdown:Set("Head")
```

Multi-dropdown:

```lua
Dropdown:Set({"Head", "Torso"})
```

---

### `Dropdown:Add(option)`

```lua
Dropdown:Add("Random")
```

---

### `Dropdown:SetOpen(bool)`

```lua
Dropdown:SetOpen(true)
```

---

### `Dropdown:SetVisibility(bool)`

```lua
Dropdown:SetVisibility(true)
```

---

### `Dropdown:SetText(text)`

```lua
Dropdown:SetText("Hit Part")
```

---

# Label

Static text label.

## Creation

```lua
local Label = Section:Label({
    Name = "Status: Idle"
})
```

---

## Methods

### `Label:SetVisibility(bool)`

```lua
Label:SetVisibility(true)
```

---

### `Label:SetText(text)`

```lua
Label:SetText("Injected")
```

---

### `Label:Colorpicker(params)`

Adds a colorpicker.

---

# Textbox

Text input element.

## Creation

```lua
local Textbox = Section:Textbox({
    Name = "Username",
    Flag = "username",
    Placeholder = "enter text",
    Default = "",
    Callback = function(text)

    end
})
```

---

## Parameters

| Parameter     | Type       |
| ------------- | ---------- |
| `Name`        | `string`   |
| `Flag`        | `string`   |
| `Placeholder` | `string`   |
| `Default`     | `string`   |
| `Callback`    | `function` |

---

## Methods

### `Textbox:Set(text)`

```lua
Textbox:Set("player")
```

---

### `Textbox:SetVisibility(bool)`

```lua
Textbox:SetVisibility(false)
```

---

### `Textbox:SetText(text)`

```lua
Textbox:SetText("Nickname")
```

---

# Colorpicker

Advanced HSV colorpicker.

## Methods

### `Colorpicker:Set(color, alpha)`

Supports:

* `Color3`
* Hex strings
* RGB tables

```lua
Colorpicker:Set(Color3.fromRGB(255,0,0), 0.5)
```

---

### `Colorpicker:SetOpen(bool)`

```lua
Colorpicker:SetOpen(true)
```

---

### `Colorpicker:SetVisibility(bool)`

```lua
Colorpicker:SetVisibility(true)
```

---

### `Colorpicker:Update(isFromAlpha)`

Updates internal picker state.

---

### `Colorpicker:SlidePalette(input)`

Handles saturation/value dragging.

---

### `Colorpicker:SlideHue(input)`

Handles hue dragging.

---

### `Colorpicker:SlideAlpha(input)`

Handles transparency dragging.

---

# Keybind

Keyboard/mouse bind element.

## Parameters

| Parameter  | Type           |
| ---------- | -------------- |
| `Flag`     | `string`       |
| `Default`  | `Enum.KeyCode` |
| `Mode`     | `string`       |
| `Callback` | `function`     |

---

## Modes

| Mode     |
| -------- |
| `Toggle` |
| `Hold`   |
| `Always` |

---

## Methods

### `Keybind:Set(key)`

```lua
Keybind:Set(Enum.KeyCode.E)
```

Or:

```lua
Keybind:Set({
    Key = Enum.KeyCode.E,
    Mode = "Toggle"
})
```

---

### `Keybind:SetOpen(bool)`

```lua
Keybind:SetOpen(true)
```

---

### `Keybind:SetMode()`

Updates mode state.

---

### `Keybind:Press(bool)`

Triggers bind manually.

---

# Watermark

Top-right watermark UI.

## Creation

```lua
local Watermark = Library:Watermark({
    Name = "juanita"
})
```

---

## Parameters

| Parameter | Type     |
| --------- | -------- |
| `Name`    | `string` |

---

## Methods

### `Watermark:SetText(text)`

```lua
Watermark:SetText("juanita | fps: 240")
```

---

### `Watermark:SetVisibility(bool)`

```lua
Watermark:SetVisibility(true)
```

---

# Notifications

Popup notification system.

## Creation

```lua
Library:Notification("Succes", 5, Library.Theme.Accent)
```

---

## Parameters

| Parameter     | Type     |
| ------------- | -------- |
| `Name`       | `string` |
| `Duration` | `number` |
| `Color`        | `Color3` |

---

# Keybind List

Displays active keybinds.

## Creation

```lua
local KeyList = Library:KeybindList()
```
