## `azul-zulu:21-jre-headless`

```console
$ docker pull azul-zulu@sha256:4de10346cd58928b3389468bc659497c719e628ba192de004d2a31dcbb8bf397
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:259ea1f6284db032a4b1359041756583aa9f39d54a748427167bbec005e4b1ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104373046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90b4802faae68a367f4ebe02048b5f815b73c86ff7d17d246991102f77fd42a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:38:09 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:38:09 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:38:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:38:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2326a7b348e8cab2a2e1bbdb7f3de41cca1fd7a8b373ee82842354c4eb6ac71e`  
		Last Modified: Wed, 28 Oct 2026 01:38:21 GMT  
		Size: 74.5 MB (74517810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:439d49c63a449be78b2015d09c768766c3f9a56942db62d58fc51c44db7efdec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a72f7334678fac3284924d0a4caa271e9eeebbdae6d32b2f07564bd4db44e46`

```dockerfile
```

-	Layers:
	-	`sha256:f5d980a4d402742edba8485e590421d7b9396025733d916ebc4fdde09f5c1f54`  
		Last Modified: Wed, 28 Oct 2026 01:38:19 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c7b260cbcc8b1e7758ebda114803dde90f05a0bf4fd44ea47345f6a189df927b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104391947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b9c4dd97984b44be912e8a1f9a8c1b992178792b2ec46f85eec0e7a1974eaa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:41:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:41:55 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:41:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:41:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7355f7d502e6963f83a125437476fb7aa4122dcb0abc83885f93df7843317f93`  
		Last Modified: Wed, 28 Oct 2026 01:42:07 GMT  
		Size: 74.2 MB (74178451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b72f1d7d40933f67b86b28996d6c508e2304a537c82d4a23acc9d5ea12b2548f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8d7c26326ca19c46d6c05cde2765682916ffdf336f519b1023201948e5382c`

```dockerfile
```

-	Layers:
	-	`sha256:94739545f21c79e6f37b2939d3eecfae91fa24243c00c2c1d2155447ec8abc0a`  
		Last Modified: Wed, 28 Oct 2026 01:42:05 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
