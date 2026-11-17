# Dwellfield：Netlify 部署与客户表单入门教程

日期：2026-11-14。适用于本文件夹的 `website/` Astro 静态网页。以下是给第一次部署网页的人使用的操作说明；平台界面或免费额度以后可能调整，以文末官方页面和账号后台为准。

**当前上线状态：**网站已在 2026-11-14 发布为 Public，正式免费网址为 <https://dwellfield.netlify.app/>。Netlify 的 **Forms → site-review** 已识别表单，并在 **Verified submissions** 中显示收到的提交，说明线上收件链路已经跑通。后续更新请始终使用 Netlify 中现有的 `dwellfield` 项目。

## 先弄懂四个词

| 名词 | 在本项目中的意思 |
|---|---|
| 源代码 | `website/src/` 等制作网页的文件。日后修改文案、图片、表单时改这些文件。 |
| 构建 | 在 `website/` 执行 `npm run build`，把源代码转换为浏览器可直接打开的成品。 |
| 发布目录 | `website/dist/`。手动上传到 Netlify 的是**这个文件夹**，而不是整个项目文件夹。 |
| 域名/网址 | 首次部署使用 Netlify 免费提供的 `https://站名.netlify.app/`。不需要购买域名，也不用设置 DNS；以后想买独立域名再添加。 |

Netlify 同时负责两件事：向访客提供网页，以及用 **Netlify Forms** 接收、保存咨询表单。无需自己维护服务器或数据库。当前 Free 方案允许商业项目，月度额度为 300 credits，设有硬上限；额度用尽会暂停网站，而非自动扣费。新方案中表单提交本身不计 credits，但部署和网页访问会使用额度。查看账号后台的 **Usage & billing**，不要只凭本文判断未来额度。[Netlify 免费方案](https://www.netlify.com/pricing/) · [额度说明](https://docs.netlify.com/manage/accounts-and-billing/billing/billing-for-credit-based-plans/credit-based-pricing-plans/) · [表单计费](https://docs.netlify.com/manage/forms/usage-and-billing/)

## 你需要注册什么

只需要一个 **Netlify 账号**：在普通 Chrome 浏览器中进入 <https://app.netlify.com/signup>，用自己长期掌控的邮箱、Google 或 GitHub 账号注册，选择 **Free**。目前不需要买域名、开通付费套餐，也不需要注册 GitHub。请自己完成密码、验证码和账号验证，不要把它们发给代理或写进本项目。若应用内浏览器的 Google 登录跳转失败，请直接用普通 Chrome 完成注册，不要在错误页输入账号信息。

建议账号归属由你和合伙人先约定清楚：谁控制登录方式、谁负责查看线索和导出备份。免费方案的团队成员权限可能有限；不要为了共用账号而互相发送密码。

## 第一次上传：按顺序点击

1. 在本机 PowerShell 中进入 `C:\Users\TJADD\Desktop\261113-GrannyflatWebsite\website`，执行 `npm run build`。如果已有代理帮你构建，可直接使用最新的 `website/dist/`。构建成功会出现 `Complete!`。
2. 登录 Netlify，在 **Projects → Add new project → Deploy manually** 中上传整个 `website/dist/` 文件夹。不要上传 `inputdata/`、`res/`、`doc/` 或整个桌面工作目录；它们包含内部过程资料，网页上线只需要构建产物。[Netlify 手动部署说明](https://docs.netlify.com/manage/projects/add-new-project/)
3. 给项目取一个可识别的名称。当前项目已命名为 `dwellfield`，网址是 <https://dwellfield.netlify.app/>。确认站点状态为 **Public**，并从手机或另一台设备打开这个公开地址。
4. 在项目的 **Forms** 页面点击 **Enable form detection**，然后在 **Deploys** 中重新上传一次同一个 `dist/`。Netlify 只会在启用后的部署中扫描网页表单。成功后应看到名为 `site-review` 的表单。[表单设置](https://docs.netlify.com/manage/forms/setup/)
5. 在公开网站使用自己的邮箱提交**一条**真实格式的测试咨询。提交后应到 `/thank-you/`。回到 Netlify **Forms → site-review** 查看记录；如果没出现在 Verified，请同时看 Spam。当前线上已有 Verified submission，日后不要把真实客户咨询当作测试记录删除。[查看与导出表单](https://docs.netlify.com/manage/forms/submissions/) · [排查表单](https://docs.netlify.com/manage/forms/troubleshooting-tips/)
6. 目前邮箱通知暂不设置。即使没有通知，记录仍会保存在 Netlify 的 Forms 后台；建议在通知方案确定前，每天人工查看一次。以后可以在 **Forms → Submission notifications** 添加邮件地址，或再研究 webhook。[通知设置](https://docs.netlify.com/manage/forms/notifications/)

**状态说明：**首次上传、设为 Public、启用表单检测、再次部署以及线上表单收件，均已通过 Netlify 后台截图确认。截图显示一条 Verified submission；仅凭截图无法判断它是测试还是客户询问，请在后台核实并及时回复。

## 我们网页目前做了什么

- 英文站点的咨询表单会提交姓名、邮箱、区域/邮编、使用目的和可选留言；只收集初次沟通所需信息。
- 表单采用 Netlify Forms 的静态 HTML 检测方式；加了隐藏的防垃圾提交字段。提交成功页为 `/thank-you/`。
- 访客可以从表单或页脚打开 `/privacy/` 隐私说明。表单用途是回复咨询，**不会自动将访客加入营销邮件名单**。
- 网站已按你的选择开放搜索引擎抓取；`robots.txt` 允许访问，页面使用 `index,follow`。搜索引擎何时收录由搜索引擎决定，发布后不会立刻出现在 Google。
- “Order & know more” 目前引导访客提交咨询/购买意向；网站没有在线付款或自动下单。

上线后需要把隐私页中的 Dwellfield 工作品牌替换或补充为最终经营主体与正式联系方式；最终产品面积、价格范围、销售包含物和图像也应持续对照正式销售材料。Netlify 建议主动导出并定期清理含个人信息的表单记录。[Netlify 表单资料管理](https://docs.netlify.com/manage/forms/submissions/)

## 以后怎么更新网页

每次修改本地源代码后，在 `website/` 重新运行 `npm run build`，再到原 Netlify 项目的 **Deploys** 页面上传新的 `dist/`。更新已有站点时不要点“新建项目”，否则会生成第二个网址。旧版本可以在 Netlify 中回滚。若以后修改频繁，再把项目接入 GitHub 做自动部署；现在完全可以只靠手动上传。

## 微信提醒怎么办

Netlify 内置通知支持邮件、webhook 和 Slack，**没有直接推送到个人微信的开关**。[官方通知文档](https://docs.netlify.com/manage/forms/notifications/) 你和合伙人可以先确定是否使用企业微信、是否接受额外服务及谁能看客户资料。若使用企业微信，通常需要 webhook 加一个转换/转发程序；建议微信只发“有新咨询”提醒，客户姓名和邮箱继续留在 Netlify 后台查看。未经确认不要把客户资料接入第三方微信推送平台。

## 最常见的问题

- **上传后网页正常、表单没有记录：**先看 Forms 是否启用检测，启用后有没有重新部署，以及后台 Spam 分类。检查线上网页而非 `127.0.0.1` 本地预览。
- **部署后仍是旧内容：**确定重新运行了构建、上传的是新 `dist/`，且更新的是原项目。
- **免费网址不够正式：**先用 `netlify.app` 验证市场和收集线索；等品牌和销售流程稳定，再决定是否买独立域名。
- **担心收不到通知：**在确定邮箱或企业微信之前，安排固定时间查看 Forms 后台，必要时导出 CSV 备份。
- **想让 Google 收录：**当前代码已允许收录；仍需公开发布、让搜索引擎发现网页，并等待其抓取。免费子域名可访问，但独立域名将来更利于品牌识别。

## 参考资料

- [Netlify 手动部署](https://docs.netlify.com/manage/projects/add-new-project/)
- [Netlify Forms 设置](https://docs.netlify.com/manage/forms/setup/)
- [Netlify 表单记录与 CSV 导出](https://docs.netlify.com/manage/forms/submissions/)
- [Netlify 默认免费子域名](https://docs.netlify.com/manage/domains/domains-fundamentals/understand-domains/)
- [澳洲 OAIC：隐私说明](https://www.oaic.gov.au/privacy/your-privacy-rights/your-personal-information/what-is-a-privacy-policy)
- [澳洲 ACMA：营销邮件与同意](https://www.acma.gov.au/avoid-sending-spam)
