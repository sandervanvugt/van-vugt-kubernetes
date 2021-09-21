## Task

You have just seen that the pods could not be started because resource use must be set for any application started in a namespace with quota. Use the following to do so. 

`kubectl set resources deploy nginx --requests cpu=100m,memory=5Mi --limits cpu=200m,memory=20Mi -n limited`{{execute}}

