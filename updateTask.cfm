<cfscript>
    oldTask = trim(form.oldTask)
    newTask = trim(form.newTask)

    tasks = []
    if (fileExists("tasks.json")) {
        tasks = deserializeJSON(fileRead("tasks.json"))
    }

    taskIndex = arrayFind(tasks, oldTask)
    if (taskIndex > 0) {
        tasks[taskIndex] = newTask;
        fileWrite("tasks.json", serializeJSON(tasks))
    }

</cfscript>

<cflocation  url="index.cfm" addtoken="false">