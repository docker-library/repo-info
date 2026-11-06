## `amazoncorretto:8-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:6d5a9712e3af3aaf2d463df815e227d5caa124349f882c158dc415ad477f2061
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fe46f5dc3585a14cb9ed927fe67af8881ac676c6f6bd6823543e4e396bc64911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45463896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d85c69eacf4b127b30e2f5016e5e6639bd040827d84eeab66b97adb21859248`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:04 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:04 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8e4e5f4ad6ed8d620fae5e5df46591312f791870c401ddee7dddabf2d7971a`  
		Last Modified: Thu, 05 Nov 2026 19:12:13 GMT  
		Size: 41.8 MB (41838494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:075da68db06cd707310a2585f1233cb12f3f0bab67ac9b21c82b6c9077a82e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74aca19e70e4dcf27530290185b0b6689a6aa67e535d5b64392f34def796bcc6`

```dockerfile
```

-	Layers:
	-	`sha256:83c63b121c947617ab4efc343b649a0ae2c02e7cb3e30f2790cd573839ec20eb`  
		Last Modified: Thu, 05 Nov 2026 19:12:12 GMT  
		Size: 188.7 KB (188731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2714a9e762898c881f4765f00c130261601f118da9887b9cd742050d11a6ea9c`  
		Last Modified: Thu, 05 Nov 2026 19:12:12 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:02ec661b59b62095118144da465d1e967bacad636934c23bc846ae76195f0ef1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45564701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b9fffa4e968c8c5c3d18ba918220651d39658af092e09c7e87e0cd0dc13932`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:07:39 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:07:39 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:07:39 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:07:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650400b6712da15a136ee510bffad86f188ac0dcae1e3f11628d4f2e1b395563`  
		Last Modified: Thu, 05 Nov 2026 19:07:49 GMT  
		Size: 41.6 MB (41590278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:401e9eddf061aace060367e7bd336bcbc54e00ca4ad561b0bbc89bdb4b32b1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 KB (197575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3936b110ffa8b8508cfd452293bfb94984600de8f42a7590b8090a3eb438b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:3fa62b5eef93d86fca12d2d10098b7c85ee809dee8e09ec398b0dca12c41e8fb`  
		Last Modified: Thu, 05 Nov 2026 19:07:48 GMT  
		Size: 188.8 KB (188839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46deec063b004b718818b3848f31da25c591b5a21c6eb6bd96a416269f139748`  
		Last Modified: Thu, 05 Nov 2026 19:07:47 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
