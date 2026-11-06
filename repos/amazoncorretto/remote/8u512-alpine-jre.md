## `amazoncorretto:8u512-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:fa10d207c6bcb9cfde53d6b334ae95e5589771963bfdbe596245331105f52331
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-alpine-jre` - linux; amd64

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

### `amazoncorretto:8u512-alpine-jre` - unknown; unknown

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

### `amazoncorretto:8u512-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:53ad5fbb077e0f2c0d3529c14a160b1e3c137143224ae81f6f6fdc7a402ef342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45781290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1bbf1c9a4c5f9b190ccaedc1216dcee226873cd99d9ce3d80549eedddfbaa62`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:13 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:08:13 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e3dcaf4b1cfa0eada9045ddaa743e5e4c0b67e4dfff18228da21c2ad4bb665`  
		Last Modified: Thu, 05 Nov 2026 19:08:23 GMT  
		Size: 41.6 MB (41590695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9a5509da1160dcfc64a44a56db1c3355d03eb621f77cfa67c27bf21a8fb5c620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dc353b38ad356098433e59fe89d0e10aedec760fc4e19401f682a20fd3afe6`

```dockerfile
```

-	Layers:
	-	`sha256:4f111f71a3d17fa5098568520f5337f443835fca518ca06c49b397706e4be737`  
		Last Modified: Thu, 05 Nov 2026 19:08:22 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11cac219e10d03a254409d81d2847da2f11a20b91f02cfcd22186083b6c2c744`  
		Last Modified: Thu, 05 Nov 2026 19:08:22 GMT  
		Size: 9.4 KB (9420 bytes)  
		MIME: application/vnd.in-toto+json
