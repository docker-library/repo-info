## `amazoncorretto:11-alpine3.22`

```console
$ docker pull amazoncorretto@sha256:5137a710889d3270999376cbb53d1fb2dce128f76bd257b4c0c733dc9869d015
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.22` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:59434e790f3d78f72ea03e8c1553a3c31ae8b07a0367110eeb643c9b9eb4f49b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147748550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30ebba585ebb978f1cad48fdb9dfaee2fd03647300ca3dba9030238a59029ea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:58 GMT
ARG version=11.0.32.12.1
# Wed, 21 Oct 2026 21:14:58 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:14:58 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:14:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:14:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ce51cb29efa0e5d0ceddae27669f4e4930bf16af7c6cf85b0e8e0a70cb2212`  
		Last Modified: Wed, 21 Oct 2026 21:15:15 GMT  
		Size: 144.0 MB (143954193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8f98b05c643644c914651456d5ab3c686c38266cc757b9a848c287c2842c9923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.3 KB (598318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7e6c6bdb17bfc416804703c4ec281bd3eea94864585572c099345951ae6313`

```dockerfile
```

-	Layers:
	-	`sha256:e6c4e546f466535d7ab63917222eee5104e474c565459fae43c6995af5c2f90f`  
		Last Modified: Wed, 21 Oct 2026 21:15:12 GMT  
		Size: 588.9 KB (588939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25a86bda4055bd09e4dec8c1115ba2c8f315eeb2a5de8024ca06a3d817ba58a1`  
		Last Modified: Wed, 21 Oct 2026 21:15:12 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8c1e8f349075dae48fc6911df50a4c10b0dc3a9b384c6ec25d0a4abaabc7e45e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146459591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d48393cdf4a040536023fa9b643c54ea3f95095f5ac7e3074c9275fadaf2e3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:21 GMT
ARG version=11.0.32.12.1
# Wed, 21 Oct 2026 21:15:21 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:21 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3809fdc6c3960953858d59ce7b309fb4fce5d17ce1355f931c29cec5b83e4a1b`  
		Last Modified: Wed, 21 Oct 2026 21:15:38 GMT  
		Size: 142.3 MB (142332210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:09f1e99f1a224742c613c5896697e5300f7b0721f73906e976a720625d57fde8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.5 KB (598478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2829fcb03dfee58af40cbb343510b4615d6f7cb956363e2c132fbed2278d6750`

```dockerfile
```

-	Layers:
	-	`sha256:7e3654bc3e26e0562d73e5c8efc90979a54dcba5fde860c970a66b6932792ba3`  
		Last Modified: Wed, 21 Oct 2026 21:15:35 GMT  
		Size: 589.0 KB (588995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b8149b4841e2fd7fb7a4597137f87a0da08a8cbc4e1a7faaa58b9aada7306b3`  
		Last Modified: Wed, 21 Oct 2026 21:15:35 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
