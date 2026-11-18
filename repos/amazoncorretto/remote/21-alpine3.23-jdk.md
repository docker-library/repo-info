## `amazoncorretto:21-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:e5f7f1d0c3426e19325d866a5d3b0bc17149b14a453f63f92e1774995e8b32cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a6ecdb83c38c582935526263708b78a829a3175e9406df0b09e7f2234328ba85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166333059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5e675e033047d7c48931f29a50c345e721f905321e21d61382c7dae18ca529`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:24 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:24 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:24 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d6fdc56dd87ecbb4afbbf57522f5d514f242f8ccc1007fc943acea926020b74`  
		Last Modified: Tue, 17 Nov 2026 21:34:44 GMT  
		Size: 162.5 MB (162480470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:57a6e2a47974cfc6cd653afec916724c5bbfd25a890104f91bccc43b6fb1e247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.8 KB (591782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0fdb093ae4e68b006f828e91849fef49ff0e8bb6d207169cadf3309fef29ee`

```dockerfile
```

-	Layers:
	-	`sha256:e53b9b6da6d89e9979057fa3bab886aa3d7b76c2d968468359ca8df9642411ba`  
		Last Modified: Tue, 17 Nov 2026 21:34:40 GMT  
		Size: 582.4 KB (582408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12af6e45eb54bf459d776800fce51cdc1145c039431b4aecb95fe6c3e3fcf646`  
		Last Modified: Tue, 17 Nov 2026 21:34:40 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7ec383bf3739489c923fe4684d7c6c33ac6882e4e9173cf20355c58960602d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164683598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2df46808a12be6afe33cb4a7cccf8e93a08c978e67d03447febe4b0e9918b6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:13 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:13 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:13 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee908454c344234616be6363adf3bd3deb5c5d85cd31f61cb757e543f1dbcc01`  
		Last Modified: Tue, 17 Nov 2026 21:34:32 GMT  
		Size: 160.5 MB (160493377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a6db76a74db586af2b2b6c32e8d4d5842381eebf027474fe368925f56d7a1db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.7 KB (590655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bab78689698f46d94333539e261d43aaa6144fb65929295324546afc2f30fcf`

```dockerfile
```

-	Layers:
	-	`sha256:f1ed6c6d1d247f597ff74fcfe78224181a4b3080b27f56df43bec171ade2ffcb`  
		Last Modified: Tue, 17 Nov 2026 21:34:29 GMT  
		Size: 581.2 KB (581177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03a5652ddf8ec4577fd5cedf9584609f0dfb3b3984417501d8f4b5f71d13d8a4`  
		Last Modified: Tue, 17 Nov 2026 21:34:29 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
