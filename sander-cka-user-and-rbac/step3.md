## Task
Using the Linux root user account and kubeadmin credentials, you now need to add a new context for user anna to the main admin.conf configuration file. To start with, open a root shell:

`sudo -i`{{execute}}

The Linux root user doesn't normally have access to any Kubernetes config file. Set the KUBECONFIG variable to set the current config to /etc/kubernetes/admin.conf, the main Kubernetes configuration file:
`export KUBECONFIG=/etc/kubernetes/admin.conf`{{execute}}

As the first step, the user anna needs to be defined in the /etc/kubernetes/admin.conf file:
`kubectl config set-credentials anna --client-certificate=/home/anna/.certs/anna.crt --client-key=/home/anna/.certs/anna.key`{{execute}}

Next, configure credentials for user anna, based on the TLS key and certificate that was created by user anna earlier:

`kubectl config set-credentials anna --client-certificate=/home/anna/.certs/anna.crt --client-key=/home/anna/.certs/anna.key{{execute}}

Now prepare a file that can be copied to the user anna home directory (and doesn't have any kubeadmin privileges anymore)

`cp /etc/kubernetes/admin.conf /etc/kubernetes/anna.conf`{{execute}}

And change the current context to anna-context:

`sed -i -e 's/current-context\: kubernetes-admin\@kubernetes/current-context\: anna-context/' /etc/kubernetes/anna.conf`{{execute}}

Now that the user is created and the config is prepared, create a namespace that the user will use as the default namespace:

`kubectl create ns annaspace`{{execute}}

At this point a new context can be created for user anna, directing her to her default namespace:

`kubectl config set-context anna-context --cluster=kubernetes --user=anna --namespace=annaspace`{{execute}}

Unset the KUBECONFIG variable to avoid further confusion:
`export KUBECONFIG=`{{execute}}
