# Logs for (my) Ansible Playbooks

These *playbooks* can run as a scheduled cronjob with *autorun.sh* and create logs files in `logs/`

**must create** the logs dir and *summary.log* & *main.log* files inside your ansible working dir, should look like this: *`.ansible/logs/here-goes-the-files`*

+ **tmp.log**= it's a *temporal* log file stored at **`tmp/tmp.log`**
+ **summary.log** = a *brief* summary of playbooks' execution
  
 ![summary.log](https://i.imgur.com/Bk4iEsv.png)
+ **main.log** = a very verbose log file *for troubleshooting playbooks*
  
 ![main.log](https://i.imgur.com/wnFxMBV.png)

There are two environment variables inside the script *autorun.sh* that must be provided in order to properly works:  
  
| EnvVars | Values |
|---|---|
|**PLAYBOOK_PATH=** | `path/to/your/playbook`
|**ANSIBLE_CONFIG=**| `path/to/your/ansible/config/file/`
 
  Also you must provide trough `cd` the directory path to your ansible folder  
  
> cd `/absolute/or/relative/path/to/your/ansible/dir`
