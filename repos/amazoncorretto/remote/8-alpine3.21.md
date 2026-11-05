## `amazoncorretto:8-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:0cb3f3de5f07f60689cfd853719e9f67ff5e4518c2b396d51ca3b1203ac888da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6139efe9ed22fdda1073bd2441717e29a8bc4fc61e677f93d5f04a5ba5c58f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104490658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d9a8b3502209cf76801827b243a689402bcbdbe63572c5a4c5fa97b04b3edd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:11:44 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:11:44 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:11:44 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:11:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:11:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef9bf60d4b28cc051dba7e50b82a3f298cf4bd9aa38ac02a644fe55ca82a00e`  
		Last Modified: Thu, 05 Nov 2026 19:11:58 GMT  
		Size: 100.9 MB (100865256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:300b625b2e84b72bb19e05ffdd87d9ef85e415246000f8e682699a536a637495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 KB (260294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe5d510b27763c9629e3ae06b5eb4fd9dd6af12ead311b088eea260605d77ed`

```dockerfile
```

-	Layers:
	-	`sha256:70f74d29ddf88672f5c06061c513d3478d6b7e513b4b1a0bd122ee4f7cff6e4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:55 GMT  
		Size: 250.9 KB (250939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f213502f70e37b2688d048092f925887e41709a48118dc0a0d36d74d1627bc5`  
		Last Modified: Thu, 05 Nov 2026 19:11:56 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c7bf3aecce9a3618466a607bbfba34d4b6ef555056d3b2ee9696c51136547e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104668410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0ebbacd11a568889d5a0427e718c9dc8c6fdd82b5894ebed01c9344ef6b475`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:39 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:39 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:39 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2b270cc43b0030fdd3c30980c6aae0426f1546b8733f27755e67a7859f614b`  
		Last Modified: Tue, 27 Oct 2026 16:39:53 GMT  
		Size: 100.7 MB (100694039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e3acc0c70cc29c552df663ada90f5fb94de4f780bb487a49231f626b0eb7e6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0ac09d517af80be90d203b92c7130a043381e79f3992805d3c9b614c3691fe`

```dockerfile
```

-	Layers:
	-	`sha256:e035b8f7ddcdacf22e554e1a5279d32933d9fc643e19495aa76310b7912605c6`  
		Last Modified: Tue, 27 Oct 2026 16:39:51 GMT  
		Size: 251.1 KB (251065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22e4307734805b302b5a8aed5eeed97d25509a8b460790f539f552a06305a58f`  
		Last Modified: Tue, 27 Oct 2026 16:39:50 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
