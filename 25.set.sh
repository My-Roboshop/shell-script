# #!/bin/bash

# echo "Hello.."
# echo "Before error.."
# ccaffjl;dnf # here shell understands there is an error and signal is ERR. though error, it will proceed.so we use set -e
# echo "After error"

#############################################################################

#!/bin/bash

set -e # if we give this, it will not proceed if any error.

echo "Hello.."
echo "Before error.."
ccaffjl;dnf # Though error, it will proceed.so we use set -e
echo "After error"

####To know which line we got the error and at which command we use trap"""""