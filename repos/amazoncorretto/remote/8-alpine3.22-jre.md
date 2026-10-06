## `amazoncorretto:8-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:e5425f993cc8c30c3650eb080538c2edf288d3927ee95244c02374cb6be4a6b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d36915ec00acfd6f93e6084d79006bbbe997642217ba917a018e9842be865c9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45606799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6daa015314c492da9924a42102b36b18c4ec270d766d368faa412bd9d82a05`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:45:37 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:45:37 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:45:37 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:45:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417383ceb19a10b89f6828c757095c873553617869fcfddc72a9b2b6dd61465c`  
		Last Modified: Mon, 05 Oct 2026 21:45:48 GMT  
		Size: 41.8 MB (41814724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:73a28a38317ef64724d5b5af26247e31d0d60bf07cad4eeb48be515ffec6930b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 KB (197150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19cb06b71cd5ef534fb05e23052a5cbd503d7334b5a3ecf1a4bd5b2b4049a57b`

```dockerfile
```

-	Layers:
	-	`sha256:1f55e725bc12e7cf628a53614f37d2ae96fd294ed9695f73a50585cb8927cae7`  
		Last Modified: Mon, 05 Oct 2026 21:45:46 GMT  
		Size: 188.5 KB (188495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:208834a5861fe5fe651f44c0b36ef8aaa192041b6e585b132d91e6ee7a73bea9`  
		Last Modified: Mon, 05 Oct 2026 21:45:46 GMT  
		Size: 8.7 KB (8655 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.22-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e84f01d6c345b1b1ee73e7e03b7ca32b8eb91ee0f620da36b49b94bfcd7b8fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45694832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8d109229dbeb0306fabe54e1c3cde0ea907afc5f5f924e9af139eb0ea89d1d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:43 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:43 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:43 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9c48df94c89ab071bb092b852cccb7fa9fbb305387d75c8b6fb7e05151b9ffc`  
		Last Modified: Mon, 05 Oct 2026 21:41:54 GMT  
		Size: 41.6 MB (41571748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2e1bbdb452c94c6e005e13ddd1c1968d2c929b5acc68217d57fc1f34b79d9cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebea045b9b656893fd0ae75f25066c31790b899ea98d4da36ae649cfa2dbd21`

```dockerfile
```

-	Layers:
	-	`sha256:8361f4b148ba050f00c89f3e2243a06c18f1083004fc15de2b46bba99574f07c`  
		Last Modified: Mon, 05 Oct 2026 21:41:53 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4c416a80eb4c9797517de27f652e7863a4c814e12fad99b9c375490937a514d`  
		Last Modified: Mon, 05 Oct 2026 21:41:52 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
