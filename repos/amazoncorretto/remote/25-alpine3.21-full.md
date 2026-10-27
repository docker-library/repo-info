## `amazoncorretto:25-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:d06273fc00c21f133c8f04e1c7f7ac57e8b30879d03f4d1d78b8e52e9464ab34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3faa4382010961ba9e1f134cdcda6fcb7138c8e78a74c10eb4f701440ecc3eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185114869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c345f5c4304f99692e20646df0de239dcb50d9e71557506f02b8442be81dd8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:28 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:40:28 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:28 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b38cb23b52713eb32e719a95ee4ed614812b98e1fdee31dba99bf656ef614d`  
		Last Modified: Tue, 27 Oct 2026 16:40:50 GMT  
		Size: 181.5 MB (181489474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3b74afdbdddad43eecaa4b6193dc9c32866a84dffe41e2c9b65ccb1ff09b2fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 KB (605580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271e46c03e414ac0a3dcdf544b09411dd3525989689de2f2db950be38eab4832`

```dockerfile
```

-	Layers:
	-	`sha256:bd157cba1f70a9dbdb31572a31402d8c837d53a99b0fbbd6636453f4683ee0f9`  
		Last Modified: Tue, 27 Oct 2026 16:40:45 GMT  
		Size: 596.2 KB (596208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d4001c1fd5bd3164a10a32ba36d0d8e0c87033aea0329517dc966f045825fdb`  
		Last Modified: Tue, 27 Oct 2026 16:40:45 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:605a408fc7cfb4e2cc18246c4201233b19f36b86521484c4c7159984be9eeaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183043020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c09cfad3a6945dcebc6efcc53e713b820ca5d8beb29e044763319329600d53`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:01 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:41:01 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:01 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7424f3e70460d755a8294a92ad16d463fc1b8a142ab8cd5428264c4df855fd62`  
		Last Modified: Tue, 27 Oct 2026 16:41:21 GMT  
		Size: 179.1 MB (179068649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5615078b5f89813443e02ef53ea144322e3d62e1df8032e41bf97a9da61af244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 KB (605100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d7010be3b87ac7d953e4fd981ce20c4108ad706dd0d99caf4527ab863847d1`

```dockerfile
```

-	Layers:
	-	`sha256:509bbaed09c53490eff2c7e6b3913e41286de8dd7e47e3d888f3ab822589f978`  
		Last Modified: Tue, 27 Oct 2026 16:41:18 GMT  
		Size: 595.6 KB (595624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47e51e45efb590138e6cd78f9777d9d75a4ea943f5d7263f31892387efc3a461`  
		Last Modified: Tue, 27 Oct 2026 16:41:18 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
