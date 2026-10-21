## `sapmachine:21-jdk-alpine-3.23`

```console
$ docker pull sapmachine@sha256:20b928735aa1eef60b97ab4d7963f5d9f15ba95b37bfebe8a3d828c93dcd86e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:d22ea4f761459acadd5de0de8f51788b2f84cec33a7b2fcf3c2657362322fbcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224040257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301ee3afbb4f15b523294b8c7014735351658d7c1388a3bbaec0d54c8063de37`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:14:47 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13-r0 # buildkit
# Wed, 21 Oct 2026 22:14:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 21 Oct 2026 22:14:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c4e29aed4c4217f0e4d18fb1b00ff20a8af6d2fcad85ea48d860f8a7390386`  
		Last Modified: Wed, 21 Oct 2026 22:15:08 GMT  
		Size: 220.2 MB (220188030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:da2a8f164978145d12e7f17076ffea6ad7ea9d43d9e9abc1480d9cd3604e2019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.5 KB (523464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92743be83052c1573d8f97f54efdb2bbccc72a89606a248982462db2ac3812da`

```dockerfile
```

-	Layers:
	-	`sha256:51f600542c6a461fefe1d87a95ac1b46bf0cb624f1cafbc86e83973312ce4da5`  
		Last Modified: Wed, 21 Oct 2026 22:15:04 GMT  
		Size: 514.6 KB (514557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81eaa77d29581229b650091ba377e9db1a24a112b0eaf60dda0c06dece612826`  
		Last Modified: Wed, 21 Oct 2026 22:15:04 GMT  
		Size: 8.9 KB (8907 bytes)  
		MIME: application/vnd.in-toto+json
