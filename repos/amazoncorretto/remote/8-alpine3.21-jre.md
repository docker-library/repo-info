## `amazoncorretto:8-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:81c3ec7c4b305328ddf390d38d2a620427ae779ac925a8e0cf39a907bf60ab8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c63f7aa4d1aa2bcf364cc1f6ee44c2bfdd631c9331a51e91746da0c7aa0f1823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45446383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6cb37315c07fe3a90c2e07bf9bec7d571210f8af0f08304d6bbebe3d4dc9a4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:33:49 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:33:49 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:33:49 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:33:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294ae5c6b9ce76adbd44a2091362ba14b4983bb9bd6533eb1556a37ab5c87a4d`  
		Last Modified: Thu, 17 Sep 2026 21:33:59 GMT  
		Size: 41.8 MB (41820363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e0dca6b792eac178fab160a8af482878d5a46ad7852e3973d1d9b2a4b7293e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266d5329548cc2691b9c0aaff892fb308f41b4fc2dfde841aaa2f65fd27da9b1`

```dockerfile
```

-	Layers:
	-	`sha256:5dd920d217c8911275bf2ea35608d49fd8cbe4faa3a8b5aeae3a78ac4b749f6b`  
		Last Modified: Thu, 17 Sep 2026 21:33:57 GMT  
		Size: 188.7 KB (188725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c23016b21be90a494edfb9d4b69d63741215222b92c6f2621a3f1e0bdc9c9996`  
		Last Modified: Thu, 17 Sep 2026 21:33:57 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21-jre` - linux; arm64 variant v8

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

### `amazoncorretto:8-alpine3.21-jre` - unknown; unknown

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
