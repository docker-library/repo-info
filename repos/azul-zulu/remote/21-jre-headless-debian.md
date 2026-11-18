## `azul-zulu:21-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:ec60dc3c0c7128066cdce4e08423a38c5e900dcbf7cf8d2bed7890d81a6d8aad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b6737fbf595cb76ac05144a0f97a71f38a681839c484e6b7b2949ff8400c5516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104382294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d439899b625c7e1d8129ee6a3181ba963c71bebb34045885321f56db1257ef69`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:05 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:05 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faaf8e74c97a4a84ab3c7cf08deaa0c573d619a2abe689df287f04040d6750ae`  
		Last Modified: Wed, 18 Nov 2026 02:43:18 GMT  
		Size: 74.5 MB (74526162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9dd28bea13f4709c79dbe0b9cb8125ec9f60573aedd3e42dde86aba81f2ec7f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a1822e803ab271cc1ce302b6044b8c1073717e5618a98e834eb15a35bef72e`

```dockerfile
```

-	Layers:
	-	`sha256:c8e1d0128e056ac71935ccfe2a3987e4688541311ad0704c0ddb38366a9359e6`  
		Last Modified: Wed, 18 Nov 2026 02:43:15 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3dce1b995e565d310abd80f8c67d4eb49699f8267e433d7a51c248aab7e2632a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104410859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cd4cafc3d06e5907c8aacbeb13259b8a5a724b06ff061a9232f11f8f95be3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Wed, 18 Nov 2026 02:43:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:43:00 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:43:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.13.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 18 Nov 2026 02:43:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f08a3789c19a4bd38427575bf7a96a1fe6bef5d2453f9fe53266ec168a76ce5`  
		Last Modified: Wed, 18 Nov 2026 02:43:13 GMT  
		Size: 74.2 MB (74196822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e17568167acb54151183ac323f31151c61febf1c00fb06a051e5f4f34b0c3e8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3d0de735eac8410880cc0c305895c9ef2df24391cb405a452f67bd6e37153d`

```dockerfile
```

-	Layers:
	-	`sha256:b7112ebe605e358d2270fe5826e3844b85b042d60016fe052746a1e09ea3ada6`  
		Last Modified: Wed, 18 Nov 2026 02:43:11 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
