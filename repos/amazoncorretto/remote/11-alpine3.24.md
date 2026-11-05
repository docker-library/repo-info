## `amazoncorretto:11-alpine3.24`

```console
$ docker pull amazoncorretto@sha256:b675216824de546f152b9493c2a7f75be96502d8577c53b2870d3dfed363a760
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.24` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d25aef7e27d014287d0db2a97c00b07f9a4fb416c3a91f5adb9c2aefd7e0a129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147881042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8065934157140843e2d39731e784c6a65e53c4472fe376cad85dfa081288508d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:48 GMT
ARG version=11.0.33.0.10
# Thu, 05 Nov 2026 19:12:48 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65457bd090cf7f303477e49cad5f41046bbc073be992cb04bb52d2c7f0a4ee2`  
		Last Modified: Thu, 05 Nov 2026 19:13:05 GMT  
		Size: 144.0 MB (144027369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:aafce7ac58524cba99c04525ca9cbddc0c43bd7bf420230a667191d4e1a683cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226b7538c199988effa23e806ce0e4e6254f218bde10a7202c4a1abff38ddcd4`

```dockerfile
```

-	Layers:
	-	`sha256:07d5ee2aa432fac18bc3e0147bb247b3a40a982d2e041f9447015ec7a7655207`  
		Last Modified: Thu, 05 Nov 2026 19:13:02 GMT  
		Size: 589.0 KB (589030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bae2d7f7bbc0b1f610ffd538bc0c456adbe7e2312c8a4e40d2022243097e831`  
		Last Modified: Thu, 05 Nov 2026 19:13:02 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:123b09d1862dde82b27a5212c6ef7e0ae1521494b4ce34de5dd9678721f9e18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146573061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16872b7add1bd2b1abbd79c5b3bdf9f3763d183378d5b2a0471ac8c8c4aed308`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:31 GMT
ARG version=11.0.33.0.10
# Tue, 27 Oct 2026 16:40:31 GMT
# ARGS: version=11.0.33.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:31 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea493b5f277f8feb085794b3599860720b8890a1aa7f08a519a0bb0888fae19`  
		Last Modified: Tue, 27 Oct 2026 16:40:49 GMT  
		Size: 142.4 MB (142382573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e10d781095eab13badc063a1e48664172685b681ffbb609d0f5c618c10e62eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 KB (599323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c45e99f831c3b857e34a3f90905fcdbf0af50e50115771e00f270dbc7478aa8`

```dockerfile
```

-	Layers:
	-	`sha256:0ad382eff944c8b81bf1856acac40d32259d52432ab55d7f70646f7e61d4b00d`  
		Last Modified: Tue, 27 Oct 2026 16:40:45 GMT  
		Size: 588.5 KB (588484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0434fae4e4cc6284443495556b52b30fbfb1f730c91e69c488c5f54e2212e90e`  
		Last Modified: Tue, 27 Oct 2026 16:40:45 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
