## `amazoncorretto:26-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:0f2081ac91b91d03ac212be140051b0e1693b2ace2d60f305b2597e2ec776346
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:85f85a152b58fa677a3da27cebab9057f5f021a7b3d455badd8bf78701c7c6fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189339056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dad0d5332394762d6dc047f8b2462114548868bf4cad351955d0646c7505a37`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:36 GMT
ARG version=26.0.2.10.1
# Thu, 23 Jul 2026 23:13:36 GMT
# ARGS: version=26.0.2.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e5f5a2896b6a47f97614b553f66c89ca52569896711ae285027346d811b21`  
		Last Modified: Thu, 23 Jul 2026 23:13:57 GMT  
		Size: 185.5 MB (185494635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:56f25f45e8489224b35dadee6a80774022a22510bdf624ef3bd2b0aafa1740ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.7 KB (595687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1db461dfab1a7cfbb7b4dee597c84e322ba436010b6abf99d937517d0616c13`

```dockerfile
```

-	Layers:
	-	`sha256:e0cd35d327fae9db0c5642a5cde05559d08fd12d60eaef3ed711fe581f7c730e`  
		Last Modified: Thu, 23 Jul 2026 23:13:53 GMT  
		Size: 586.3 KB (586315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff6765cecbd5f429a8cbafde6657ec388f429f43f9c3b3ff3d7748ab5ebf61b2`  
		Last Modified: Thu, 23 Jul 2026 23:13:53 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:91762e19d24330c52e46ca27a45732396714b6f52da103d5e9a4ee2ddb9d4f41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187208673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052bd4b77ea3e0e84b820cd373cdc868c0e6cfd080a6b22aa688e4fffcacbb97`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:15:23 GMT
ARG version=26.0.2.10.1
# Thu, 23 Jul 2026 23:15:23 GMT
# ARGS: version=26.0.2.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:15:23 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:15:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8883fb05a6113052dbf819f9ad6117db9f7122d874e5e28fcc300115a6ed960c`  
		Last Modified: Thu, 23 Jul 2026 23:15:45 GMT  
		Size: 183.0 MB (183026813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:56116e2ef6b768a35cfa94f30e6440266c07d7d492fd695ce67b43448e109f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4477fa0be849416067dca13dfa7cece472f87a1b0b07d72360d5120b195977bf`

```dockerfile
```

-	Layers:
	-	`sha256:30bbf632aa5f8b0c2fedd8bd1a722c70a9a967ab775e39f7efaed6c3a4d441f1`  
		Last Modified: Thu, 23 Jul 2026 23:15:41 GMT  
		Size: 585.1 KB (585081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcb1c6af0a56efce5c2b41258d419f6f9b4adc7b5ba9f6e45f404b9b70500b67`  
		Last Modified: Thu, 23 Jul 2026 23:15:40 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
