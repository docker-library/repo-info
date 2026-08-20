## `amazoncorretto:8u504-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:0cf2ff8ecb9f52b4927b8424c880d06da73e881a687bae36f290e2a877e52947
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.22` - linux; amd64

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

### `amazoncorretto:8u504-alpine3.22` - unknown; unknown

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

### `amazoncorretto:8u504-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c44bc864cef9e17cc0d54f107591d00046023a2edc69bee7e172328f702eafd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104770937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab018712203366c9388bcdba91a0de8884c88cd0c12c6ed884118de97713685`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:36 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:36 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:36 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:15:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec123e53189783f0c6fb2194653d8b3fed128f574cd47c0203a6aa353f76b15f`  
		Last Modified: Thu, 20 Aug 2026 17:15:50 GMT  
		Size: 100.7 MB (100650451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:40899e7f8c60dddc4e8f582a7b86bb157c0dfad887bf36fe33b67b76e0fc6273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849a596bfcf209d879dbf583c52ae7d63a3a1b4adf4027f8f260e7d42842e567`

```dockerfile
```

-	Layers:
	-	`sha256:f4db24bf7840b8e82cff127bb538b6c4f6a4fa269def908db344103a67fe2c39`  
		Last Modified: Thu, 20 Aug 2026 17:15:48 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0dab67cd8f356447c7c2db6bd54e9ee81eae834b7e2c66a904232ce0883fde8`  
		Last Modified: Thu, 20 Aug 2026 17:15:48 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
