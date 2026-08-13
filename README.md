# 🥚 EggTimer

An iOS timer app built with Swift and UIKit.

Users can select the desired egg hardness, and the timer starts automatically. When the timer finishes, an alarm sound is played and the screen changes to indicate completion.

---

## 📱 Demo

<p align="center">
  <img src="./Demo/EggTimer.gif" width="300">
</p>

---

## ✨ Features

- 🥚 Select egg hardness: Soft / Medium / Hard
- ⏱ Automatically start a timer by selecting a button
- 📊 Display cooking progress with a progress bar
- 🔔 Play an alarm sound when the timer finishes
- 🔄 Start a new timer by selecting another button
- 📱 Simple and intuitive user interface

---

## 🔧 Tech Stack

- **Language:** Swift
- **Framework:** UIKit
- **IDE:** Xcode
- **Audio:** AVFoundation
- **Timer:** Foundation Timer

---

## ⚙️ How It Works

### 1. Select Egg Hardness

Select Soft, Medium, or Hard to choose the desired cooking time.

### 2. Start the Timer

The timer starts automatically when a button is selected.

`Timer` is used to update the countdown every second.

### 3. Update the Progress Bar

The progress bar is updated based on the elapsed time to visually display the cooking progress.

### 4. Timer Completion

When the selected time has elapsed, the timer stops and the screen changes to `Done!`.

### 5. Play the Alarm

`AVAudioPlayer` from `AVFoundation` is used to play an alarm sound when the timer finishes.

---

## 📚 What I Learned

Through this project, I learned how to:

- Use `Timer` to implement countdown functionality
- Connect UI elements using `IBOutlet`
- Handle button actions using `IBAction`
- Update UI elements based on application state
- Use `UIProgressView` to display progress
- Play audio using `AVFoundation`
- Start, stop, and reset a timer
- Manage UI state based on user interactions

---

## 💡 Implementation Highlights

### Timer Management

When a new button is selected, the currently running timer is invalidated before starting a new one.

This prevents multiple timers from running simultaneously.

### Progress Calculation

The progress is calculated based on the elapsed time and total cooking time.

```swift
let progress = Float(secondsPassed) / Float(totalTime)
progressBar.progress = progress
