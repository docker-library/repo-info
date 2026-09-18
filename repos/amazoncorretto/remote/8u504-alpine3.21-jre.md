## `amazoncorretto:8u504-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:0afb851f02a5716b1119dbc702bcff7ab2c623000c14c13a0ce0bcce52ec68e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ec9b099a64d084aa14ad63b8f72f3e48faef1c628c8c7beb86e799b61e82943a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45467252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fd598e52349b9d99356b7bad4a3a9ab8f7c2e9646113e0822c21b59ead4d62`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:43 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:18:43 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:43 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc34d422295b698aeecc0c42c6724cb8f184b3d68b878c88de4add5759527a0`  
		Last Modified: Thu, 20 Aug 2026 17:18:53 GMT  
		Size: 41.8 MB (41820377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:25c926b01cd67a8924ec0e4dbc924a6fecd46b9f9be6bc46627676892a52c994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:014c4f7ed39518230a7ff517c7f518dd0d527e60c71c8c8aabbbf2c8e7946510`

```dockerfile
```

-	Layers:
	-	`sha256:3dcd30476d5769d83812a856289ad3a8ebe19bac134c8f6d5a04eda40163f1e1`  
		Last Modified: Thu, 20 Aug 2026 17:18:52 GMT  
		Size: 188.7 KB (188725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:888a678ebd493427974ecfc6483c0ded190c41065bb6f988f34fca31335f13f4`  
		Last Modified: Thu, 20 Aug 2026 17:18:52 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine3.21-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2f79b5cad12619da06c838081cbe02c3c4753d74b9450674d3f31b73cb9d451e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45548186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff703cba4a191e9ae349ab1281a840f5cb52f05fba0f849253c55876f4bd66b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:07 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:07 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:07 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc069d76fbd2f8b8998dd482016f453c8963b821251716eb6f82ae488f3f424`  
		Last Modified: Thu, 17 Sep 2026 21:35:17 GMT  
		Size: 41.6 MB (41573685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:27c5bc5090cc359f94123aefd2a9fcecfcc47f6b3a6dc2cdacbad86e72ca6b42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 KB (197569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085b7f80d40ac4a707530fcd46d15535c152f46a6788b17b7666480536f55279`

```dockerfile
```

-	Layers:
	-	`sha256:b358e1a425478d5faaff35e03a7b48b5b7bf6e7ca8619ebe9de3b06001ee456a`  
		Last Modified: Thu, 17 Sep 2026 21:35:16 GMT  
		Size: 188.8 KB (188833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:224494427416669a12a55eb5469e7e45cb8dc00eb37b6fb7b000864e5e404199`  
		Last Modified: Thu, 17 Sep 2026 21:35:16 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
