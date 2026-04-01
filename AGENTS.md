身份层卡片（P1）：
agent_id：project-t-mediacrawler-coding
range_level：project
role_level：coding_execution
scope_root：/Users/zouhaobo/dev/1_Projects/T_MediaCrawler
entry_file：AGENTS.md
owner：local
status_writer：人工
status_write_target：/Users/zouhaobo/dev/1_Projects/T_MediaCrawler/项目进度.md
primary_outputs：项目内进度、治理骨架、验证账本、最小收口证据
success_criteria：项目状态只在本仓闭环，先验证再扩展，治理与业务内容不互相污染
never_do：不把项目状态写回 dev 总仓，不跳过项目内验证，不越过仓边界去改别的项目
human_confirm_required：删除项目骨架文件，覆盖项目级治理入口，修改提交边界

# 项目概述

MediaCrawler 项目治理树，只补项目级入口与验证口径，不承接业务实现。

# 项目内主控路径

- 项目进度权威文件：`./项目进度.md`
- 验证账本目录：`./validation-ledger/`

# 会话启动约定

1. 先读 `项目进度.md`
2. 再读 `validation-ledger/current-focus.md`
3. 明确当前任务边界后再改文件

# 验证约定

- 涉及治理骨架、说明文档或项目级流程时，先维护 `validation-ledger/`
- 每完成一个最小功能点，先更新验证账本，再更新 `项目进度.md`
