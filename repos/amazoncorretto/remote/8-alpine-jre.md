## `amazoncorretto:8-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:79ef59c3d7ab3977a171df017bde8b4e3acd59c6258b11c7f236d8c10106389c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:68e3925105af1a5478aabc3c39f64f122f71c618eaf7a78957d5b59c1bedf650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45689819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efbbc8a9a3b0d91c3e362357c38c0a2f0f4bd317d93ce7dfc1991ceac40d41df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:27 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:27 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef2f493ce15ae90f0b486d3de4cecedab6e7d48631df7ac0760edfa2b410f4c`  
		Last Modified: Thu, 05 Nov 2026 19:12:37 GMT  
		Size: 41.8 MB (41836146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7d34f0dc52d3a29917cb4d33042d2be836ba6249b9ff6a87d294eaceaa328b33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f49a9398ecf67b8a2c8732ecfd2c8669ebc7e3bf7ed0a52ac36b5895364d22`

```dockerfile
```

-	Layers:
	-	`sha256:83f8eff379c0d37895627403f28efbea2c2f100d82ee5cc1aacd4ff8221eab07`  
		Last Modified: Thu, 05 Nov 2026 19:12:36 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96a62048a40286a2fce5d8950d1365c4b222cd83a9eb3bffe87a8d78a083d3d5`  
		Last Modified: Thu, 05 Nov 2026 19:12:36 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3024825646067173398e692d7a7e23f5aeb1c1d4ab85aa5727886242b0e022e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45781169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcda5e3ab755c410b5519e082e7d1225821b548158f0c4b7043f3caebf7f20e9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:20 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:40:20 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8b6b0c195dda5d28869e566eb2e920fadca1f7826085df8bee9f465180fe0c`  
		Last Modified: Tue, 27 Oct 2026 16:40:30 GMT  
		Size: 41.6 MB (41590681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5b2cfe883267049c51f40b0aef104160e8a2190a29206e2b090ebf97bef7c0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f60aeafe6d9b6df3fb67ffb132e3430cb3bcaeb0baac79447bf9b05aa9bc8ba`

```dockerfile
```

-	Layers:
	-	`sha256:06820ca2db014bdb642c838629832f19f85af2b469116ef7bad5bb9252690b6c`  
		Last Modified: Tue, 27 Oct 2026 16:40:29 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:776a5af594daed144661f0cdf2bf7d0fb1df51b78594db54d7709923c20d8e04`  
		Last Modified: Tue, 27 Oct 2026 16:40:29 GMT  
		Size: 9.4 KB (9420 bytes)  
		MIME: application/vnd.in-toto+json
