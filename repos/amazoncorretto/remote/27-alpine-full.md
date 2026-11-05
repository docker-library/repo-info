## `amazoncorretto:27-alpine-full`

```console
$ docker pull amazoncorretto@sha256:e24498d23f692a40e78c6ebfbdfd0566e98293c2b603cf8407cbd1896a235a03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine-full` - linux; amd64

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

### `amazoncorretto:27-alpine-full` - unknown; unknown

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

### `amazoncorretto:27-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6a2c893bb2b874f6a94ce76f192c7eaea2187522c1dc86b4ec8b397847667285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185250182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9839d6f0d00f096d636c56560f77d69dc38e05564a451fa2c684b11b38e7f3bc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:27 GMT
ARG version=27.0.1.0.11
# Tue, 27 Oct 2026 16:41:27 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:27 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b809a744f0396e576dd28c25ebcb74dd9ea55f8d1fd0e5fcb5d68aa0030044`  
		Last Modified: Tue, 27 Oct 2026 16:41:49 GMT  
		Size: 181.1 MB (181059694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3168a212d5d2af18bfcc38e64983956c92ee8a593d7961a805f463ad3337edbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.1 KB (588087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46b7b9b3b096e8f98621f7d7bd7dd8c9dfe761ecf7ce801ae06be0a0922a070`

```dockerfile
```

-	Layers:
	-	`sha256:525f8aa2afcd4b049b4d5d5d4a6e58829911c7deff1a24569b3538fd6a009111`  
		Last Modified: Tue, 27 Oct 2026 16:41:44 GMT  
		Size: 577.3 KB (577257 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d42e647ed60a22796e86ea94edca8a0fd1e009625361aed76680dcaa6a6a242`  
		Last Modified: Tue, 27 Oct 2026 16:41:45 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
