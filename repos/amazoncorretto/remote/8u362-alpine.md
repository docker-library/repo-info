## `amazoncorretto:8u362-alpine`

```console
$ docker pull amazoncorretto@sha256:e02fac07b97d6ea6a273e64e5d857a1527a3aec33b4661a398dba4635ece62ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:8u362-alpine` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ea1119dbe99702d8a74ab146aea01131608d08f43612328a3ada0fa04cfba45d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103402281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937162a7400f33faab3ec93e9b0fe795aac8a9068bd636aa902902350c101056`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:23:35 GMT
ARG version=8.362.08.1
# Wed, 18 Jan 2023 20:23:39 GMT
# ARGS: version=8.362.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0
# Wed, 18 Jan 2023 20:23:39 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:23:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:23:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab3da559b9e6559b0b59202fa02a7291135ec439e4416cf549b0e8886e85916`  
		Last Modified: Wed, 18 Jan 2023 20:34:19 GMT  
		Size: 100.0 MB (100031653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
