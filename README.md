<p align="center">
  以 AI 工具、游戏开发与工程实验为主线，持续补齐渲染、优化、系统与模型训练能力。
</p>

<p align="center">
  AI Tooling · Game Development · Rendering · Optimization · Systems · LLM Training
</p>

## 关于这里

这里主要记录我正在推进的开源项目，以及一些持续打磨中的工具、工作流和游戏原型。

## 当前重点

### [Sky Island Rebirth](https://github.com/zgx197/sky-island-rebirth)

灾后复苏题材的经营 + 阶段式塔防 + 探索游戏，正在切换到 Godot（C#）重新实现。当前策略是先打磨单场战斗的垂直切片，再逐步铺开营地、区块探索与真相叙事。

此前的 Web（Babylon.js + TypeScript）实现已完整归档到 [babylonjs-lab](https://github.com/zgx197/babylonjs-lab)，保留全部历史：3D 塔防原型、自研 ECS、确定性帧录制与智能体工具链、VAT 虫群渲染、AI 绘制的卷轴世界地图。

当前里程碑：搭建 Godot 版最小战斗闭环

近期迭代目标：
1. 用 Godot C# 重建最小 2D 战斗场景，跑通"建造 → 流场改道 → 虫群攻防"循环。
2. 加入疏导墙、节奏化波次与最简配给经济，先把单场战斗打磨到好玩。
3. 沿用 AI 生图工作流统一世界地图与战斗场景的美术管线。

### [babylonjs-lab](https://github.com/zgx197/babylonjs-lab)

Babylon.js 实验项目。首个实验：3D 塔防——自研 ECS 与固定步长模拟、确定性帧录制与 Replay、面向智能体的运行时查询 CLI、5000 实体的 VAT Thin Instance 虫群渲染、羊皮卷轴风格的 AI 生成世界地图（Seedream 分块生成 + 拼接工作流）。后续新的 Babylon 玩法与渲染实验都会放进这里。

### [Tessera](https://github.com/zgx197/Tessera)

Tessera 调整为由实际游戏需求驱动的世界与地图技术基线，不再脱离项目去想象完整的通用世界生成框架。现有确定性世界生成原型会继续保留；当 Sky Island Rebirth 真正需要世界尺度、区域划分、局部地图、地貌、水文、气候、持久化或 LOD 时，再针对明确的玩法问题继续完善。

<p align="center">
  <img src="./assets/tessera-current.png" alt="Tessera 当前世界生成与调试界面" width="100%" />
</p>

## 项目与实验

### 持续项目

- **[TileMatcher](https://github.com/zgx197/TileMatcher)**  
  迭代中 · 游戏与玩法  
  继续补玩法反馈、关卡表现和宠物养成内容。

- **[Sideline](https://github.com/zgx197/Sideline)**  
  迭代中 · 游戏与运行时  
  继续验证玩法循环，并沉淀运行时和 UI 框架能力。

- **[design-to-facet](https://github.com/zgx197/design-to-facet)**  
  整理中 · 设计到交付  
  继续整理设计到页面结构、组件协议和交付约束。

- **[SceneBlueprint](https://github.com/zgx197/SceneBlueprint)**  
  探索中 · 工具链  
  继续验证蓝图数据结构、运行协议和多引擎接入方案。

### 学习与实验

- **游戏引擎使用与工程经验**  
  计划中 · 待创建  
  继续沉淀 Unity / Godot 在组件组织、资源管理、调试流程和常见开发问题上的实践经验。

- **游戏渲染**  
  学习中 · [gfx-practice](https://github.com/zgx197/gfx-practice)  
  继续围绕通用游戏渲染管线、渲染特性与图形效果实现做拆解、练习与记录。

- **游戏优化**  
  计划中 · 待创建  
  针对 GC 优化、DrawCall 优化和运行时开销做小型验证项目。

- **语言模型训练**  
  学习中 · [MiniMind](https://github.com/jingyaogong/minimind)  
  跟着源码梳理从零开始的 PyTorch 训练流水线，并补自己的实验记录。

- **工程与交互设计**  
  计划中 · 待创建  
  继续拆解 Claude Code 的整体架构、交互设计和工程组织方式。

- **排版系统与文档工程**  
  学习中 · [pretext](https://github.com/zgx197/pretext)  
  继续理解文档生成、结构化内容组织和工具链设计。


-----
