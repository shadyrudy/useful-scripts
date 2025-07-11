# The following commands display directory sizes
# The examples use the -h option, which return results in a human-readable
# format, instead of bytes.

# Display the total size of a specific directory and its subdirectories
du -sh /var/lib

# Limit the command to x levels down using --max-depth=x
# 0 = the current directory. 1 = one level down etc
du -hc --max-depth=1            # Current directory and one level down
du -hc /var/lib --max-depth=1   # Target directory and one level down

# Adding -c adds a rollup value to the results
du -hc          # Current directory and all subdirectories
du -hc /var/lib # Target directory and all subdirectories

# Basic directory size for the current directory
# Lists sizes for all subdirectories
du -h