## Contents

[Showing/killing SQL Processes.](#showingkilling-sql-processes)

---

### Showing/killing SQL Processes.

```sql
SHOW PROCESSLIST;
```
Will show the currently running processes. I.e.

```
+----+-----------------+-----------+---------+---------+------+------------------------+------------------+
| Id | User            | Host      | db      | Command | Time | State                  | Info             |
+----+-----------------+-----------+---------+---------+------+------------------------+------------------+
|  4 | event_scheduler | localhost | NULL    | Daemon  | 1722 | Waiting on empty queue | NULL             |
| 27 | root            | localhost | NULL    | Query   |    0 | starting               | SHOW PROCESSLIST |
| 28 | root            | localhost | myusers | Sleep   |  225 |                        | NULL             |
+----+-----------------+-----------+---------+---------+------+------------------------+------------------+
```

You can kill processes with `kill x`, i.e.:

```sql
KILL 27;
```
