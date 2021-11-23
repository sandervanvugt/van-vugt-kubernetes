In this step you're going to use the Linux dd command to start a few processes. The purpose is to create some workload so that we can explore changing process nice values. To make sure that we do keep access to the computer terminal, we'll run these processes in the background.

Start the following command four times

`dd if=/dev/zero of=/dev/null &`{{execute}}

With this command you'll copy lots of zero's to the /dev/null device (which is just going to discard all that data. It's not really useful in real life, but it will create a LOT of workload and that's exactly what we need!
