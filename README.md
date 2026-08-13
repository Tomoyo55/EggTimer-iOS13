# 🥚 EggTimer

An iOS timer app built with Swift and UIKit as a learning project based on an Udemy course.

The project was developed while learning iOS app development with Swift. I followed the core concepts introduced in the course and implemented, customized, and tested the application to deepen my understanding of UIKit, timer management, UI state handling, and audio playback.

Users can select the desired egg hardness, and the timer starts automatically. When the timer finishes, an alarm sound is played and the screen changes to indicate completion.

> **Project Type:** iOS Development Learning Project
>
> **Learning Resource:** Udemy Course

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

Each option is associated with a different cooking duration.

### 2. Start the Timer

The timer starts automatically when a button is selected.

`Timer` is used to update the countdown every second.

### 3. Update the Progress Bar

The progress bar is updated based on the elapsed time to visually display the cooking progress.

The progress value is calculated from the elapsed time and total cooking time.

### 4. Timer Completion

When the selected time has elapsed, the timer stops and the screen changes to `Done!`.

### 5. Play the Alarm

`AVAudioPlayer` from `AVFoundation` is used to play an alarm sound when the timer finishes.

---

## 📚 What I Learned

Through this project, I learned how to:

- Build an iOS application using Swift and UIKit
- Use `Timer` to implement countdown functionality
- Connect UI elements using `IBOutlet`
- Handle button actions using `IBAction`
- Update UI elements based on application state
- Use `UIProgressView` to display progress
- Play audio using `AVFoundation`
- Start, stop, and reset a timer
- Manage UI state based on user interactions
- Debug and test application behavior in Xcode

---

## 💡 Implementation Highlights

### Timer Management

When a new button is selected, the currently running timer is invalidated before starting a new one.

This prevents multiple timers from running simultaneously and ensures that only the latest timer is active.

```swift
let progress = Float(secondsPassed) / Float(totalTime)
progressBar.progress = progress
```

---

# 🥚 EggTimer

SwiftとUIKitを使用して開発した、卵の硬さに応じた調理時間を計測するiOSタイマーアプリです。

卵の硬さを「Soft / Medium / Hard」から選択すると、自動的にタイマーが開始されます。
設定した時間が経過するとアラーム音が鳴り、完了画面へ切り替わります。

本アプリは、UdemyのiOSアプリ開発講座を通じて学習した内容をベースに制作したものです。
教材で学んだUIKitやTimerなどの基本的な仕組みを実際に実装することで、iOSアプリ開発の基礎を身につけました。

---

## 📱 Demo

上記デモ画面からご覧いただけます。

---

## ✨ Features

- 🥚 卵の硬さを Soft / Medium / Hard から選択
- ⏱ 卵の硬さに応じてタイマーを自動開始
- 📊 プログレスバーによる調理状況の表示
- 🔔 タイマー終了時のアラーム音再生
- 🔄 別の硬さを選択してタイマーを再スタート
- 📱 シンプルで直感的なユーザーインターフェース

---

## 🔧 Tech Stack

- **Language:** Swift
- **Framework:** UIKit
- **IDE:** Xcode
- **Audio:** AVFoundation
- **Timer:** Foundation Timer

---

## ⚙️ How It Works

### 1. 卵の硬さを選択

Soft、Medium、Hardのボタンから卵の硬さを選択します。

選択した硬さに応じて、あらかじめ設定した調理時間が決定されます。

### 2. タイマーを開始

ボタンを選択するとタイマーが自動的に開始されます。

`Timer`を使用して、1秒ごとに残り時間を更新します。

### 3. プログレスバーを更新

経過時間と設定された調理時間をもとに進捗率を計算し、`UIProgressView`に反映します。

これにより、残り時間だけでなく調理の進行状況を視覚的に確認できます。

### 4. タイマー終了

設定した時間が経過するとタイマーを停止し、画面を`Done!`に切り替えます。

### 5. アラーム音を再生

`AVFoundation`の`AVAudioPlayer`を使用して、タイマー終了時にアラーム音を再生します。

---

## 📚 What I Learned

このプロジェクトを通して、以下の内容を学習・実装しました。

- `Timer`を使用したカウントダウン処理
- `IBOutlet`を使用したUI部品との接続
- `IBAction`を使用したボタン操作の実装
- アプリケーションの状態に応じたUIの更新
- `UIProgressView`を使用した進捗表示
- `AVFoundation`を使用した音声再生
- タイマーの開始・停止・リセット処理
- ユーザー操作に応じた画面状態の管理

---

## 💡 Implementation Highlights

### Timer Management

新しいタイマーを開始する際には、現在実行中のタイマーを`invalidate()`で停止してから新しいタイマーを開始するようにしています。

これにより、複数のタイマーが同時に実行されることを防いでいます。

### Progress Calculation

経過時間と設定された調理時間から進捗率を計算し、プログレスバーに反映しています。

```swift
let progress = Float(secondsPassed) / Float(totalTime)
progressBar.progress = progress
