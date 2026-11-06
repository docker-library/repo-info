## `amazoncorretto:8-alpine3.24-full`

```console
$ docker pull amazoncorretto@sha256:556491ad849ff1a6051031146a81eab5b41b7257eba1a43a126884f746c2da23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.24-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1788811bfc2c074ccb79ade5b9d951a61a4ca8cd9b3fb4515ef9c0a6635dd2c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104719553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9fc2025320a4ce097655a7bdcd4fafbd35059a3b1d5c6c41f25f64c34c0d62`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:24 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:24 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4c254876209a70bbf86298646a5bd80145c0c3a9e3c7df02a3adcbde7f2c85`  
		Last Modified: Thu, 05 Nov 2026 19:12:38 GMT  
		Size: 100.9 MB (100865880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3d550e502e1fef379be89c08477a8ee7a9ee04e7528168bb381de2f06e1dd2fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215cebf5b04098562e35100f3337591a7ef648aa45e2445d7652a344997299dc`

```dockerfile
```

-	Layers:
	-	`sha256:a54d25177e01f8e9a044c5e702848f1879a040949524ed47bb58ba2364c2d315`  
		Last Modified: Thu, 05 Nov 2026 19:12:35 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d0ae6ae9226acd26640276ee07e63543cc54b31fa68bb4557c52e7265c2db3`  
		Last Modified: Thu, 05 Nov 2026 19:12:36 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.24-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:dd4379eaa2f9833a0e7cf19b11e48a72bbb41e9af6393cf844a285b6a828ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104884984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8b87a208fab62af072a6ea1f1b1ed318a30d795e07a4403f2853cc4e27fa92`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:10 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:08:10 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56efd6ca005956f9eb0106c90cb73d6fa30384db14a8c22d94908b96aee04d4f`  
		Last Modified: Thu, 05 Nov 2026 19:08:25 GMT  
		Size: 100.7 MB (100694389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4582aaa7806aceea23f8f3224e61b3d1048d6238affdf3498e546db18f027fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14269fd30c11fef5d2c77f357a33a2dfd6442bc388a651ce22f873714b7364b2`

```dockerfile
```

-	Layers:
	-	`sha256:cf3bdcadb700f67b1211e222a5fa3c1f49bc741ee46e3cf44703de0e5ce96afe`  
		Last Modified: Thu, 05 Nov 2026 19:08:22 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26ee8f5a066805026ed333fdde388f648a75e2a53b48b4d0c41af842634a13e4`  
		Last Modified: Thu, 05 Nov 2026 19:08:22 GMT  
		Size: 10.8 KB (10804 bytes)  
		MIME: application/vnd.in-toto+json
