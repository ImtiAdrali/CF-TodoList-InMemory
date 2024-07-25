<cfscript>
    // Load tasks from JSON file or in-memory
    tasks = []
    if (fileExists("tasks.json")) {
        tasks = deserializeJSON(fileRead("tasks.json"))
    }
    writeDump(tasks)
</cfscript>

<ul>
    <cfloop array="#tasks#" index="task">
        <li>
            <cfoutput>
                #task#
                <a href="editTask.cfm?task=#urlEncodedFormat(task)#">Edit</a>
                <a href="deleteTask.cfm?task=#urlEncodedFormat(task)#">Delete</a>
            </cfoutput>
            
        </li>
    </cfloop>
</ul>