<cfscript>
    task = trim(url.task);

    tasks = [];
    if (fileExists("tasks.json")) {
        tasks = deserializeJSON(fileRead("tasks.json"));
    }

    taskIndex = arrayFind(tasks, task);
    if (taskIndex > 0) {
        arrayDeleteAt(tasks, taskIndex);
        fileWrite("tasks.json", serializeJSON(tasks));
    }
</cfscript>
<cflocation url="index.cfm" addtoken="false">
