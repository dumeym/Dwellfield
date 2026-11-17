# WordPress 主题初筛：昆士兰 granny flat 品牌网站

日期：2026-11-13。此文保留为视觉方向讨论记录。用户随后决定采用 Norven；WordPress 候选不再推进。

## 本轮判断

WordPress 值得继续找，尤其应看 **architecture / modular housing / single property** 的完整演示站，而不是主题商店缩略图。当前尚无一个 WordPress 主题在视觉上明显胜过 Norven，但找到两个可认真比较的方向：

| 方向 | 实际演示与官方页面 | 适配点 | 明显问题 |
|---|---|---|---|
| **Hiroshi — Modular Housing** | [演示](https://hiroshi.qodeinteractive.com/modular-housing/) · [主题介绍](https://themeforest.net/item/hiroshi-architecture-and-interior-design-theme/43570750) | 本轮最贴近产品：首页已有 modular housing、产品型号、建造过程、材料、价格和 brochure 等位置；可直接想象替换成唯一暖木色型号和 deck/雨棚选配。ThemeForest 标价 **US$89**，Elementor 体系。 | 演示是多型号销售，部分措辞和视觉偏“预制小屋”；需要精简为一个主产品，并重做真实参数、建造内容和报价边界。首屏背景视频较强，手机端和加载速度要实测。 |
| **Ona Architecture** | [演示](https://ona.deothemes.com/architecture/) · [WordPress.org 主题](https://wordpress.org/themes/ona-architecture/) | 温和、简洁、易换图，首页的住宅大图适合暖木色产品；WordPress.org 提供免费子主题，使用区块编辑器。 | 现成页仍是建筑设计事务所的“多项目/服务”结构，若要做单一住宅产品销售页，需要大量重排。母主题的 Pro 产品有另行收费与年度更新支持安排；使用哪些组件前需区分免费与 Pro。 |
| **Norven（非 WordPress，比较基线）** | [演示](https://norven.farulivan.com/) · [源码](https://github.com/farulivan/norven) | 摄影、留白、字体与色调仍最接近中高端住宅品牌；Astro 静态站。 | 当前是建筑事务所作品集，需要把信息结构改为单品营销和 Queensland 地块咨询。 |

本轮也看过 [Archdeco](https://archdeco.cmsmasters.studio/agency-portfolio/) 与 [Brøk](https://brok.qodeinteractive.com/) 的实际首页。前者更像设计事务所，后者偏企业建筑项目；页面功能很多，对我们一个标准外观的房屋而言较重，暂不列入决选。

## 给自己找主题时的筛选标准

1. 打开 **Live Demo 的完整首页、产品详情与手机端**。首屏换成我们的暖木色房屋照片后，标题、按钮和背景是否依然清楚？
2. 优先看“**单一产品/单套住宅**”的叙事：外观和室内、平面、规格、包含项目、选配、流程、常见问题、地块咨询。大量 Portfolio / Team / Shop 页面并非优势。
3. 判断能否删掉虚构的奖项、团队、客户评价、环保承诺，以及不适用的审批和租金回报数字。
4. 查主题最近更新、依赖的编辑器与插件、能否一键导入对应的演示首页、商业许可与演示图片的使用权。购入前核对实际授权。
5. 不必限制在“granny flat”关键词；可以搜 **architecture, prefab, modular homes, single property, cabin, tiny home, interior**。但主题类别只是检索入口，最终看真实页面。

建议入口：[WordPress.org 免费主题](https://wordpress.org/themes/) · [WordPress.com 主题库](https://wordpress.com/themes/all) · [ThemeForest 建筑主题](https://themeforest.net/category/wordpress?term=architecture) · [ThemeForest 单一房产主题](https://themeforest.net/category/wordpress?term=single+property)。WordPress.com 官方说明可以用演示内容预览主题；第三方主题上传取决于 WordPress.com 套餐，自托管 WordPress 则另需域名和主机。[主题预览说明](https://wordpress.com/support/themes/choose-a-theme/) · [上传第三方主题](https://wordpress.com/support/themes/uploading-setting-up-custom-themes/)

## 下一步选择方式

先不要买主题。各选 1–2 个喜欢的 **完整演示 URL**，与 Norven 及 Hiroshi Modular Housing 放在一起比。评判目标是「暖木色住宅品牌的信任感和询盘效率」，而不是主题展示了多少种页面。选定视觉方向后，再决定用 WordPress 实施，还是用可控性更高的 Astro 结构实现同一视觉。
