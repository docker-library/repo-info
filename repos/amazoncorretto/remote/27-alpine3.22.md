## `amazoncorretto:27-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:3734981d8ebce724e85b60a97bd71e56514030ecfdc54343f800237ff9315cec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f9949c57d8afd4aa3c97a0f7eedcd1fc0753755a89e332915bc59c9f79c2cc8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187216455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b4adf00187fbb031473c3d84c9c171134af9ba8c21d3c7cfa37d58d456009b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:10:10 GMT
ARG version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:10 GMT
# ARGS: version=27.0.1.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:10:10 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:10:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8e57a88927c4ad3dd37f39a44ee2bb53ae87c40007ab2e2fff2dc48cecc764`  
		Last Modified: Fri, 23 Oct 2026 18:10:30 GMT  
		Size: 183.4 MB (183422098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:aa2529926a3bd63e9f6d4da2e908e979e53319dfd18485673bbb74cdec742a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.7 KB (587722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98c6681561e07a1789f262afdf6f64d9d66aed22994ec25ff15d872a229de37`

```dockerfile
```

-	Layers:
	-	`sha256:775aad54b46d417485c7238cb6a440817c8a90607582e75a008445bab3e22939`  
		Last Modified: Fri, 23 Oct 2026 18:10:27 GMT  
		Size: 578.4 KB (578350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6de9ab48f059b6c30bff217ed1ba24342d99184b5b74a9d00d972b245a244377`  
		Last Modified: Fri, 23 Oct 2026 18:10:27 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:75abaab1f0413f4dd5008d734d044299e47fae47efbf8d6960dd6075b92b2d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185182838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf4f69d0b4e5f9115ba10e8dc080538495b705e6e65179617b7c58288099ceb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:10:07 GMT
ARG version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:07 GMT
# ARGS: version=27.0.1.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:10:07 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:10:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2442e74017f04804d67174e2d98470870e4bdf991923a3f9cf18842551b51d2e`  
		Last Modified: Fri, 23 Oct 2026 18:10:28 GMT  
		Size: 181.1 MB (181055457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f21f353652d054691603a56e30d11cde7cc02bf473bd2d181001dbf3050fdc88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.2 KB (587242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c217cf640ef43701abe2e65ed4e32fc6713cd17a4b92bb76435f80c5c77a0fd`

```dockerfile
```

-	Layers:
	-	`sha256:29f5b451a631ec19e0108f61f5ad204f9bff1608f849bb3b0a771f03d4169b1c`  
		Last Modified: Fri, 23 Oct 2026 18:10:24 GMT  
		Size: 577.8 KB (577766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a836909e3f2caaeedd04c2385d1b02eeb19c2c0db0f15f29a6e8f4599e5798b7`  
		Last Modified: Fri, 23 Oct 2026 18:10:24 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
