## `amazoncorretto:8u362-alpine3.14-jre`

```console
$ docker pull amazoncorretto@sha256:796f06ae85f9f6869e9714acb3ef6a8fb05966b3e48895fa704ee3cd2eb6e4eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:8u362-alpine3.14-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:19b03ac12a2a980027e044fbf758565d0ff1ebe4e594af0b74ccca3b162b3344
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44362498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3399cb6fdb34e268dadd2c7a60c3e7c091af6ddbd860f5b2635a7ff137c22fa2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:20:38 GMT
ARG version=8.362.08.1
# Wed, 18 Jan 2023 20:20:49 GMT
# ARGS: version=8.362.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0
# Wed, 18 Jan 2023 20:20:49 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:20:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7739e904a5d4bb0c4e159768860fdae294840e4f64fcc7c18aea581888b32136`  
		Last Modified: Wed, 18 Jan 2023 20:32:50 GMT  
		Size: 41.5 MB (41535009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
