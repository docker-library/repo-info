## `azul-zulu:8-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:381cfaceb8d9224345e55c732890cd01969ebef855968b6d40bf9dd11637e8ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:61aa9aab77e87696edd01e4e62750af7e7cdfcb052a164c0c30b32511efbf09e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (56972289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288837b133921af3225df348df7bd2f912ffea0e59e47e1c3cf4096d60a9b02d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:27:55 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:27:55 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:27:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.502-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:27:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:27:55 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1494ebfbb824427dba502acc7ee321b8c8d48e5263dc4553f6548dc68ea32611`  
		Last Modified: Thu, 23 Jul 2026 22:28:04 GMT  
		Size: 53.1 MB (53127868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:dff1fed2d83c15857be63b3af66d88845540d2c7e3e58d8a2999b10b05eeb3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fcdab5d807996e149a251bae8fe797ddd4def22ef3758ca9dbd376a373b130`

```dockerfile
```

-	Layers:
	-	`sha256:5b13ecd6ee655f14eb51d0c8fd187677099e31ff3a136e9043f7621a6bdbdc79`  
		Last Modified: Thu, 23 Jul 2026 22:28:02 GMT  
		Size: 7.6 KB (7551 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:519b4a0d09606fda322d5789a20a27fdea191ab583a505957a533c66f75cfcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57025517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903144e307312dd8de637be0215fa430feac4c278f8a678aa0c9d02e4b50af92`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 22:28:47 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:47 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu8-jdk-headless=8.0.502-r1;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Thu, 23 Jul 2026 22:28:47 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae4ace85d1bcf3bd4f4b0d74e78c9d00eaa0516d74480c42ffe0cb38ed7ec26`  
		Last Modified: Thu, 23 Jul 2026 22:28:56 GMT  
		Size: 52.8 MB (52843657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:39433469b400f68ed83ece71ed805a6ca4278aafa92987ebb8c97c1ba49fd2bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758690cd938eb3e5879e68790d1e1fbd8db28b20b9a33a36c57357d1ab092696`

```dockerfile
```

-	Layers:
	-	`sha256:f76c961dfb05fb6f616cfce1a1e5b6d71d5d15e597939fe8b8b9ac1731f9f8e8`  
		Last Modified: Thu, 23 Jul 2026 22:28:55 GMT  
		Size: 7.6 KB (7643 bytes)  
		MIME: application/vnd.in-toto+json
