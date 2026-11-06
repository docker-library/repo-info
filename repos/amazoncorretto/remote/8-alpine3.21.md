## `amazoncorretto:8-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:1c5b9f2a7350e70f75a6ac4cb524cd81cc2b6a7a2990e3bf8b1c2f56e0e04181
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
$ docker pull amazoncorretto@sha256:8686fc4f0b336f99c102a4e9e2c89a9925b98255d6ca39fc8bedfb479d6757a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104668364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6334d3c225e6dac095e286cc96352784cb1c6e65bed86e7c901cdb41e50eadb2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:07:38 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:07:38 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:07:38 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:07:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:07:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67162f98be18a20eb179dc40cc1bf442a95c6c4cd08ca487f1e9bb4ca560e3d1`  
		Last Modified: Thu, 05 Nov 2026 19:07:53 GMT  
		Size: 100.7 MB (100693941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a2068e8ad9657708caff27c2dfe6f4a11813c35784b2210df554ca6c3f8c6d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 KB (260530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7e75c505aecb86d7468d6f112ca6da44a669704062f89d954fb681271f0d2a`

```dockerfile
```

-	Layers:
	-	`sha256:8040079aff2594c001198feb0cfd4c348379008747efc127db0a8518c60799b3`  
		Last Modified: Thu, 05 Nov 2026 19:07:50 GMT  
		Size: 251.1 KB (251071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ee92a06c435e6a5d0914d4edefeda4cbb6614c9999bd70828e92b50517ae3bc`  
		Last Modified: Thu, 05 Nov 2026 19:07:50 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
