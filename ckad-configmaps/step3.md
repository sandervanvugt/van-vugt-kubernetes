The most elegant way to provide variables to applications, is by using a ConfigMap. Using a ConfigMap allows you to store the variable in cloud, which makes it possible to provide site-specific information to any application that needs it. Use the following command to define a ConfigMap with the required MYSQL_ROOT_PASSWORD variable:

`kubectl create cm mydbvar --from-literal=MYSQL_ROOT_PASSWORD=secret`{{execute}}

Before continuing, let's verify the contents of the ConfigMap:

`kubectl describe cm mydbvar`{{execute}}

As you can see, the variable and its value are stored in the ConfigMap, so let's continue with the next step!
