# The following commands display directory sizes
# The examples use the -h option, which return results in a human-readable
# format, instead of bytes.

# Basic directory size for the current directory
# Lists sizes for all subdirectories
du -h

# Adding -c adds a rollup value to the results
du -hc

# Find the size of a particular directory. 
du -hc /var/lib

# Limit the command to x levels down using --max-depth=x
# 0 = the current directory. 1 = one level down etc
du -hc /var/lib/mongodb --max-depth=1
