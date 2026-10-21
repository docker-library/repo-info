## `azul-zulu:27-jre-headless-alpine3.23`

```console
$ docker pull azul-zulu@sha256:16aad5e78ba93673aac86ea9773dc7184a6fde916c784bd2528194e097029bd3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-alpine3.23` - linux; amd64

```console
$ docker pull azul-zulu@sha256:618bd76d28608752f54f05a186b424033f3f1d50cc2df5dd8be4b7a3dfd973f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87670676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d481b4d2753ff47e1d2b659366183754892f871040204276e51740ff1bf468`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:08 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:08 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 21:19:08 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ecf7492c6306fbaa3971ad927fc091996352d90d5528f42100787c0f14b1e3f`  
		Last Modified: Wed, 21 Oct 2026 21:19:22 GMT  
		Size: 83.8 MB (83818449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ec5ce4f65bfcac269f3a43d72cdd9a4971e7f814b23fe2644e3f24c033ee01c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 KB (7565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a6d1cc3a220f39d32bbaf0c478b3ebd63c905d4fad963ec93486cb73e188ab`

```dockerfile
```

-	Layers:
	-	`sha256:a0f035dd63f67185b61d92d77e33e1f19f08019e20922495522d3e653d107023`  
		Last Modified: Wed, 21 Oct 2026 21:19:20 GMT  
		Size: 7.6 KB (7565 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:db3d373f98c5d90bea3d6ffdfa04ea6f5df7173a6ef597b345d560085ff5c5a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86825819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2027517ba430d36e8f6e026562fe49ce634bed1db780c8508da84e6b66546896`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:19:53 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 21:19:53 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:19:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      wget -O /tmp/azul-signing.pub https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "6c6393d4755818a15cf055a5216cffa599f038cd508433faed2226925956509a  /tmp/azul-signing.pub" | sha256sum -c -;      mv /tmp/azul-signing.pub /etc/apk/keys/alpine-signing@azul.com-5d5dc44c.rsa.pub;      echo "https://$REPO_HOST/zulu/alpine" | tee -a /etc/apk/repositories;      apk add --no-cache zulu27-jre-headless=27-r1;      java -version # buildkit
# Wed, 21 Oct 2026 21:19:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Wed, 21 Oct 2026 21:19:53 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33d9391d9cad766909456715ebb2a2ea08f31c3eaafa24d6d97ff9bcc78f8bf`  
		Last Modified: Wed, 21 Oct 2026 21:20:08 GMT  
		Size: 82.6 MB (82636325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-alpine3.23` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c64ec08fd8a3c55580686cca185f92a8d9367b0b8786af253344b78dabdccdfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 KB (7656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:873c8726eb7f5800d6d3dde1a0f1ddc22a25bd53a371196dfbab18a5c52094df`

```dockerfile
```

-	Layers:
	-	`sha256:1e98df59b06b42d7372ba4512bc5ea285e94334f1c29b9b2288f406e888f93f1`  
		Last Modified: Wed, 21 Oct 2026 21:20:05 GMT  
		Size: 7.7 KB (7656 bytes)  
		MIME: application/vnd.in-toto+json
