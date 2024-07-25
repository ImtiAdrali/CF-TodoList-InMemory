<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>To-Do List</title>
        <link rel="stylesheet" href="./assets/styles.css" />
    </head>
    <body>
        <h1>To-Do List</h1>
        <form action="addTask.cfm" method="post">
            <input type="text" name="task" placeholder="New Task" required/>
            <button type="submit">Add Task</button>
        </form>

        <cfinclude  template="tasks.cfm">
    </body>
</html>