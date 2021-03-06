Now log in as user anna that was just created:

`su - anna`{{execute}}

In the local user environment, create a directory for the certificates you're about to create and activate that directory:

`mkdir .certs`{{execute}}

`cd .certs`{{execute}}

From the certificates directory, create a private key:

`openssl genrsa -out anna.key 2048`{{execute}}

Get rid of a small bug on this version of Ubuntu before creating the certificate signing request:
`sudo sed -i "/^RANDFILE/d" /etc/ssl/openssl.cnf`{{execute}}

Create a certificate signing request (CSR) based on the key you've just created:

`openssl req -new -key anna.key -out anna.csr -subj "/CN=anna"`{{execute}}

To complete certificate setup, use sudo privileges to generate the public key certificate from the CSR you've just created:

`sudo openssl x509 -req -in anna.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out anna.crt -days 600`{{execute}}

Use the ls command to verify the key, csr and crt files are present

`ls`{{execute}}

