<cfscript>
    task = trim(form.task)

    if (len(task) > 0) {
        tasks = []
        if (fileExists("tasks.json")) {
            tasks = deserializeJSON(fileRead("tasks.json"))
        }
        
        arrayAppend(tasks, task)
        fileWrite("tasks.json", serializeJSON(tasks))
    }
</cfscript>
<cflocation  url="index.cfm" addtoken="false">
