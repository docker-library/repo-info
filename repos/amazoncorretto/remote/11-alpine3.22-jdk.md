## `amazoncorretto:11-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:4b0edde43a27a34ecb865509248b9ab664d66e5edc3c48d4640ea5e4b4efb5eb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ebe5c9451b0868199a4ac7277cfbef880c6aba65b1b58794a8a80bd00d309e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147805144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a8bd32876a44265496ce291772313927b1e92e6d5e19b14768e56946388e1a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:50 GMT
ARG version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:50 GMT
# ARGS: version=11.0.33.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fec02d5a81246bb61573a4faa92daaf2b4a3f454a293efb9fbe380c2799107`  
		Last Modified: Fri, 23 Oct 2026 18:08:07 GMT  
		Size: 144.0 MB (144010787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:08c5cc9c8a05b7a0057c797f755c584aebe8eb2df99401db3b83ab1670722a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.3 KB (598306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee17319b04e78bd2576f6c71ca1173849cd3e8410097deac9745be25b9a8c041`

```dockerfile
```

-	Layers:
	-	`sha256:b6dd311c7a70be730fe05878587566e4c3dcef391f3c9b40df3568a8942e1d8c`  
		Last Modified: Fri, 23 Oct 2026 18:08:04 GMT  
		Size: 588.9 KB (588933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30420713880002180537fca29d6d06bdf0e61dae864889750e0203cb69e56af5`  
		Last Modified: Fri, 23 Oct 2026 18:08:04 GMT  
		Size: 9.4 KB (9373 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bf1180eea420fa820807f0e995ba34cf5614e736a930d8314bb67c310d689276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146506111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d64246d75cca1f5ad9ad53b77872568c0820ff390f6b327b5ffa27e7ede167`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:29 GMT
ARG version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:29 GMT
# ARGS: version=11.0.33.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951a1953d14d71098082094a2bbcf984c9cf1065dea4f2b96587890f33eac7e3`  
		Last Modified: Fri, 23 Oct 2026 18:07:46 GMT  
		Size: 142.4 MB (142378730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:19555c14baf43c5ca208c0b0aa6f25b0b0b7dd9b97cb2006eb066ab05294541a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.5 KB (598466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207cb810f22375d125301e573bcf365864da27aebfb9654c7c1b3136a18c77b9`

```dockerfile
```

-	Layers:
	-	`sha256:85812979972da60fedd4637a682e5e3a5191fb7a90e96a439442b1a166b476e9`  
		Last Modified: Fri, 23 Oct 2026 18:07:43 GMT  
		Size: 589.0 KB (588989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8db5801fa6f1a1267eac22748149eed59f1e0514f4e038e55c675056441bfc`  
		Last Modified: Fri, 23 Oct 2026 18:07:43 GMT  
		Size: 9.5 KB (9477 bytes)  
		MIME: application/vnd.in-toto+json
