
# AI Usage Documentation

This document records how AI was used during project development for prompts, responses, and refinements.

---

## Models and Tools Used
- LLM Models: GPT-4 (OpenAI), Gemini 1.5 Pro, DeepSeek-V3
- Tools/Integrations: Web interface and Gemini Android studio 

## 🤖 AI Tools & Models Used

| Tool / Platform     | Model / Version       | How it was used                                  
|---------------------|------------------------|--------------------------------------------------
| ChatGPT             | GPT-4o                 | Writing code, debugging, writing docs, design ideas
| Gemini              | Gemini 1.5 Pro         | Auto-complete while coding with android studio integration
| DeepSeek            | DeepSeek-V3            | For analyzing and refactoring larger codebases

---

### 🔸 Example Prompt 1

**Prompt:**  
```
i want to create an md file AI_USAGE.md to describe how i used ai when i was working on a project prepare me a template
```

**AI Output Summary:**  
- Provided a markdown template to document AI usage.  
- Included sections: Models used, tools, key prompts, refinements.  
- Prepared for user customization.

**Refinements Made:**  
- User added own chat logs and prompts later.

---

### 🔸 Example Prompt 2

**Prompt:**  
```
i want you to create a flutter widget with the structure of the ui on the image provided, i don't need you to apply styles i just need the structure
```

**AI Output Summary:**  
- Provided a Flutter widget named `TimerCardStructure` showing UI layout using `Column`, `Row`, and `Container`.  
- Focused on structure without styles or colors.  
- Included placeholder widgets like icons and text.

**Refinements Made:**  
- User used the layout as a base for UI development.

---

### 🔸 Example Prompt 3

**Prompt:**  
```
i will give you a color palette image and the exact colors in that image from a figma design for a flutter app. i want you to give me a class called AppColors to represent the palette in code and a light and dark theme defined based on those colors.
```

**AI Output Summary:**  
- Created a Flutter `AppColors` class template with static `Color` fields (primary, secondary, accent, background, surface, error, text colors, etc.).  
- Included placeholders (`Color(0xFF000000)`) for actual hex colors.  
- Defined an `AppTheme` class with static getters for `lightTheme` and `darkTheme` returning `ThemeData` using those colors.

**Refinements Made:**  
- User planned to replace placeholders with real color hex values from their Figma palette.

---


### 🔸 Example Prompt 4

**Prompt:**  
```
in flutter tab bar i want to modifty the indicator width and color
...
now i want to change the divider line color below the indicator
...
```

**AI Output Summary:**  
- Provided detailed Flutter code examples showing how to customize TabBar indicator width and color using `UnderlineTabIndicator`.  
- Explained how to remove the default AppBar shadow and add a custom divider line below the TabBar using a `Container` widget inside a `PreferredSize`.  
- Included full example widget classes and explanations.

**Refinements Made:**  
- User applied this code to customize their app UI.

---

Here are the two suggested additions in Markdown format, ready to be copied into your AI_USAGE.md file:

🔸 Example Prompt 5

**Prompt:**  
```
I need a Bloc implementation in Flutter for creating a timer. The timer should have its own model class, which includes the following fields: project (String), task (String), description (String), isFavorite (bool), dueDate (DateTime). The Bloc should use HydratedBloc to persist the state across app restarts. The timer logic should include functionalities such as start, pause, resume, and stop. Also, it should be able to update created timers.

**AI Output Summary:**  
- Provided a complete Flutter project structure for a single timer application.
- Included a TimerModel class with specified fields and toJson/fromJson methods for HydratedBloc persistence.
- Implemented a TimerBloc with events for Start, Pause, Resume, Stop, and UpdateTimer.
- Designed a basic UI to display and control the single timer.
```

**Refinements Made:**  
- Later inquire about extending the functionality to support multiple timers, leading to further architectural changes.
