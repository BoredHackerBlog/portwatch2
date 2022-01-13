# portwatch2
project that does baseline port scan and then notifies you on any additional changes via webhook

# use case
I want to know if a new port is opened up for the assets I'm watching... Port can be opened up due to misconfiguration or malicious action

# technologies
- Python
- Docker
- nmap
- pyndiff
- apscheduler

# Running the project
- Clone the project
- Modify config.toml, targets.txt, and exclusions.txt
- run it via docker-compose file with `docker-compose up -d` or build the container and run it via the docker command
 
# Usage
- once the project is running, it should scan the targets you specified and if you added a webhook url, it'll keep posting to it
- you can also check docker logs to see logs which also contain scan results and diff results

# Warning
- Not tested with large amount of assets
- Be mindful of how long the scans will take when you edit the cron configuration (highly recommend using crontab.guru site and looking at examples)
- If you're using webhook for notification and there is a rate limit, you may just wanna change the code and add time.sleep(1) or something...
