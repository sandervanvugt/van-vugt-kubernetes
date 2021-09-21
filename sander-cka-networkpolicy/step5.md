## Task

In the simple NetworkPolicy that you've just applied, only traffic coming from pods with the label access=true set is allowed. Set this label now:

`kubectl label pod busybox access=true`{{execute}}

Now it's time to test again. As the label is now set correctly, the nginx pod should now allow traffic coming in from the busybox pod:

`kubectl exec -it busybox -- wget --spider --timeout=1 nginx`{{execute}}
