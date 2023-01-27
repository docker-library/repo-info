## `amazoncorretto:8-alpine3.14-jdk`

```console
$ docker pull amazoncorretto@sha256:6f2ac1e309c8531ca12286cbe3eaa32e1bbe1d3a9abaf22264c433e2dcbd6345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:8-alpine3.14-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:baeea325722edea583e373f95691c1ee5db89c1fbc5ccbc4b592bd5ac986e68a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102859279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71aedca6e1261716af44c6d62c402a8fbc8e5ef12af718746e9fcbec881cc66`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:20:38 GMT
ARG version=8.362.08.1
# Wed, 18 Jan 2023 20:20:42 GMT
# ARGS: version=8.362.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0
# Wed, 18 Jan 2023 20:20:43 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:20:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:20:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b0e946e0dcfb23144073bc3f6f3e8ce571a1093bb6dc1ec7769698fd976393`  
		Last Modified: Wed, 18 Jan 2023 20:32:31 GMT  
		Size: 100.0 MB (100031790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
