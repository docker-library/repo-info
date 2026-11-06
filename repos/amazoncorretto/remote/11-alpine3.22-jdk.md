## `amazoncorretto:11-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:b5b86dd844ba0e1c6284be5dbe470fc669695bd332baed2d5916f0411b309883
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d4b8609bed7eb27dd8cf1bcf611e3bb2b168c271e9c24496e9883e025a61c08f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147802256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec4f1b3f2866a2e1e265d3661d30731d7f82130b8c5647e50e370e29ab3647f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:37 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:12:37 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:37 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192d8fc8404444b4e7f01602d45c17c05dd4931ebb9ee9281d1e14ab30a33c4d`  
		Last Modified: Thu, 05 Nov 2026 19:12:53 GMT  
		Size: 144.0 MB (144007881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:379c45c1929c21572e47bea20301ea4f419c06321fd04bf13ee25a9a1c832382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.3 KB (598313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac976fbebc47c143641c3ab72b1dce3d62e40e347152fe7fa24fb495fe1d447`

```dockerfile
```

-	Layers:
	-	`sha256:936eff8b1b615f5c142812d7c8801fb44f61c032da585854ac6d183e00e946b2`  
		Last Modified: Thu, 05 Nov 2026 19:12:50 GMT  
		Size: 588.9 KB (588935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be7415d7449d1a71020b13a3ab38d5c703b4e5311c14596d606272febcd69d97`  
		Last Modified: Thu, 05 Nov 2026 19:12:50 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7b24bfe7088ea2f156e02f0bf7382e4b9032ce5baf496c63cf9f858c6cc07558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146493745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c7dd98bb501698e71c45caa2cdfecd91edeab9cd7df214bc0765f1aca8b469`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:24 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:08:24 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d160fe0a7896ae1a1d98138bd63bdb1b68043d0a9dc2cd8aa34da520e66cab6`  
		Last Modified: Thu, 05 Nov 2026 19:08:41 GMT  
		Size: 142.4 MB (142366360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4535bd745502f2cb41d3ac30c016b40ebe8e55b9c2786d834afe906d8de6d804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.5 KB (598474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6911b6e508c2d6dc1fc88dfd94e930f548cd8825f4b03b17759e5a109df193bd`

```dockerfile
```

-	Layers:
	-	`sha256:a035625a9e61cc90a3b126c764ecf01822825adfbe7fe60ef3400d71933c5cd0`  
		Last Modified: Thu, 05 Nov 2026 19:08:38 GMT  
		Size: 589.0 KB (588991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f8806db485bdb316797406dca77c1c0aac70b905e1d3519af430f59f9bd1802`  
		Last Modified: Thu, 05 Nov 2026 19:08:38 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
