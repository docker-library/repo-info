## `amazoncorretto:17-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:7546980f739f5385350eb053a3a5490544c46ec6a42c0c8b1608c2513cffb4af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c033852feeb0daecb12aa9ff02488aea90c7c56e7924d256336b075b0d608ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152781355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd88b00b762322a241ace401b2809b23d085a0924b8974d4322d360da82d989`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:15 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:20:15 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:15 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdbe5a49bf401bac009cfaf714d76086befb40be30b6b0f8b2f0dd54c47a5d9`  
		Last Modified: Thu, 20 Aug 2026 17:20:33 GMT  
		Size: 148.9 MB (148936934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b5aaa5036692fbdf59dcb7fab3a494f6a4595c83167699a9d94501b0602cd2d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.9 KB (591886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cb03373855f0189ba9943837d7da74ad162449765dce4594a43aa45cb8d771`

```dockerfile
```

-	Layers:
	-	`sha256:c34d9717f117f7c1c63f3a4e5e65f418fad511e7d809669c647f7be4face271a`  
		Last Modified: Thu, 20 Aug 2026 17:20:30 GMT  
		Size: 582.5 KB (582507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8c73a9687b93d756fe3114ad2cd07459ac3ac0fbbe3fc459d7a01f6d3850701`  
		Last Modified: Thu, 20 Aug 2026 17:20:30 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e49aa6b1a0407defa7847b97cdaf4b06f4dbe5fc24f45ba2c7cbdc04c0ec47b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151545054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4c2399e8d4c07ffc41afdb580ead976d36ce884f05ba3f9af9a1f12787e012`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:59 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:16:59 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:59 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcccdd9d1ff7be3f62fa770f50b8660b429fc2a44f7564ec4f0b98903ad01236`  
		Last Modified: Thu, 20 Aug 2026 17:17:17 GMT  
		Size: 147.4 MB (147363194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:43c9612e2a7a2a89f2cea6b8d3bc5fcc76336221ba92cd2506ce86f370f97f01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.8 KB (590759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07effb2559f88cd19215bae880ad48862732e68bb0f8c73a309ea6c9507539db`

```dockerfile
```

-	Layers:
	-	`sha256:719f459cae151b0fee16f67dc9939a44518b6071ac7a4daef3b2716871dfcade`  
		Last Modified: Thu, 20 Aug 2026 17:17:14 GMT  
		Size: 581.3 KB (581276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:233ed86b0d2af6a45b785e5a098bda382b6be6c69fdd82f25effd5a24fa76f78`  
		Last Modified: Thu, 20 Aug 2026 17:17:14 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
