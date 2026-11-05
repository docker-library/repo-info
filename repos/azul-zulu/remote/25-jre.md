## `azul-zulu:25-jre`

```console
$ docker pull azul-zulu@sha256:6f0897a6c14d55307d730f825f105244cbe0b411d8f4495f5c4e004ea516758e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:092152127003cf1f46868b0d78a79ee955fb6d30cd33c5bef2f6595bac1cb0c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120490545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5788d62bf796d821ed8ef7d680c65f8d372d2472061f376531caa6a1bf03c41f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:07 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:07 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3297d09417586b9128d0ef31a77391bd86b7352d857dd1ace2cf6db3bc484ade`  
		Last Modified: Thu, 05 Nov 2026 07:37:20 GMT  
		Size: 90.6 MB (90634413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d30368f39b7e2dda6ee54b1491f794b556fd4ff7c18b178e41d1504871d34449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b69949d0607758eb8af4a8ba3f537c512f39599adf76461d6a04b4ae71dfd2`

```dockerfile
```

-	Layers:
	-	`sha256:444ef97dde48541aaedac2d6dbebbae609e251d9c0a019cde1aa1a15c1248245`  
		Last Modified: Thu, 05 Nov 2026 07:37:18 GMT  
		Size: 9.2 KB (9203 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b5be1ea09078ce36945dccada8a2b39a158bd84f8cc32ddab834394f4caf8f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120415654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb4639533cb51dcb4e08fc5fcac5eac411d3f1b634f9392a67abf61e7fdb332`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:49 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:40:49 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:40:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:40:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aded08bb4a0c38742c0f5a664554a1a4a7df361286834f61a687caa06140aa44`  
		Last Modified: Thu, 05 Nov 2026 07:41:04 GMT  
		Size: 90.2 MB (90201617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b92cbccb5866c61a7ad1aa5c69b6c4bc6631a817a2b96f64eb89d5fe292bb5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c923bdaed9c955c681161c83a595adf28cce5f380904949f9ee40b3cb23e070e`

```dockerfile
```

-	Layers:
	-	`sha256:09cd4c3aae404965996dea234977d2b5c29bd3e9b7717354b97abc1136581493`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json
