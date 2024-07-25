<cfscript>
    task = trim(url.task)
    tasks = []
    if (fileExists("tasks.json")) {
        tasks = deserializeJSON(fileRead("tasks.json"))
    }

</cfscript>

<form action="updateTask.cfm" method="post">
    
    <cfoutput>
        <input type="hidden" name="oldtask" value="#task#" />
        <input type="text" name="newTask" value="#task#" required/>    
    </cfoutput>
    <button type="submit">Update Task</button>
</form>
