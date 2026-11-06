## `amazoncorretto:27-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:087dbef7ac8cac5edc0fcda6c93dab255620f2c2cedbabe8888d0e9430c6b7db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:06a3667a3d497fc86343e2e10280112fa738fc83b1d8d97deb1d53162e3fc2f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187287379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65227ce61f51bead545f4ba8377bd5c241ba45016752e79981fd135843d1af2b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:45 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:14:45 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddca7f666775d66b64aad9b01ee7e3c9894559cc08fa4f497270dcf3593184d9`  
		Last Modified: Thu, 05 Nov 2026 19:15:06 GMT  
		Size: 183.4 MB (183433706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:948bcbb3ee3fc137afe7668a066161545e033959928124f4a42d31658b0dc54d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **589.1 KB (589121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb09b68925f3a58b7f2e41dfb3ff44db773710c98a1b511a0905133ec0197a45`

```dockerfile
```

-	Layers:
	-	`sha256:171ee0584a8e13bf9001c018176761b7fa306aeaeab7add8d389f8d479ab4847`  
		Last Modified: Thu, 05 Nov 2026 19:15:02 GMT  
		Size: 578.4 KB (578443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fef3054efab952081f79da328595220c30cd83178f6b634e47024ed5b03e624d`  
		Last Modified: Thu, 05 Nov 2026 19:15:02 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:48ab4d7520373980595c5df8b600634e3de2705988e578851b93646151baea57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185250252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d283b80fad063fbf19fd31736b5b94e500a9bfc0627143322c88b1454dcea085`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:10:28 GMT
ARG version=27.0.1.0.11
# Thu, 05 Nov 2026 19:10:28 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:10:28 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:10:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:10:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4c764e281d51eccfe586451a68aafdd55690ddceec8fdbcf5a44783aab88c7`  
		Last Modified: Thu, 05 Nov 2026 19:10:49 GMT  
		Size: 181.1 MB (181059657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2059431d1d6eee9542e1e2bad7124ac18d10873588b8e0c5c623b5298a283714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.1 KB (588087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc29bf7ee7e385b1cebdd06c3abf0d6e96a87adcd7c4edcd8ff05034771cb69a`

```dockerfile
```

-	Layers:
	-	`sha256:5ab66143057059d41b23b1cce42431a8056c37aec7673e7f050e4fe8d14d5958`  
		Last Modified: Thu, 05 Nov 2026 19:10:46 GMT  
		Size: 577.3 KB (577257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6df428b30a2f465c3949857a0c389fb4abb855f025b3a67c1d81ad2d208048bc`  
		Last Modified: Thu, 05 Nov 2026 19:10:45 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
