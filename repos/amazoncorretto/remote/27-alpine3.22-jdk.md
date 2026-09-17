## `amazoncorretto:27-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:cc0652b0b25d805df0b34d9e93186cd21e659ca02a34ad778957cbffd99085b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bfc67dfe8c33a6b01e0f5ae4f24422840735546ede9878571359ab4f56946df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187163176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e274d3bc63c6f2becc028e626585b51c6181255e83cdd63cac00e393436d3a82`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:39:53 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:39:53 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:39:53 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:39:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:39:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a38ee464c0fab5c9639747cedf7b8f328f29d04e2c4a6e67b559d73343ea22`  
		Last Modified: Wed, 16 Sep 2026 23:40:13 GMT  
		Size: 183.4 MB (183375581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:05c8368929e8ea62a77e6db69425b0214455e2371fba7d2dfa5ee1b43838439c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.7 KB (587714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a815411ce017330728c3ac963e5fccec176d04067cecd709842019562386d181`

```dockerfile
```

-	Layers:
	-	`sha256:b405c4dcda654ab20f2fe8c5f8043a99cd4690014432f89c7fe5297684a68c72`  
		Last Modified: Wed, 16 Sep 2026 23:40:09 GMT  
		Size: 578.3 KB (578342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bbc3fc5f765b24111a64d1fb1b31f61dd5485add9de4451b5cf15cc66035b93`  
		Last Modified: Wed, 16 Sep 2026 23:40:09 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:40a1ff3b0a0913ee0f1c62508b54a5ad454e8173d7c03220eb7dda0cf1495c39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185122291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3367e1e0b6ed6879c8a217344acf201245a64033fd6eb4c39a351963e91a09f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:42:35 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:42:35 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:42:35 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:42:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:42:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d65bc19d2d7cb4e9992e30c4f764a284ff5f5d2ce0210e3770e3bed60b0cb5b`  
		Last Modified: Wed, 16 Sep 2026 23:42:55 GMT  
		Size: 181.0 MB (181001805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8b7d074f0a3e9001cb6e69c9cc40e6d232378197c73ae5e6e311d9cb3568901c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.2 KB (587234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6734f338369cb085184bee9cfe1b7359116a6bec088f7a9b6488eb6677c9730c`

```dockerfile
```

-	Layers:
	-	`sha256:e744c65276e63f141a5c260834a629db28d076423c0b3471570eb83bae996678`  
		Last Modified: Wed, 16 Sep 2026 23:42:52 GMT  
		Size: 577.8 KB (577758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc57ed7844108344fdc14fb598e9bc062dfdc7af08e9db8ab9c019ea5fb982f`  
		Last Modified: Wed, 16 Sep 2026 23:42:52 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
