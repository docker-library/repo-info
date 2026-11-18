## `amazoncorretto:17-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:c204fe5c786b2be634af55691109407862375d37a3e2ea542dac2dff5379dda2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c94a30fd44ec1fea9c5c3ce852713b96a3b36c652fcb115e75f08220465991b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152826951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69569a49e34c3ecb4e97aa4f66c28b9a6b4410eefff978de7ad0bd9e2a32467`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:21 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:21 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:21 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d71ab5d41418bea164eaeede727aca012cc69e71413f280b88109b7041e86b`  
		Last Modified: Tue, 17 Nov 2026 21:33:38 GMT  
		Size: 149.2 MB (149201549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e81b0beaa79b36e759934caa195ad1d6e55ec9f35d420a43caa8d96ed2e2be70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.6 KB (596591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2cccb323bc306897be13b0eb1a3170f5f1832fd5494b4145133e2ceb5c4865`

```dockerfile
```

-	Layers:
	-	`sha256:3959ed1f7908969b41c376b6ea006537a84c134c4398c4501da27aded6cf5a5d`  
		Last Modified: Tue, 17 Nov 2026 21:33:35 GMT  
		Size: 587.2 KB (587217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1568536b10bffce95eb3c4180e56503e054ba2e63e6ab37a7d3cec2514b2346b`  
		Last Modified: Tue, 17 Nov 2026 21:33:35 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c71497c72b622ddb80104c1537afa321dbfc5197af4cdce4b3f0ee5caef897d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.7 MB (151667675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7118ff296ab68368b00b6548d50615c3a56f0429072916d73b4a77d082500eb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:20 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:20 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:20 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9326452abd5d7fe8e165c2471cc1a0356425328471969a1bea31fe25faba15`  
		Last Modified: Tue, 17 Nov 2026 21:33:38 GMT  
		Size: 147.7 MB (147693252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:19c04778688398c3801c1a4c43e7a99d920fe2dc58c7f3dd3fb8a2d830aeeaa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ead47dd3edbdb440e09420bd0e52acb1c855e94478d91d452887b70a0b067de`

```dockerfile
```

-	Layers:
	-	`sha256:e752a46e3a8e2d408b24a4886004685d664f5c10392692d8463bbed57ff9d5de`  
		Last Modified: Tue, 17 Nov 2026 21:33:35 GMT  
		Size: 586.6 KB (586636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fd6c8e29628ece6dc81c6fe0173bc6ddd348285d19bdd1738cb90152d56ec0f`  
		Last Modified: Tue, 17 Nov 2026 21:33:35 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
