## Task
Now that you have modified the YAML code the right way, it's time to create the DaemonSet. Notice that we're using the option --validate=false, which is telling Kubernetes not to complain about syntax errors. The current version of this platform contains a bug that causes the DaemonSet not to be created, even if there are  no problems with it. In situations like that, it's okay to tell Kubernetes not to complain by using the --validate=false option. In more recent versions of Kubernetes this is not necessary anymore. 

`kubectl create -f daemonginx.yaml --validate=false`{{execute}}

Next, let's verify if it has been started:

`kubectl get daemonset,pods`{{execute}}

You'll notice it hasn't been started!
