## `amazoncorretto:8u504-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:3e90b9517e7ff4ced4f3391ad4da10afd020082cfcec4754cb758ce26a3821e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

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
