#!/bin/bash
# This script creates a script once it gets its name.
# Then it gives it executable permissions.
# Then it writes into its first line this '#!/bin/bash' called Sha-Bang (# sharp and ! bang combined)
echo "What should be the name of the file(e.g 1-hello_world.sh)?"
read scriptname
touch $scriptname
chmod +x $scriptname
echo '#!/bin/bash' > $scriptname