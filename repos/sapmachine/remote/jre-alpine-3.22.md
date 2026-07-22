## `sapmachine:jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:83d494dec161d0990af0cc91d52bf216571e2962668705689c127479f281edbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:ebe4a4611eaa1a41b5015923fd07593de63c4a3c744e51f11ea7ccec8619baeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64992426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e60ea6d2e90f317c197850d57716842461aa93568bae8c032270dde6e63daa`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:23:11 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-26-jre=26.0.2-r0 # buildkit
# Wed, 22 Jul 2026 18:23:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-sapmachine-jre
# Wed, 22 Jul 2026 18:23:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb24adf715405f38fc666c5c72428e37c46826dd49f32f0f242306c7f5d4fe5`  
		Last Modified: Wed, 22 Jul 2026 18:23:24 GMT  
		Size: 61.2 MB (61204831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:70076a13378b98d94d35c35033846215a7fd255985f4e6cc9f08cd37dc709caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 KB (437503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ac9f155da1a26b3cd320593e747363fcebf77c0c7e48ac2221120942be576d`

```dockerfile
```

-	Layers:
	-	`sha256:a7f4c6ac76dac1a66d14107e25ba9c7290b884987b71dfcd8188d717cbc48496`  
		Last Modified: Wed, 22 Jul 2026 18:23:23 GMT  
		Size: 430.2 KB (430222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b62978251763a1c92dddd83bbe6bfc51f56edcb4019394f038ccd6b6cc299d73`  
		Last Modified: Wed, 22 Jul 2026 18:23:23 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json
