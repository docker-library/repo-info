## `amazoncorretto:27-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:d05b81eebb355e361c3a856b32d5bf4a1ec1515b651e61150ffa88d6369c005e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:550aa9faa1ea0975719d316660e46c2b274a97f89f57d11e14f162ee09c6c932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187216753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71909aaad125f6e5c8e091df51f916c969b0f582788e26cad7b6f70c12258171`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:40:03 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:40:03 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:40:03 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:40:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:40:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ecf58e2ae494b09d38559e9c9399364693b1d9ea4f03306493258e38ff09043`  
		Last Modified: Wed, 16 Sep 2026 23:40:22 GMT  
		Size: 183.4 MB (183372332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a5fba251dbdc8968b878f80144da9cd2ff8981a219902a3f937a4308f446dbe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.4 KB (586429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8271cbd4b0d875953220f3ebd565588a5ea5b4306c3cf269654294d9df44d5e`

```dockerfile
```

-	Layers:
	-	`sha256:a93bf35654eecff78b6cc0c46282cdff736f27ae1ca2e06c5320cd8d7fbbff7f`  
		Last Modified: Wed, 16 Sep 2026 23:40:18 GMT  
		Size: 577.1 KB (577058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70eb752e6b696f975668b2cd255811e62ef17f9c7c5b036f371b2c4afc0df3ee`  
		Last Modified: Wed, 16 Sep 2026 23:40:18 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5dc81f65839df40e806ef8d90e4cd92453672d04fb6663ac52863c5f4161b400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185187688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7ca1cff8ef20004334df056b581773061e9d2324736239c6c7ac30624a6a0a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:41 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:38:41 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:41 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3966fdb4ebbf11324d860a1307571013a867e1b0399a481fb965cf37c1b5f29d`  
		Last Modified: Thu, 17 Sep 2026 21:39:02 GMT  
		Size: 181.0 MB (181001632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:195c7b90e81a4b16da9053ca8185d2cc1e3a55d743f12eda18ac3f082c9a7022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.3 KB (585299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aeb3646264e474669d0ffbc7d58098b97b2569100a51261d20d47b954b34100`

```dockerfile
```

-	Layers:
	-	`sha256:e154f26e3707b2288497e6ed14fade62947932762d0a2712ceeb4988918b8816`  
		Last Modified: Thu, 17 Sep 2026 21:38:59 GMT  
		Size: 575.8 KB (575824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e94fb985f190d718e07fbc08e4ba4119d53087a3fae2f6f6585318780def30d`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
