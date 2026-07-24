## `amazoncorretto:8u502-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:cb010cc1b1718d3f62f2c666399ddb9e969765c91ee42439fb54d2cf0cc2b43d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-alpine3.22-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:214f33bb14275613c71f95d0477ea7f7fb83ac893ab11072d3c133975a38553c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45600730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d96299a19445fe1d789d8c8bd08a717b4b0d9576d360077dc37f18be2b04217`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:10:39 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:10:39 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:10:39 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1166e72ca31f963086338732b1194e7157a6d0fc3ce368fd6dd835a34d608088`  
		Last Modified: Thu, 23 Jul 2026 23:10:49 GMT  
		Size: 41.8 MB (41813135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:139ef2a3bbe65d5761ac97221c0d2c9cc40a79924978fff7149ceefd5b9a55d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 KB (197151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0224a344f931015a609c1a4033978e365005a9a04e5597d8842d8ce64723d55d`

```dockerfile
```

-	Layers:
	-	`sha256:f5a9b97ccd55d0601c408252d20adb0352f19ad1942749da2602befbd7ae5db9`  
		Last Modified: Thu, 23 Jul 2026 23:10:48 GMT  
		Size: 188.5 KB (188495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf88b69df1a7e956e24c6278ceb902646d4c2d1b3c1b782a3ebdd944a78277c2`  
		Last Modified: Thu, 23 Jul 2026 23:10:48 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-alpine3.22-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c3d19890f3e0d3205a5fec00ceb171837c3564f25702e4a7c1a5324ae0968f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ac8d0a1e6a17986b64108063df960d0559b1e5a41a2f1d07778126f03fbadc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:18 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:12:18 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:18 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0545bd30694e79303ece6020976435ed91902e9679a5470e20c1cfb8dcd6bfb7`  
		Last Modified: Thu, 23 Jul 2026 23:12:29 GMT  
		Size: 41.6 MB (41564185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f945ec8be18a43d739bed109a92927774acca6ab3e59640db88b89ea6bd4fe4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc1e27d73b797f9d0aaa75bb75f67c6c048c41f285f179b293c6ed2d6317888`

```dockerfile
```

-	Layers:
	-	`sha256:8dbc959893af0ae646544e302356192db9cf0bf8641ba5efd699d4290e0e367c`  
		Last Modified: Thu, 23 Jul 2026 23:12:27 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d60afd17741bb619d9d74191e9d528d7a729ee608ff5cfbf1189f9a95516f30b`  
		Last Modified: Thu, 23 Jul 2026 23:12:27 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
