| User Model | |   
| :---: | :---: |
| カラム | データ型 |  
| name | string |

| Task Model | |
| :---: | :---: |
| カラム | データ型 |  
| user_id | references |
|  name  | string |
| content | string |
| priority | string |
| status | string |
| limit | timestamp |

| Label Model | |
| :---: | :---: |
| カラム | データ型 |  
| task_id | references |
| name  | string |


