i've used ai to generate these docs so don't flame me.
I'm not going to bother writing docs for this

# Window

Creates the main UI.

## Creation

```lua
local Window = Library:Window({
    Name = "Window Name"
})
```

## Parameters

| Parameter | Type     |
| --------- | -------- |
| `Name`    | `string` |

---

## Methods

### `Window:SetOpen(bool)`

Opens or closes the window.

```lua
Window:SetOpen(true)
```

| Parameter | Type      |
| --------- | --------- |
| `bool`    | `boolean` |

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

Pages are tabs inside the window if you didn't know.
( I just like to name them pages instead of tabs)

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

Creates a section inside the page.

```lua
local Section = Page:Section({
    Name = "Main",
    Side = 1
})
```

---

# Section

Sections contain UI elements.

## Parameters

| Parameter | Type     | Description             
| --------- | -------- | ----------------------- |
| `Name`    | `string` |                         |
| `Side`    | `number` | `1` = left, `2` = right |

---

## Methods

### `Section:SetText(text)`

Changes section title.

```lua
Section:SetText("New Name")
```

| Parameter | Type     |
| --------- | -------- |
| `text`    | `string` |

---

### `Section:Toggle(params)`

Creates a toggle.

---

### `Section:Button(params)`

Creates a button.

---

### `Section:Slider(params)`

Creates a slider.

---

### `Section:Dropdown(params)`

Creates a dropdown.

---

### `Section:Label(params)`

Creates a label.

---

# Toggle

Boolean switch element.

## Creation

```lua
local Toggle = Section:Toggle({
    Name = "Enabled",
    Flag = "enabled_toggle",
    Default = false,
    Callback = function(value)
        print(value)
    end
})
```

---

## Parameters

| Parameter  | Type       | Description            |
| ---------- | ---------- | ---------------------- |
| `Name`     | `string`   |                        |
| `Flag`     | `string`   |                        |
| `Default`  | `boolean`  | Default state          |
| `Callback` | `function` | Called when changed    |
| `Parent`   | `Instance` | Optional custom parent |

---

## Methods

### `Toggle:Set(bool)`

Sets toggle state.

```lua
Toggle:Set(true)
```

---

### `Toggle:SetVisibility(bool)`

Shows or hides toggle.

```lua
Toggle:SetVisibility(false)
```

---

### `Toggle:SetText(text)`

Changes toggle text.

```lua
Toggle:SetText("Godmode")
```

---

### `Toggle:Colorpicker(params)`

Adds a colorpicker attached to the toggle.

```lua
local Picker = Toggle:Colorpicker({
    Flag = "accent",
    Default = Color3.fromRGB(255, 0, 0),
    Alpha = 0,
    Callback = function(color, alpha)

    end
})
```

## Colorpicker Parameters

| Parameter  | Type       |
| ---------- | ---------- |
| `Flag`     | `string`   |
| `Default`  | `Color3`   |
| `Alpha`    | `number`   |
| `Callback` | `function` |

---

### `Toggle:Keybind(params)`

Adds a keybind attached to the toggle.

```lua
local Keybind = Toggle:Keybind({
    Flag = "aimbot_bind",
    Default = Enum.KeyCode.E,
    Mode = "Toggle",
    Callback = function(state)

    end
})
```

## Keybind Parameters

| Parameter  | Type           |
| ---------- | -------------- |
| `Flag`     | `string`       |
| `Default`  | `Enum.KeyCode` |
| `Mode`     | `string`       |
| `Callback` | `function`     |

---

# Button

Clickable button element.

## Creation

```lua
local Button = Section:Button({
    Name = "Execute",
    Callback = function()
        print("Clicked")
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

Triggers the callback manually.

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
Button:SetText("Launch")
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

Sets slider value.

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

Selectable dropdown menu.

## Creation

```lua
local Dropdown = Section:Dropdown({
    Name = "Target",
    Flag = "target",
    Items = {"Head", "Torso", "Random"},
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

Sets selected option.

```lua
Dropdown:Set("Head")
```

For multi dropdowns:

```lua
Dropdown:Set({"Head", "Torso"})
```

---

### `Dropdown:Add(option)`

Adds a new option.

```lua
Dropdown:Add("Legs")
```

---

### `Dropdown:SetOpen(bool)`

Opens/closes dropdown.

```lua
Dropdown:SetOpen(true)
```

---

### `Dropdown:SetVisibility(bool)`

Shows/hides dropdown.

---

### `Dropdown:SetText(text)`

Changes dropdown text.

---

# Label

Text label element.

## Creation

```lua
local Label = Section:Label({
    Name = "Status: Idle"
})
```

---

## Parameters

| Parameter | Type       |
| --------- | ---------- |
| `Name`    | `string`   |
| `Parent`  | `Instance` |

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

Adds a colorpicker to the label.

---

# Colorpicker

Advanced color selection element.

## Methods

### `Colorpicker:Set(color, alpha)`

Sets the selected color.

```lua
Colorpicker:Set(Color3.fromRGB(255, 0, 0), 0.5)
```

Supports:

```lua
Color3
Hex string
RGB table
```

---

### `Colorpicker:SetOpen(bool)`

Opens/closes the picker.

```lua
Colorpicker:SetOpen(true)
```

---

### `Colorpicker:SetVisibility(bool)`

Shows/hides picker button.

---

### `Colorpicker:Update(isFromAlpha)`

Updates picker internals.

---

### `Colorpicker:SlidePalette(input)`

Palette drag logic.

---

### `Colorpicker:SlideHue(input)`

Hue slider logic.

---

### `Colorpicker:SlideAlpha(input)`

Transparency slider logic.

---

# Keybind

Keyboard/mouse binding element.

## Methods

### `Keybind:Set(key)`

Sets keybind key or mode.

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

Opens/closes bind menu.

---

### `Keybind:SetMode()`

Updates bind mode.

---

### `Keybind:Press(bool)`

Handles bind activation state.
