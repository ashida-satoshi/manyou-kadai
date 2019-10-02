*User*

カラム  | 型
--- | ---
name | string

*Task*

カラム  | 型
--- | ---
user_id | references
name | string
content | string
priority | string
status | string
limit | timestamp

*Label*

カラム  | 型
--- | ---
task_id | references
name | string



