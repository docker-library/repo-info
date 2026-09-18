## `amazoncorretto:17-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:71645defdf3b7d8abc07db9d53a4d3a9ac77333e8f4b5869b3fb9ce0dd2f0cde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:00444126fa1e14eb5ce65c6ec93d6c242326e0cf7455f81d9a5563dff886c23c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152728114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7f1afe6288f76c4f287ac8934dfd25c88c398ff88e7804fb4039823dfe9a5c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:14 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:20:14 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:14 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90e3f1e1e020f79a83df42b60a9445e55bf6dfa6b4a58d230d56d8a0416de8d`  
		Last Modified: Thu, 20 Aug 2026 17:20:32 GMT  
		Size: 148.9 MB (148940519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c41ab301bf7b4415adb967bc99064e4929d295f68506cd820af95e967f974bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.2 KB (593170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e99cac5fedd21ee60b04f6d77687eb9ff64cb515dcb340ba249e077ca76b0c`

```dockerfile
```

-	Layers:
	-	`sha256:1c43fa5250a08068812e68cd10ec428ca30734221125187bd0ef8b316566bcde`  
		Last Modified: Thu, 20 Aug 2026 17:20:28 GMT  
		Size: 583.8 KB (583791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8152f8276c3f1b93a063bc4c9ce25a588262a6f81e79f1c70effe0cbbb76166`  
		Last Modified: Thu, 20 Aug 2026 17:20:28 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3bb76a163687cbff177cb5bb138281d30ee124140eae583f7e32a8e30e68c7e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151484127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaac49fad0e75fb7644fc037bc44cee8b4cd8813c1398b561247d3479630becf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:34 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:36:34 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d835e2fa558d5c39543d42a0b18d7cbd5852a6bda3edecd49737b6fd1115b`  
		Last Modified: Thu, 17 Sep 2026 21:36:53 GMT  
		Size: 147.4 MB (147361043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b143f2c5c5de684aaa0ceccb8faba8409b9ec0223621b7d91ab06412ba538fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.7 KB (592693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff7d11b659ab0730c45a2742bc796a2da5dec2d77f00833d487acc9b887f42e7`

```dockerfile
```

-	Layers:
	-	`sha256:570c86af60edce467f0eb8aab966f757b82e21ac0be88af47356665ad08273ce`  
		Last Modified: Thu, 17 Sep 2026 21:36:49 GMT  
		Size: 583.2 KB (583210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ce88e73ebbca680bf2a5214a1b730d6f7429c6e18e60a237b03243104aa27f9`  
		Last Modified: Thu, 17 Sep 2026 21:36:50 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
