## `amazoncorretto:21-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:e37320b8ccdb61ed4272edf1f3c9836ca4ea660b37f048dbb6858901d5322145
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c63eaafe89946bd5726530638474b61b334887efc2b356946432514ed0bd42df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166337106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29728ffa0d64a93314027cbfeeee70271bd830e48b1ad06792f619d06ef2e41d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:43 GMT
ARG version=21.0.13.0.11
# Thu, 05 Nov 2026 19:13:43 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:43 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa716f705e5f81b0f091a1848f6f7455548a6a8c6e49d498f117dc99015e8`  
		Last Modified: Thu, 05 Nov 2026 19:14:02 GMT  
		Size: 162.5 MB (162483433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d57cef5335d7d1d7a2660c6bb19035c8fd733264a0f867ba6ece0554acb31091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.5 KB (594472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fe52e66b929fdc9764df117b9e655a2570d3227421a9f2fffbcacada37a911`

```dockerfile
```

-	Layers:
	-	`sha256:fbc8ba438c0a19a1b6bc2909dc54c931dcd7cea8b6259734a809bb2d222648ea`  
		Last Modified: Thu, 05 Nov 2026 19:13:59 GMT  
		Size: 583.8 KB (583785 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cc2099e4df96f34a533133287f3c2b573f94965b4dc96cb870d94e0ee0ee452`  
		Last Modified: Thu, 05 Nov 2026 19:13:59 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:087d0484934b7b7b0529a5977003cb55e61f61ac98133a021bb4ed8c5f59ed9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164682625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d605d34120536fc7192bd940416a407fa98859053c953df6c54f0bf6412bf39`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:09:28 GMT
ARG version=21.0.13.0.11
# Thu, 05 Nov 2026 19:09:28 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:09:28 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:09:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:09:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf9fea2a56291d85729d0220a3bdabbbcd75601f8b92e02b81bc1f28f7c127e`  
		Last Modified: Thu, 05 Nov 2026 19:09:47 GMT  
		Size: 160.5 MB (160492030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:93e4023db4c2067900e9eec62b2f5ee81d8153235f9e3da7c91fd72694da469c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.4 KB (593441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3012a3ce2c8d614e836107b8671797067872bc457ee5bee5e1d505e0116aba7`

```dockerfile
```

-	Layers:
	-	`sha256:0500723ee2def68ce0840e8da27a25f79613fb8c69c073aeefcc8c01600c5339`  
		Last Modified: Thu, 05 Nov 2026 19:09:43 GMT  
		Size: 582.6 KB (582602 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36deab39b649746fcd1f946b3702c42603c12779c7a5a4a1e63f3c6989722e3e`  
		Last Modified: Thu, 05 Nov 2026 19:09:44 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
