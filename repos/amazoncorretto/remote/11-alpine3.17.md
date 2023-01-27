## `amazoncorretto:11-alpine3.17`

```console
$ docker pull amazoncorretto@sha256:9dc3ed24dae94e90919da45928ef218a25a1f3fae91b5c8f99295782f53b6b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:11-alpine3.17` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:aee9681f6d15d71d4bb89b03b88aef2f5bc6d7c4a2dd3c1f0b254704d1ca507d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198504004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067b359f9c75a6d43a6a13469cafda7583132d8c2a986564d90258cbcddc3ff7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:25:41 GMT
ARG version=11.0.18.10.1
# Wed, 18 Jan 2023 20:25:47 GMT
# ARGS: version=11.0.18.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0
# Wed, 18 Jan 2023 20:25:48 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:25:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:25:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fd651276056a31d3d85c19aa2e19608499ee277baadc42b9770f95e372069b`  
		Last Modified: Wed, 18 Jan 2023 20:38:01 GMT  
		Size: 195.1 MB (195133376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
