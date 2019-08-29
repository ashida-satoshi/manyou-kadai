- User Model

    - name :string

- Task Model

    - user_id :references

    - name :string

    - content :string

    - priority :string

    - status :string

    - limit :timestamp

- Label Model

    - task_id :references

    - name :string
