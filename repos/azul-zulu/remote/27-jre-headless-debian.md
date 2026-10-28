## `azul-zulu:27-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:6030777350eedc2a668029578938c786423c21ee6f5f370185d58231286f0f82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:68cbba2ec4da1a0979f75fdf176df345ed864eff70ca0d0e831fa7465d0d4c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118937863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a302492ce63e2ecfdf5f316fd30c80fb6d33479e976edf57c44d1def312735`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:35 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:39:35 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:39:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:39:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ebbb5f704bf5bfba6432367576730d3111538002800e9d6f2946cc1a1e39f76`  
		Last Modified: Wed, 28 Oct 2026 01:39:48 GMT  
		Size: 89.1 MB (89082627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e6d97d0c532c0dee972a76970b7949a2d250edc19e326d0a14bd148c5d5e57fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d86058c3833f17e95b0858ff1ef8bb4de207d65da670cf89698ab080e833e26`

```dockerfile
```

-	Layers:
	-	`sha256:216d534f5f09e9ef27d652147fa1f0996ca23670f3f2ef28f18883ee81ad7682`  
		Last Modified: Wed, 28 Oct 2026 01:39:46 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:50619b1a00babca2e23afd3d9f78ab77afcd8cb3b5d3646ca9c7344547794268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119202836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c56273c542f2230a80bfdd94b0a06c65b3f726c126e623c2b5dc7eb508dc88ea`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:05 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 28 Oct 2026 01:43:05 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:43:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 28 Oct 2026 01:43:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821eb3273596bde39d74683f5fd914bba233b0e16ede5fcfcb0299bcf23f7c77`  
		Last Modified: Wed, 28 Oct 2026 01:43:18 GMT  
		Size: 89.0 MB (88989340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bca64741fd67e78c1db83ab5efcda7028f97b432c117153fab58c94a0f61a0ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e75ff1f4cd260e045db06fde0c40cb6a2dfada8d6b7c1a3cecf78dca44a2c83`

```dockerfile
```

-	Layers:
	-	`sha256:e855dc700aa802fcf32e3326948a64d5b71e0f72b5dd9ab8f5ea516608d0e3de`  
		Last Modified: Wed, 28 Oct 2026 01:43:16 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
