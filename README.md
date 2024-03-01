# acs-test
Test ACS UI 

This will generate static content for the three scans.
All three must be generated or the UI won't work.

### Configure and install

Replace all the references to `jduimovich` with your user name for your fork. 

Then run the init script and it will create the namespace and repo CR. 
```
bash init.sh
``` 

### RHTAP

Import the catalog-info.yaml file into backstage. It will create a component.

Trigger a pipeline  via a change `bash push-change.sh ` and the pipeline will run  
 

#notes 

1. the tasks annotate themselves using `oc annotate` see the task definitions in .tekton (this works around the PaC bug)

Each task outputs a different type roxctl-deployment-check, roxctl-deployment-check roxctl-image-check roxctl-image-scan 

ie for the image check.
```
      oc annotate taskrun $(context.taskRun.name) task.results.format=application/json
      oc annotate taskrun $(context.taskRun.name) task.results.type=roxctl-image-check
      oc annotate taskrun $(context.taskRun.name) task.results.key=SCAN_OUTPUT
      oc annotate taskrun $(context.taskRun.name) task.output.location=logs
      oc annotate taskrun $(context.taskRun.name) task.results.container=step-report
 ```
2. all three tasks need to have results to get the result
- put them each in a step called "report" to match the annotations 



