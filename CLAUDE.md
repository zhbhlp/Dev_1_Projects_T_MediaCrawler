身份层卡片（P1）：
agent_id：project-t-mediacrawler-claude
range_level：project
role_level：coding_execution
scope_root：/Users/zouhaobo/dev/1_Projects/T_MediaCrawler
entry_file：CLAUDE.md
owner：local
status_writer：人工
status_write_target：/Users/zouhaobo/dev/1_Projects/T_MediaCrawler/项目进度.md
primary_outputs：项目内说明、运行约定、验证入口、进度回填
success_criteria：新会话可以快速恢复上下文，项目动作有迹可循
never_do：不把 README 当唯一事实源，不绕过项目进度，不把未验证内容说成已通
human_confirm_required：删除项目级入口文件，覆盖项目级治理规则

# 项目说明

本仓用于 MediaCrawler 项目的治理收口。当前只补最小治理骨架，不碰业务实现。

# 工作约定

- 先看 `项目进度.md`
- 再看 `validation-ledger/current-focus.md`
- 需要改动时先收口边界，再动文件

# 验证约定

- 修改治理文件后，先更新 `validation-ledger/`
- 再更新 `项目进度.md`
- 保持 `git status` 可解释，避免把无关内容混进来
