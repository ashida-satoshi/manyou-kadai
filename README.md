| User Model |    
| :---: | 
| id|  
| name:string |

| Task Model | 
| :---: | 
| id |  
| user_id:references |
|  name:string |
| content:string |
| priority:string |
| status:string |
| limit:timestamp |

| Label Model | 
| :---: |
| id |  
| task_id:references |
| name:string |


