## `amazoncorretto:27-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:62aa8df91162728b03904d025f462234f623aaa88c10797e92f1521039edb941
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dec9119e56f4b8914b41d1d4a7cc332cc3f355e2d47c42857c9b46251b2a9b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187031035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ac4e2e5c7caf27cddadfffc46fbc6917320271d4f58568a8fed12b744fe0ac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:27 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:14:27 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c45bde8f02cf59db9def98fcecb1eb12ba03e67da5a3fe6878953f1ebbe36855`  
		Last Modified: Thu, 05 Nov 2026 19:14:46 GMT  
		Size: 183.4 MB (183405633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fba75c2d5142787ea04323bef112a5be5c5dea2d7d368f27e4bd305232cc34f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.0 KB (590982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9073c9bf6b4403d4d0eeae8f731afba6b7e33531ca58ce929f0cf9942aa850`

```dockerfile
```

-	Layers:
	-	`sha256:589f40b0ba98afc84acde9afa466c3858037ece9c8c716b8f67fdc2b88e6bed7`  
		Last Modified: Thu, 05 Nov 2026 19:14:42 GMT  
		Size: 581.6 KB (581610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba06429033819a6a390ba5eccaf1b3e451e4710cbc2255eb204886372572d66e`  
		Last Modified: Thu, 05 Nov 2026 19:14:42 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:01a0d0b3faa1ed1e87e1e1c67be6a42f4df9bbe64d18ebda19d333f831f7a5d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185010876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc051f50b9107eb1f92d72d39575ab7f81e25a5b1a5b2cac2462b3a72e515f8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:04 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:10:04 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:10:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:10:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6e71c22220665861183ff7efcacd03555b1600a52af0b9e43f40bdb3fcda46`  
		Last Modified: Thu, 05 Nov 2026 19:10:25 GMT  
		Size: 181.0 MB (181036453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0a8697b16871900bc1310bd0427b96ab6df50d2b6cc90f9448a8db2f50b7a91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.5 KB (590501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc62a67ecc93062fddfae71eaedbec36909a767b8ad206456ee671c97ed47c44`

```dockerfile
```

-	Layers:
	-	`sha256:a654b55ae604fbaeb18004cd83a2d7688ec6c39d752fcb762fd87ac0bffccb68`  
		Last Modified: Thu, 05 Nov 2026 19:10:21 GMT  
		Size: 581.0 KB (581026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd72a3ef53b6358081136e981725cf75a38c1f46822e6a349e8b07ceb9c8d1bb`  
		Last Modified: Thu, 05 Nov 2026 19:10:21 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
