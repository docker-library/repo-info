## `azul-zulu:21-jre-headless`

```console
$ docker pull azul-zulu@sha256:380f72140a90f9139b9ac38e92f24edcc8cb4bb92bf129c16c20e2c2794f27e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ee360df8f13578496a6760c583d5283932eb8e432143a54cbba038a9c25e2f44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104134931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b62ab98a49afe511464c0380eec0830594a91c4121d37c8c8971d0c68db6710`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:36:30 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:30 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:36:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf28e83a199a2dd9a59f4931e995ea4fdf33ebf42527e1aed0211c15d2cb4d73`  
		Last Modified: Wed, 19 Aug 2026 17:36:42 GMT  
		Size: 74.4 MB (74354166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9343db6b51cb074d3e9573ccb250f0129588e891ad830b64284eb50a1e7ad846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5f5e4f11ebd07490f31e572286592a69ba040544d06f18a05967a970ed6bc7`

```dockerfile
```

-	Layers:
	-	`sha256:c76c7220baa7b5cc364c00a9ec4debdfe8b7e4aec4867c21f418921556b072ef`  
		Last Modified: Wed, 19 Aug 2026 17:36:39 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:732bdc4d2b2c97bfe1ea58425eccbb4fd579128181448113ab9d0e2eb92c9781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104147646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f5af3523cb8c40134f8213ba7d09583b56dccd77c3f42691fc65687cae753d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:36:42 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:36:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31adca9286e13db1cc32df7a00fb3b3c26e228af28fd673765a0f9fd0ee049d`  
		Last Modified: Wed, 19 Aug 2026 17:36:55 GMT  
		Size: 74.0 MB (74004037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6d3e145ddc890409b81ab4bd4f52e7b9ab66d2e7d30450e9112ec1f26efab494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd17b24ea4385a25a1e11b653254c6b7388e491bbd6bb5c398b25a138f2fe37`

```dockerfile
```

-	Layers:
	-	`sha256:070f4fdbd4156ad03e1b1fa32cbe84bb6030c9df17d7fb736f126cb353a92743`  
		Last Modified: Wed, 19 Aug 2026 17:36:52 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
