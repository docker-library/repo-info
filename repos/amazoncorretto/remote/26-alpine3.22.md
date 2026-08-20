## `amazoncorretto:26-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:439fa27baa29f55628c6384cc7c30677ca2ca5de234baf51388995cf0017ab8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d820c54fceba8268d00e9d494c4cfe66d83731772c7c2473916cd082278cbaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189287430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7914c2d6a30158020a14b4adcc1cad8157a79f9aeb11af1f87d7f49411c703`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:54 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:21:54 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:54 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43fb7fa71c48bc60eb5a887d53c560c73dd9d6749b4fcfa8bc42b5301d43646`  
		Last Modified: Thu, 20 Aug 2026 17:22:16 GMT  
		Size: 185.5 MB (185499835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:12389ca99e83586e60a695bf9dc7bec4d6a08495699511a8388be96de40c646a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (596975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177f505e1d2a1f8b31aa3c0d92d7c9925d34e31b78fb37a7cc842f0bce5b54e3`

```dockerfile
```

-	Layers:
	-	`sha256:e21b60ac37f29667f7c3c3dc91087082f4082902dce11acfe83e05be0f0a32b1`  
		Last Modified: Thu, 20 Aug 2026 17:22:12 GMT  
		Size: 587.6 KB (587603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f297bd1d6bc985d4fe15b0f578462bea94a8a46f5aa355fce06c21a9bb6113e`  
		Last Modified: Thu, 20 Aug 2026 17:22:12 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c437527f0c1a3e3d4df005bcebd7b6fa28aebf75f1858073b856f5cd40ef7e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187148130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf91b6168834678f6d615e23af5385747b2b66b017bc00994d1b6e175f07f2b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:38 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:18:38 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:38 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52025dd66e73d3a6120236a3663e5e8006ee94705b7eb4b5323e21e0f878b235`  
		Last Modified: Thu, 20 Aug 2026 17:18:59 GMT  
		Size: 183.0 MB (183027644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ac5bdfc2bd96c8f853ec77e44fbe4251576e35f59b9a1ecbd094f8f51634e556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8644c757c702300f24e814fc3d2036d19011e0b1186dc61960471715af2ad88f`

```dockerfile
```

-	Layers:
	-	`sha256:f67e8cc0212c2756d30ddcc64c3784fcf05587c5e23f7a439a8aaa5845fc4116`  
		Last Modified: Thu, 20 Aug 2026 17:18:56 GMT  
		Size: 587.0 KB (587019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d5f3e3144ed761ebd482ab87018a4c9ea1eb2e64ffa1496648341ea510c8c60`  
		Last Modified: Thu, 20 Aug 2026 17:18:55 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
