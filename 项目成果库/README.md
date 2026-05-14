# 项目成果库

项目内真实成果文件的唯一归口目录。

- 草稿、待审稿、定稿、导出件都放这里。
- 规则、模板、看板放 `项目文档库/`。
- 高频运行流水放 `项目日志库/`。
- 工作区 `artifacts/` 只保留跨项目共享索引。

文件命名统一采用 `YYYYMMDD-HHMM__content_id__slug__stage.ext`。

每次新增、覆盖、移动成果文件后，立即执行 `scripts/update-results-index.sh` 刷新 `Index.md`。
