## `amazoncorretto:8u512-alpine3.23-jre`

```console
$ docker pull amazoncorretto@sha256:f7707c4a04d54d11e8970a6b15c9530c7000b4f57c42577e41ca13cba232b2b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine3.23-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7f86207d51845e783f139b76640a1d1fa30e0e7c365a5a7496ff6f7c8ea49e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45688766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1c8f7ecf2b6837aba995d9589977a85ed5fa6bf7bb976b2b4622595b8155e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:20 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:20 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7023e0d3dc644cffda326cc42c453679bfdfba0be8cac179ae03d18a6748af32`  
		Last Modified: Thu, 05 Nov 2026 19:12:29 GMT  
		Size: 41.8 MB (41836177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0053db1d42cf9ace7470b653a73c0eea3538eb03a315ec608790ce23ece6c2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 KB (195867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafe7aee7189c99d5ee3a0cbc61413d4db5e38665f02a3971d37212ddd40fb35`

```dockerfile
```

-	Layers:
	-	`sha256:da198c7ffc0459e02870cac2ef8c5e1fbf7eabae753c3ca32baadb5611e82546`  
		Last Modified: Thu, 05 Nov 2026 19:12:28 GMT  
		Size: 187.2 KB (187211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:476ea5cfe5fb16da0b531af50a6f8dbc7e511abac2e8cb7c613125e5308349b8`  
		Last Modified: Thu, 05 Nov 2026 19:12:28 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-alpine3.23-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:10f7e01cc7bcafa185e541b334dd2ef30177eacd9c5ec2f78efdb5117bf79705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45780918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:681895d5d69d18bcae0d0c2609db936e13be61a2f85d4487c4d357ff2431b21e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:03 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:08:03 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ad66c72caf350c08c90bc66c9cbe9f172d34ef398f3205af21e32eeae2cb60`  
		Last Modified: Thu, 05 Nov 2026 19:08:13 GMT  
		Size: 41.6 MB (41590697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:31f671a939bd0146318527832294f53246a907feb36889c1e7b68cd526234aff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 KB (195405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23186b0f632040388efb2377ddb3b3d9a8950b398ae0fde81671011c729a762a`

```dockerfile
```

-	Layers:
	-	`sha256:80e41206c86cfd1f7d1b355ca81547e117820f29bcb6aad69c777ceba822a8c6`  
		Last Modified: Thu, 05 Nov 2026 19:08:12 GMT  
		Size: 186.7 KB (186669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e9d10c1a7564f60c9058c82c9d680d0de342d6ce9cff8c08a8dd33e0c9fa7e9`  
		Last Modified: Thu, 05 Nov 2026 19:08:12 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
