## `azul-zulu:26-jre-debian`

```console
$ docker pull azul-zulu@sha256:495035e64d43fa2ca59a0bab8567fe82ad3a6619945693629dd09fa7a02f12ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:00c98e396d0dad4ad4802815d8650521c96a0c6e367358177f5ed4f64fe1ec28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121969234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478547b1fc9c4fc8c1d36546289df1a8565b5afc978aaea089a7371833b1ac93`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:37 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:50:37 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:50:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ebf190bfe12db32d62eafdf15bfd2a34fd9dc7096e4c1d14b1e66c90acda899`  
		Last Modified: Tue, 25 Aug 2026 00:50:51 GMT  
		Size: 92.2 MB (92176576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8d77659cdfc973206e3cd046a0871b326f0313dd33cced33b3dbd71fdb3101a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d343eee9e76384a1792b64a0b0c356b3d15a55640e29de51cf5e4d0110ee7ee`

```dockerfile
```

-	Layers:
	-	`sha256:60a98976cf3d97514738c391122560e7b379722b9d2c314ce311a07f8fc1b370`  
		Last Modified: Tue, 25 Aug 2026 00:50:49 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ab8f65ade33ced2a637dc2c7d1803e51fe0d8781c54eee37efe9f6f94ef7715e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122250525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e907b125e8fb08f7d68285bdb4eeecb7a5463ed3bee063f0505c338d52dc9762`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:40 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:52:40 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:52:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:52:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c1a197a2e2c890235a5617d00a791d12a1630eec34260a446f26ef93896c50`  
		Last Modified: Tue, 25 Aug 2026 00:52:54 GMT  
		Size: 92.1 MB (92090943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6364ab238c99b1ac6971d1340a85b76352eb73b7c4fee88587bd41193076e91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:426600ffbcb462a6c81e29245c1c62866d212ecf62a6d1566450cf7e7a089584`

```dockerfile
```

-	Layers:
	-	`sha256:17a1a932f1df466c58912309b5fb293ebda751b228479ee89fcd6a6ae8023833`  
		Last Modified: Tue, 25 Aug 2026 00:52:51 GMT  
		Size: 9.3 KB (9300 bytes)  
		MIME: application/vnd.in-toto+json
