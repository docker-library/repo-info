## `amazoncorretto:25-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:d8e45d208e54a2cd27fbd5d839b218172b291a5000c9a10f1ba11790af621b7e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:cc88ce81da9a9d57af27dd3c61b070b9de8ad3620b3c7d8e687ebe8130a6ed93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185276932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1bf7ac59ab242ce5124131063a1d0fd1d72a05343ea698f4bde6cd7eb2285e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:04 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:13:04 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:04 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830270e19ac381ae83bdc4e2dd550b3e5088b1f72ca71b52566c4311a60ea6f8`  
		Last Modified: Thu, 23 Jul 2026 23:13:25 GMT  
		Size: 181.5 MB (181489337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:06cdd11ff2e8e4eb83b5d641fa2360ea0d16e2120233f33bcb0f45d59c5bbb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.2 KB (602155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979ada0f7452191e754cfd0719d8d90a939bed49e5d1371e58e6d3a70c105a67`

```dockerfile
```

-	Layers:
	-	`sha256:0aa7b3acbdcc2ea798707825216bdabf39b2af07fbc473325f6c5350c77ef7a0`  
		Last Modified: Thu, 23 Jul 2026 23:13:21 GMT  
		Size: 592.8 KB (592784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56b25bfd56291e487c9c2bc25397d2492f56d29d2f3550a4ce24e0ac2b0ee650`  
		Last Modified: Thu, 23 Jul 2026 23:13:21 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:dadeb9afdc2568113bbf8a2f8268b14ca6b105917c423a49ea892727cac4ddc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183189920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cfb00668f984fbb4fbfb5f4355b7cefbf648838af7d4caba24e7e00fd02d2b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:48 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:14:48 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:48 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf84e6ecf7bab150939e1075c434f7616f81719e3562390fcc3ed5072bdb29f`  
		Last Modified: Thu, 23 Jul 2026 23:15:10 GMT  
		Size: 179.1 MB (179069434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3162346ef765e3c98dbf3a7a011a582f6d838bf2c67c0cf9bb6af196d3f11a73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **601.7 KB (601675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8496eb43245b34504de16b85d0df03c51031836b4c57eebd248e144e715d0f3`

```dockerfile
```

-	Layers:
	-	`sha256:3ee3597fb0e35a99ba6d72a52e0ed9fe1aa897ee535278b030e8a2306d5b7d67`  
		Last Modified: Thu, 23 Jul 2026 23:15:06 GMT  
		Size: 592.2 KB (592200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:548265a70bf6d272648cbbeb4a5de1dec5850e2b8b17c0d6fa00851e47bc3bef`  
		Last Modified: Thu, 23 Jul 2026 23:15:06 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
