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
 