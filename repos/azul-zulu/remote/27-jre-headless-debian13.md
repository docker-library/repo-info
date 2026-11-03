## `azul-zulu:27-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:6bc186284dea43159c2dd94c51e2465b289e5ff11eb7d0b7edfdc2f9800a3bce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:245d5d8fb365c561e51fc74c2257b128238bacdee5b7078ab332327917ccac98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118934607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ae7bc437a38f9055de8d87e576108d19f212f0f7def74573f614646b0e5d4f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:10:54 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:54 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:10:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b708c85551682643efafdb13b2073de134e066ab3c6d0998e7b7ffcc9c600b3`  
		Last Modified: Tue, 03 Nov 2026 00:11:08 GMT  
		Size: 89.1 MB (89079371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:731250c9c7c7aac86dc2d8623adb546f57af6e3f1b895adb5dd428e8fb15222c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf64ab9fe97be10b16119dd671f6d1903b0370acf52fa0a2e5944cf985b6fcc`

```dockerfile
```

-	Layers:
	-	`sha256:74476dfdb50c6dc8706f6df7261c3b03c51754319b1ae8958fda84f38c15bf6d`  
		Last Modified: Tue, 03 Nov 2026 00:11:05 GMT  
		Size: 9.3 KB (9314 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:dc05dee6feca4bdd4ec61e661796ce8debe2464ccfcd93304de92266a2754405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119200923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31446a09e3b16d5d85b8f6b2bbeede02e1b5c57127c64c983211ec7784fe3550`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:11:17 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:11:17 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:11:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:11:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b922fb60276b73e2ecfe2997fdd2d0c81d2eac7de62c38c3c45d1a012e0577d`  
		Last Modified: Tue, 03 Nov 2026 00:11:32 GMT  
		Size: 89.0 MB (88987427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:567cffe3a4378bc7f1c53b46fa96398a9840e0192cb1fe5b4f1e0fce7716f526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:862905f1f7085a0658a5f234b4cff0eab51b79cd4e529e4b312bc5ef27c29574`

```dockerfile
```

-	Layers:
	-	`sha256:1d4610725554a3473b7b6b9b0d4499b2ab398966622a927fb50046b0bf488772`  
		Last Modified: Tue, 03 Nov 2026 00:11:29 GMT  
		Size: 9.4 KB (9418 bytes)  
		MIME: application/vnd.in-toto+json
