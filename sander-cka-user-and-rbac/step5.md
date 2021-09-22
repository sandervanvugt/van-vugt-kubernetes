## Task

Now that a user account has been created, you'll need to create a role, as well as a role binding for that user. Sample YAML files to do so are provided from the lab git repositry. Clone the git repository:

`git clone https://github.com/sandervanvugt/cka`{{execute}}

You have just created a user, but this user cannot do very much yet. To change this, a role has to be assigned to the user. Review the podaccessrole.yaml file and see how it defines access privileges to view pods. After reviewing, apply it to the cluster:

`cd cka`{{execute}}

`cat podaccessrole.yaml`{{execute}}

`kubectl create -f podaccessrole.yaml`{{execute}}

At this point a role as well as a user exists, but they are not connected. To define the connection, a rolebinding has to be added also. Use the following commands to first view the contents of the rolebinding.yaml file, and next add it to the cluster:

`cat rolebinding.yaml`{{execute}}
`kubectl create -f rolebinding.yaml`{{execute}}

Still as your regular user account, create a pod and verify its availability:

`kubectl create deploy roleapp --image=nginx`{{execute}}
`kubectl get pods`{{execute}}
