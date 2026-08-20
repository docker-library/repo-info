## `amazoncorretto:8u504-alpine3.23-jre`

```console
$ docker pull amazoncorretto@sha256:c8e5c4e4d7ac915af51853dd0eb9463952eb6f60f6f8559fac182013b51aff79
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.23-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7d8cafa5005479a0fb92ec3cdb8f7bb87276373b04b87bcaa1cf62e847286840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45753344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955b650a202f61db36aac6b6d8e56f34820bc72a6af2986bba6af33329211b9a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:52 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:52 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:52 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2331f7c681bd9347af7b988caf1094c1da2a86bc02bfdcea2f4f164ad3134923`  
		Last Modified: Thu, 20 Aug 2026 17:16:02 GMT  
		Size: 41.6 MB (41571484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:62d5f887999f408fbe5765d081bfa351b0a5f40dae16ce4efd5ebf8fc5bc5a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 KB (195405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee43226e6b7770b5dbd74e190df8ff024dd3a597a7e70fc3c177fd9c96dca86a`

```dockerfile
```

-	Layers:
	-	`sha256:690f8191a305b3e367e8e4b813176e19697be8ed22280d540965493090ecf8be`  
		Last Modified: Thu, 20 Aug 2026 17:16:00 GMT  
		Size: 186.7 KB (186669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac41c499305bc3226cac3030208c031889d6d4af336458fea5396a8b75b04ff5`  
		Last Modified: Thu, 20 Aug 2026 17:16:00 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
