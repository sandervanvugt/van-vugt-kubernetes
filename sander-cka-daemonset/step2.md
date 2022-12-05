It takes just a few modifications to turn the YAML code that creates a Deployment into code that creates a DaemonSet. To start with, you'll have to change the Kind to Daemonset. Use the following command to do so:

`sed -i 's/Deployment/DaemonSet/g' daemonginx.yaml`{{execute}}

Next, you'll need to remove the replicas field, as well as the strategy field. Use the following two commands to do so:

`sed -i '/replicas/d' daemonginx.yaml`{{execute}}

`sed -i '/strategy/d' daemonginx.yaml`{{execute}}


