## `amazoncorretto:8-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:62f21a6b63df7964d17ec90957c4fc75d921c00c43dc5f026713d2e463b46772
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:aeb0b3004258f6a90b31119f682b24e858a59364720c3b920ef1d84700c32f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104601893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78113f264aa39c2cbd29a4f893e2e9ea818b73d8080e26f12972c2718ec762b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:47 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:18:47 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:47 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63932824a1a9463497a910e8593a54c94708958bf6c6e8c5271af81e425e9de6`  
		Last Modified: Thu, 20 Aug 2026 17:19:01 GMT  
		Size: 100.8 MB (100814298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1c23c9b95ac5e3bcb6b3316e2e314a08f6eb3cea83e4dc30b37c295fdee30242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7043640db0f2983fe63177a7404ba00dd8abef0ae85fee102715969d6cf41e2e`

```dockerfile
```

-	Layers:
	-	`sha256:a65b681d3c45554961b53fd96962d7878ffd2ea7a2a6f07477d16720460e7991`  
		Last Modified: Thu, 20 Aug 2026 17:18:58 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b21acb5cc92ea35130e4e1256d3a61e53f12f81bc165ea869a3e80646d09efc`  
		Last Modified: Thu, 20 Aug 2026 17:18:58 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4be0a125861e1c3f1d08e7740f2fac85055cc097ef3f488e1923bbe42206cbae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104773577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af281798ebbd858cb73ab17b660213c96de8689d143cfffe111982a1b6022e0f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:15 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:15 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:15 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228184dfe0c530ccb8860c3bf5b75293b7aaca1ab6be866051259eedfbd091d9`  
		Last Modified: Thu, 17 Sep 2026 21:35:29 GMT  
		Size: 100.7 MB (100650493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:06b0d19d16f413c4009f8b2c5795772c6c990fd46ba925696f77dd8a002de7b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21f72f84dc59be45e7d21c849115cc816b2d6a1e4146f8bb288aa974a8d055f`

```dockerfile
```

-	Layers:
	-	`sha256:47f884f8bc54f78fde51242aa9d226fb16fb94cb67b2e5b37c382c991ee4932e`  
		Last Modified: Thu, 17 Sep 2026 21:35:26 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7d9ae3d9ac1694e157ef8000f242801da22420172d9242ce8ba87a77923b27e`  
		Last Modified: Thu, 17 Sep 2026 21:35:26 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
