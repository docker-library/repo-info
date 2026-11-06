## `amazoncorretto:27-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:97313f8ca0705ce1d51a90538465d3eb72dd1836ac61ce10ed6527c6ec1149f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:aaf0a70773eb91f62e389a1d9d4ef64c4708eb0c135b035f78ff4720940f6c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187260687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f18804c6cfa42dd9530b2828e3ed6a0bd06ed6bcc39e344df5ac4f152c1c1fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:36 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:14:36 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:36 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bba1f16df54f6480ebfe4c89d2301a346af9ee6adbe2f8299d7812cc6226f5`  
		Last Modified: Thu, 05 Nov 2026 19:14:56 GMT  
		Size: 183.4 MB (183408098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:42dfd3c64b84a50e6c1051d91a9177111cfc05334d96624ed0458ec28177fe8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 KB (586438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb0d690b48c11394723c7b6a78a6c8430af00827795bf9235d0825775088f239`

```dockerfile
```

-	Layers:
	-	`sha256:07ce6ba13feefb4f6c49d24563124237fecaada69037417c8c63c39536d0347d`  
		Last Modified: Thu, 05 Nov 2026 19:14:53 GMT  
		Size: 577.1 KB (577066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a95da8205528aa07319dea7dfd09e794e09b12a644a1aacfb0171032413857d`  
		Last Modified: Thu, 05 Nov 2026 19:14:53 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:10c55af164a2dc1780c76de8cf2b332a4460d9a266839b4eb682c22cc2ede406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185236141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35edfadc1d5807141ca6d85c9215ac15f21e843762658c0e3ebbe7b6df8e1c3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:20 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:10:20 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:10:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:10:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:10:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2774a0b1c473416a82b0d5ef6d7e0e30344b880d2ba74d7a3da1ccdfc2b8aecb`  
		Last Modified: Thu, 05 Nov 2026 19:10:41 GMT  
		Size: 181.0 MB (181045920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:452dae41d2608bc4ba81972bc38f9906747537179dc72de27ff0f8fbd5fb3ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.3 KB (585308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e78febd4396abede0876d5081d9b18c21ccb27d295cb768a34944861d1e443`

```dockerfile
```

-	Layers:
	-	`sha256:55f21b9aa1c90a45ccfab6c8a07cba8faf6c763c42ce5b8a7c42c790303e1be9`  
		Last Modified: Thu, 05 Nov 2026 19:10:38 GMT  
		Size: 575.8 KB (575832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ba9ff9d76e998f6cafff8ecd41e1776b0974b0d354e9d0d994a431f04b1d9e1`  
		Last Modified: Thu, 05 Nov 2026 19:10:37 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
