## `sapmachine:lts-alpine-3.22`

```console
$ docker pull sapmachine@sha256:c0e51214f1afabd24d5d9a7eeb4e648d833a0c0d8bc12a6886903cd2d65a9ede
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:edb2a5320a5c0c9d1647d61a3fc25cf168bae82ae1c3cf3773c5283177698153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228759862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3435b4dcf02d938d0374c888b527b063c89962719ffc76f7dbe84cbdc5f88bf`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:51:50 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:51:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Mon, 26 Oct 2026 17:51:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65769f0a37d8daf4ac1bdcc134762d58ad076b42e75b099e86afff650c1be95a`  
		Last Modified: Mon, 26 Oct 2026 17:52:12 GMT  
		Size: 225.0 MB (224965505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:25a858b950e3bdf2a0cbe8d706425c2c1d22d37a9f43960101a23a15afed789f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.3 KB (510251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2348378da8a0ee2d2c19416fcea34de9e4ce07fdcfee6a8f6ea6df193b00be`

```dockerfile
```

-	Layers:
	-	`sha256:ce8e689af9c7aea94bef69a6dcea0c88402f208a97ba1d6483f01bb685f0b16d`  
		Last Modified: Mon, 26 Oct 2026 17:52:07 GMT  
		Size: 502.0 KB (501953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a55f63f862e2e913cb288a786254e469db99b5f0f33f66d4e360972fe96b12e8`  
		Last Modified: Mon, 26 Oct 2026 17:52:07 GMT  
		Size: 8.3 KB (8298 bytes)  
		MIME: application/vnd.in-toto+json
