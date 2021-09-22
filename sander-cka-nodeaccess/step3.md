## Task
So the application didn't come up as expected. Time to investigate! Let's do that step by step. Start by getting a generic overview:

`kubectl get all`{{execute}}

As you can see, the pod doesn't get beyond a status of Pending. That means it is waiting for something. The only right thing to do in such a situation, is to investigate Pod status using kubectl deploy:

`kubectl describe pods | less`{{execute}}

Read through the output of the describe command, and start at the bottom, in the events field. You'll find a message indicating that no nodes could be found that are ready. In the Status section of the output you won't find much additional information. Based on this information, it's a good idea to investigate node status:

`kubectl get nodes`{{execute}}

You will now see that the worker node01 is marked as NotReady. So let's investigate what's happening on that node:

`kubectl describe nodes node01 | less`{{execute}}

In particular have a look at the taints and the Conditions. Both of them indicate that there's a hard problem on the node. For now we've done enough, in the next step you'll continue and investigate the node itself. 


