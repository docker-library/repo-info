## `amazoncorretto:19-alpine3.14-full`

```console
$ docker pull amazoncorretto@sha256:c1682ead8e2ef7b370e750488f8fc003cb68ac93b840dddd9bef083801d7ac33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:19-alpine3.14-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:23a72c503b1c4ba730289c4b6eebd37a035231cef3a56983d75b1d60946a6c73
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204914630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6d57807e944c9467ba4226682d42ffe9a1e8419858a5063c02cdfb54d73f948`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:28:23 GMT
ARG version=19.0.2.7.1
# Wed, 18 Jan 2023 20:28:29 GMT
# ARGS: version=19.0.2.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-19=$version-r0
# Wed, 18 Jan 2023 20:28:30 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:28:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:28:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c14b3397c15a9ccf08a90c5e5c93ea1109387e20682a2b40914ca72864c28d`  
		Last Modified: Wed, 18 Jan 2023 20:42:37 GMT  
		Size: 202.1 MB (202087141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
