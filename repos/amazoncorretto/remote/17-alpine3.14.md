## `amazoncorretto:17-alpine3.14`

```console
$ docker pull amazoncorretto@sha256:5b90a7ed578e1ba879390907e6a65b34946320fbf69887202b5c2f5ed425a9ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:17-alpine3.14` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:366190378cffd994c55a2cf120066c1a4c6ce5828e2cd0b2eaebbad496876e82
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196396833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b504a9a34921c2d371c3b443c2c750cbfa4084c520780513df50158457275faa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:07 GMT
ADD file:b9bd10cf83356cb7281baa0fbaca5186cf27491f59eda87abe57f83a5aaf5ec1 in / 
# Tue, 09 Aug 2022 17:20:08 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:27:15 GMT
ARG version=17.0.6.10.1
# Wed, 18 Jan 2023 20:27:21 GMT
# ARGS: version=17.0.6.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0
# Wed, 18 Jan 2023 20:27:22 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:27:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:27:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:c7ed990a2339ee598662849de4f56e2241399f5a32340c8c4a7bbd5378a12b5f`  
		Last Modified: Tue, 09 Aug 2022 17:21:06 GMT  
		Size: 2.8 MB (2827489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa910172181e37bc339c116d1190e40fdd4c2410c59e66bf7437be015241544b`  
		Last Modified: Wed, 18 Jan 2023 20:40:04 GMT  
		Size: 193.6 MB (193569344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
