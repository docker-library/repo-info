## `amazoncorretto:8-alpine3.16`

```console
$ docker pull amazoncorretto@sha256:ac0ae3f9732e6e61c911b01413074f5e08fe8a271684515ccae22e7e09dc9b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:8-alpine3.16` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:202f427eb758a4b6ac0a9dce3b6bc91318d185e1d1fa3638574df3a43c6004c9
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102838145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677457be42bb8d85ac0545c30a63c2353525a9f8f91c1b2ab5018cf7a4c9bc1c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:21:04 GMT
ARG version=8.362.08.1
# Wed, 18 Jan 2023 20:21:08 GMT
# ARGS: version=8.362.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0
# Wed, 18 Jan 2023 20:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:21:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:21:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddef060efed55946643066414963a9ef07f932f10e78ab48e9b38ff72a3e665f`  
		Last Modified: Wed, 18 Jan 2023 20:33:43 GMT  
		Size: 100.0 MB (100031873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
