# The following script prints out the current timestamp in ISO 8601 format.
#!/bin/bash
date -u +"%Y-%m-%dT%H:%M:%SZ"

#!/bin/zsh
date +"%Y-%m-%dT%H:%M:%SZ"
# Removes the T and Z characters
date +"%Y-%m-%d %H:%M:%S"