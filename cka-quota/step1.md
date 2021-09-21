## Task

Start by creating a new namespace

`kubectl create ns limited`{{execute}}

Apply quota to the new namespace

`kubectl create quota qtest --hard pods=3,cpu=100,memory=500Mi --namespace limited`{{execute}}
