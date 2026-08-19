## `azul-zulu:25-headless-alpine`

```console
$ docker pull azul-zulu@sha256:34d776ae1603054fc267024be390ddd41619630651b9af71f868295a1ae962a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-alpine` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b55890907a000def5598e4a2c163a0c7b906a7fb4007077627181aa94501c463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180891713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38adfac10e69f84fa40cdfcf961d1f45f29f323bcc25c76a4c0cac4dad7acd34`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:37 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:37 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.4.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:37 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b032272f44621f7341c4c66d6bde4c8c9df6d051b7b1381dd292dfb201913a68`  
		Last Modified: Wed, 19 Aug 2026 17:36:54 GMT  
		Size: 177.0 MB (177047292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:643075debd9357e96e0965687c233518923d3f8c56aba30ff58ad5c282c01aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7a023a09dc573d56deea713e40840c5a8be88c45fa490af8881622aa9c363a`

```dockerfile
```

-	Layers:
	-	`sha256:4ec83110b9287e609ca3ca01a6bd4fbd87ed490d7ac0d3724adffbb274e92608`  
		Last Modified: Wed, 19 Aug 2026 17:36:50 GMT  
		Size: 7.6 KB (7584 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-alpine` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fcbc35c442c7501a658dd93abfad4489444ae35ba183901706db3c20b062902b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.8 MB (178792942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a7e545c5964ae798a4ad58071a7e31b7c4ef8ef0747237ec77125b887ccd31`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:36:41 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:41 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu25-jdk-headless=25.0.4.1-r1;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:41 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8205a009013196b79c87c83543e3db337e73cfd83fac8aa135dcf0209c7012f7`  
		Last Modified: Wed, 19 Aug 2026 17:36:58 GMT  
		Size: 174.6 MB (174611082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-alpine` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f46865a51a6ab276c56275a9aafd16305ecf914cc6e8d5fa5bb86f467b5a7fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bb647fc5851a679c42a7f5009b7a855cbb431d0bf9371bc3187b172139840a4`

```dockerfile
```

-	Layers:
	-	`sha256:4a8a48f39a2f4a3eaa2fa66f69ee48c1f8c12319abcfabd52e51265569fc9c51`  
		Last Modified: Wed, 19 Aug 2026 17:36:54 GMT  
		Size: 7.7 KB (7676 bytes)  
		MIME: application/vnd.in-toto+json
