## `amazoncorretto:8-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:46dceb44197567d43d7e2df5563ebfce658a7053e8540a46a6e625ef0276845c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:527ad9e9a2f4fcf2cb17f565fc87348906fffb82f5110eafbc52c91997076b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104725602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0472c9c24b942996a43c1df11b0c92dfe87720993d2de581d7c13d8bc93a4a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:56 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:56 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:56 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3f050ef40c7b21f48d5ed39a54ecaccebb123b035cd70b56ce187377a3618e`  
		Last Modified: Wed, 18 Nov 2026 02:46:10 GMT  
		Size: 100.9 MB (100871929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:84c41c90f1fa993e903402f6cd72899d4b2e4554e655abefa899f028b36871f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a478e66193de56b3f8a371a2679c4b9ceabf46e67a08106eaa2910fe65f6231e`

```dockerfile
```

-	Layers:
	-	`sha256:309d35c8e86211b0737e2d8e114f219ee6155b9adc77a51739d56df357d84698`  
		Last Modified: Wed, 18 Nov 2026 02:46:08 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d648325f67c6f7a40727312a7068aa1e453671f85dae4cbc4bcbbde58508534`  
		Last Modified: Wed, 18 Nov 2026 02:46:08 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d1593d6cd46b4d5996e8fced264508baa096ab27dda799d2bcdd986a45c5f933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104890271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4db43068fef5fa7da66106cabf1d51e0358c91aa5444e6808b5bc4cb6433099`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:06 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:46:06 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:06 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:46:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e576624f05eb0f2521d62afbbdc2eb858a5cb3be712a470ca788f21e74350b0`  
		Last Modified: Wed, 18 Nov 2026 02:46:21 GMT  
		Size: 100.7 MB (100699676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3c0163790e9434f690f2006e7210f4d81023d7a34c257846ffe049760e2bf434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e83895975caf09f6702c9279b04b6fc32fd6d5a7c76c8626b71f38c4d036f35b`

```dockerfile
```

-	Layers:
	-	`sha256:40eedac27765c7a111ee60e65cf31e9e60efc49ff69126284ef56e65f18a4752`  
		Last Modified: Wed, 18 Nov 2026 02:46:18 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8866f6b2e1ee9bb0a52545a14bfa5eb2730dd627426428ce409fb6901837bb0`  
		Last Modified: Wed, 18 Nov 2026 02:46:18 GMT  
		Size: 10.8 KB (10803 bytes)  
		MIME: application/vnd.in-toto+json
