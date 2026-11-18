## `amazoncorretto:25-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:6198a628ef255ef0804ce8240303968d417eb30d6286f58857fea9ece3af1963
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9ba2c914dc865b4cd804c92d03fc58264c89e5bb0130fec22e3902cf2f3a8e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185373876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097d559fe46e46588b54dedb58fb7b4822a1ab681f39a375b1d5f7de5d7af190`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:54 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:54 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:54 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e6c3b1c1fbf25a3b64bddde5178de8344e59cd1b143ef50bd47593f9bf5eb4`  
		Last Modified: Tue, 17 Nov 2026 21:35:16 GMT  
		Size: 181.5 MB (181521287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0d5fe22b8e24533a59872c9076a587deb95f46a7ee24196d348c0988d6ca4a6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.9 KB (600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9fabe242d588161af079f90e2adedb78ec185d589eb0ee6e42435c33c5904f`

```dockerfile
```

-	Layers:
	-	`sha256:bfe4a5be9be7b813a9d2643a46795523b31dd9456b3f610f87420e72e2320a1d`  
		Last Modified: Tue, 17 Nov 2026 21:35:12 GMT  
		Size: 591.5 KB (591504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b86874c48e06318748ba6ddcaba1b344d6ee5beef6c0b5330bdc5c34beaee567`  
		Last Modified: Tue, 17 Nov 2026 21:35:12 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f698eec936a9c95188fab18b1c072b38747a5fdfbeecd4b048fdde12cea75bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183277356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb81d416351ea382bd4ce7dc0951be6e59a0dcd948f46566be8e4f2867514d5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:56 GMT
ARG version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:56 GMT
# ARGS: version=25.0.5.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ce86b07c555fc0a675d0a0803227802cdd53a615797bb25995bb43a4e7fc60`  
		Last Modified: Tue, 17 Nov 2026 21:35:16 GMT  
		Size: 179.1 MB (179087135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eaaf775ced9dd0d2d7a437745dff53b8121f3cff461d7b65b0c66f17e45f3448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df4efc058c5ef60de9bb916138d4fd0590ae833c55a560b08f42fc2e20c1aeb`

```dockerfile
```

-	Layers:
	-	`sha256:72e6e790a6ca266c572059aa51e33e6739a54d656a85febcc77f4f98a64c8885`  
		Last Modified: Tue, 17 Nov 2026 21:35:13 GMT  
		Size: 590.3 KB (590270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad562e79195f7462497dd576fda4a251815fc9287755ffd88a7c586da1ba0dae`  
		Last Modified: Tue, 17 Nov 2026 21:35:13 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
