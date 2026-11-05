## `amazoncorretto:27-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:30508c9220a0d6f5a94b73ac32a50438ef4b5c483dd5bb9cf39cf545b9f6bdda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:76677900e154091dbf9b153e461d93f7e3fbb4305ae008ae1a568a655dce0acb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187205061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cb276f931eff3b7e481f486e9e8a1bac97fa1c6a7418e0f453c66602aa5573`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:34 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:14:34 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:34 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ccb43ced13a278733e0bbe2996446af023c256640c9db2a5305abad477381e`  
		Last Modified: Thu, 05 Nov 2026 19:14:55 GMT  
		Size: 183.4 MB (183410686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5fb020318a2dccddf050e225c9850a3a6ff5936064f9fa4ab733e25ffae13a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.7 KB (587722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df86e61b46dc04ae5c43ecddbdbe1f523e6cdb2c14035dafe4594bef8d24e03`

```dockerfile
```

-	Layers:
	-	`sha256:de036a7b81e3346f0d1a859216b0fd4ff8be9efeb15c018e54164d82ed4fcce2`  
		Last Modified: Thu, 05 Nov 2026 19:14:51 GMT  
		Size: 578.4 KB (578350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:605c7ed7403dff37f6c97067e9feab9dfa4e277a3f87744cd4da72a854238d90`  
		Last Modified: Thu, 05 Nov 2026 19:14:51 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:159489662f341bdba986b4fd784d00af3b7d2932b7e52d3272e8a7df81ea1db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185171626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf47275b3813a1622f4648200e4e6f9bcce21d101ce59e2870b5eec68cf6102e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:21 GMT
ARG version=27.0.1.0.11
# Tue, 27 Oct 2026 16:41:21 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:21 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f30ac937d8dd8bb4adb421ec6bef501655a32808abb989c173885cf019ca3b`  
		Last Modified: Tue, 27 Oct 2026 16:41:42 GMT  
		Size: 181.0 MB (181044245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e8eed0ca9625d701bae1460837d08368e1ef9fd5bbf7221f7396d73c7c58cd90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.2 KB (587242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0313bb9e35dc3e387d7cbb3ac97d05fb38c69007807c496a058a3db8b437d1e`

```dockerfile
```

-	Layers:
	-	`sha256:122e0dd82d9bc5f5a1ba806a3e98290cd55e12764b1ee1e8b56bba841b38e673`  
		Last Modified: Tue, 27 Oct 2026 16:41:38 GMT  
		Size: 577.8 KB (577766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d92c47ca397c01c8772680f2d7ce4378d8e32ce8c70d41e91f1270f58bc72ef`  
		Last Modified: Tue, 27 Oct 2026 16:41:38 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
