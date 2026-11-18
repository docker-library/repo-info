## `amazoncorretto:25-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:f5c28e49f77b2a94b3303dd43f44e0849f5d3f8989d9d2c501271c81c6de7b33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5ac43009a1a079b90f4f2910e6946205003a7c95265fca065f61175b7fc98ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185142387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70cb8ff5152968d2f783b9c0b194ec37a227d8fcb0ef9163b5a68f6758542ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:42 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:42 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:42 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce1346891328ebc230973b564f260d8a6ffddb5d3ee83becd1485b3d48c2e25`  
		Last Modified: Tue, 17 Nov 2026 21:35:03 GMT  
		Size: 181.5 MB (181516985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fe560e0584b5b527382facca0e33115fac168cf96c1bb2f9cf19350c2b8e8027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 KB (605585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1c3e18f0c4ad6d873a480248fb597c1a929775a42704ecdac2db7ef51e233f`

```dockerfile
```

-	Layers:
	-	`sha256:6344c062231ea34931ab38f6024891c3a6ca07e401eaf10c40537f730a49bc36`  
		Last Modified: Tue, 17 Nov 2026 21:34:59 GMT  
		Size: 596.2 KB (596216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0e05a597f1a056c8142eaf3061e8aaff8873e30b38a09c582bed681624f4633`  
		Last Modified: Tue, 17 Nov 2026 21:34:59 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:115c679231dba2c40fb9d1de9b58e7475c0a6cb6b4076b126d88250b9d44f00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.1 MB (183052865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a4a0365d14c34a4d74e9f3a095a67b49f09cebf1aaf9c7d5356884758a092f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:47 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:47 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7cea7bc259f2c700a14f2789d4aa7af1423af68f07bbeb11715ee907cf42898`  
		Last Modified: Tue, 17 Nov 2026 21:35:11 GMT  
		Size: 179.1 MB (179078442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9f45b6e848d9051445be2866d92181e930bdaa5f6c5ad2b72b01dd32b68d03a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 KB (605107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8806975f742dbed76092161c206ab16fbd794344ecf59a057abd2f399be9f1`

```dockerfile
```

-	Layers:
	-	`sha256:38d231eb763e5ff64bc492bf6b2b2422644132403b0bc2cdc0f6f97fe200dc55`  
		Last Modified: Tue, 17 Nov 2026 21:35:04 GMT  
		Size: 595.6 KB (595632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93bdbbd78ea3efdd3c95d5029220c80debcd48f32dcb5cfbac78b8000190ef78`  
		Last Modified: Tue, 17 Nov 2026 21:35:04 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
