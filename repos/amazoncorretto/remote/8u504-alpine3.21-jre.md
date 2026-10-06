## `amazoncorretto:8u504-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:41b3917963d9d33fe67b4adba23357458d324b3702502c044bc6894db8f67477
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d03466f21d7474c0e2a135b1d5a29e39e167ce61b29e09cab11788a1bb8ae49b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45444834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4ced8aee272df7796b4d8d7e5eb9b4b503856492758927397267e3227138f4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:35:59 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:35:59 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:35:59 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:35:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853d5989ce8153e23a0ed1e59e809237603bddf070a16ae59900ba643fa8c5da`  
		Last Modified: Mon, 05 Oct 2026 21:36:10 GMT  
		Size: 41.8 MB (41818814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:499ba273ee1f42f7da3470873974b6608e8b7dfc979e3da2a9b81ef0d9579fcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:581423055ef078faa889a5c93a59c85a1e08bf4f0fecffbbd893cc1535df970a`

```dockerfile
```

-	Layers:
	-	`sha256:e4299a096648b5ab1e87976fe5b1f4d3ffd83facdccdf6310b9ebf89b8b0bee0`  
		Last Modified: Mon, 05 Oct 2026 21:36:08 GMT  
		Size: 188.7 KB (188725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01aec450c9107b6bc2043a9a4a92c6bebab36412e5321ccb0a06d39be904e37c`  
		Last Modified: Mon, 05 Oct 2026 21:36:08 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine3.21-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:db75ac5792fe0764a7aea8eea875523db0a16b0209820388fef091d9632fb7fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45550170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:487c060f0d7adcca22e11edbae888e12d0a4a5d6e3f1a773f6a3ec5a2545c285`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:29 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:29 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:29 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1beed1f85ab058cb8c0c3c572c8355fd50c82700405210aeae3cdd30d7544641`  
		Last Modified: Mon, 05 Oct 2026 21:41:39 GMT  
		Size: 41.6 MB (41575669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0622e0b0df5dc58f7d4aaf431678c79478b0a4ca855e05062c4b5df9cc7b098b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 KB (197569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846f87c789e4e817320eba48c89728b9880baccd1afd7b631e821355ab439c67`

```dockerfile
```

-	Layers:
	-	`sha256:02de60f2e55e34d884399652d8d5498ff65750bfb8427c96fc47b02c8100a3af`  
		Last Modified: Mon, 05 Oct 2026 21:41:37 GMT  
		Size: 188.8 KB (188833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b498258c8053ec717cccf30b56be11194fa446fdb930d9508b8e5a19bac7b9ad`  
		Last Modified: Mon, 05 Oct 2026 21:41:37 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
