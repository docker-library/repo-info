## `amazoncorretto:11-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:ff43ab967fbcf05b2539e47606c105c2347b84d2b0f38b6e9b61f978c63c8665
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f1c50d91c2da859164095b5e2e6d6efdda2239bf125013549f3bcd37de8ef5b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147858808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a97f522fc340698a56d8bf8cf47bcc12b0eaac134cb110aa6bcbea642d7c5d9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:49 GMT
ARG version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:49 GMT
# ARGS: version=11.0.33.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:49 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22aee7cd58f2e3f23e682beccf3ea575cbc4259e3a023e8d433fbaa863b5f421`  
		Last Modified: Fri, 23 Oct 2026 18:08:06 GMT  
		Size: 144.0 MB (144006581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fcd3ff12eeb6f96a7e8000e0c0e54d96199a08c07a3b4f73d2b0c003ae0f1190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (597023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7064bc72ca50f3fe001dcc94835b33beccb49e9aa9644324ce571c9c364dec1`

```dockerfile
```

-	Layers:
	-	`sha256:ef237d120439e7c6b3cc505d0634a030c8a670d89fd7128d294ee2f2c03496d4`  
		Last Modified: Fri, 23 Oct 2026 18:08:02 GMT  
		Size: 587.6 KB (587649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1b5ecf9d36fb695b75a21b84e20ead83f8ed5c38901b2586f5750095c07758`  
		Last Modified: Fri, 23 Oct 2026 18:08:02 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:feeb8462eb1789ba2d61f7508ecac65677142884d398e10d3cae8c8b81e4bac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146572083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5815ce7731f405aa59192c2c30ad5393ea6fae8b23eacb0c8fecf89e8789b6ab`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:30 GMT
ARG version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:30 GMT
# ARGS: version=11.0.33.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:30 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13fc22209e2cec35b27ae790cdb2a435387e5081fddad9428a2524f03ee5147f`  
		Last Modified: Fri, 23 Oct 2026 18:07:48 GMT  
		Size: 142.4 MB (142382589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c2f5ad1e088719ac79131b83eb83c5e3c06cfb349c5d39c19648baf191242834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20fd196502e9932728f0a618992fa550d81f0dbdc7e653a8ebc3d1099417356`

```dockerfile
```

-	Layers:
	-	`sha256:83d4876e9967ff037bdf4e8bb762d882f549d1bc0d708b4fc3780f8fcc418405`  
		Last Modified: Fri, 23 Oct 2026 18:07:44 GMT  
		Size: 587.1 KB (587055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffe217363105d14b3e5e49fae5b66b1784c4fee08900abadad510a501ce5b8ae`  
		Last Modified: Fri, 23 Oct 2026 18:07:44 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
