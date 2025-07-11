# The following commands display drive sizes and free space
# The examples use the -h option, which return results in a human-readable
# format, instead of bytes.

# Use findmnt to display mounted drives in a tree format
# The -t option specifies the filesystem types to display
# The -o option specifies the output columns to display
findmnt -t ext4,xfs -o TARGET,SOURCE,FSTYPE,SIZE,USED  

# Use findmount to display mounted drives with additional details
# The -o option specifies the output columns to display
findmnt -o TARGET,SOURCE,FSTYPE,SIZE,USED

# Basic drive space information
# Returns top level drive and mount point information
df

# Returns information in human readable format
df -h

# Returns information for a particular drive/mount point
df -h /dev/sdb1 

# Use lsblk to display block devices
# The -o option specifies the output columns to display
lsblk -o NAME,SIZE,FSAVAIL,MOUNTPOINT,FSTYPE

# The -f option displays filesystem information and available space
lsblk -f