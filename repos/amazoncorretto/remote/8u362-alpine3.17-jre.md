## `amazoncorretto:8u362-alpine3.17-jre`

```console
$ docker pull amazoncorretto@sha256:2973f5e884cfb36ae6670ce1b9fd842a312dbf5df390b14bda458970ae71d313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:8u362-alpine3.17-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:eea170e219f70e5b8beef464bd38f8a0a5ee1634013a690dad5711682e66b61d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44905513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae54005ecba0cff90da6ec5feab6d8acf097d7380f9d2fae354ef67ae3bd2792`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:23:35 GMT
ARG version=8.362.08.1
# Wed, 18 Jan 2023 20:23:46 GMT
# ARGS: version=8.362.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0
# Wed, 18 Jan 2023 20:23:46 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:23:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c262f8eefa00e19909752036aaa440d03a3e249a5f2a5c84f1b323539856c7`  
		Last Modified: Wed, 18 Jan 2023 20:34:46 GMT  
		Size: 41.5 MB (41534885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
