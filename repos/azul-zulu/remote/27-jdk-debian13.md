## `azul-zulu:27-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:07ce04b99540c7cc0dab4d7410df5b43570db810b5547fe3de0a9c12ac8a9b2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b432af361e461a9647af6defc0aa602b5c67f3d3bebce20706ea5247a817d0a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215476038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1846c80720f078ba81d467425f276b6d874f9ce794aa92e316b9e7a3f9185cac`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:04 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:39:04 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:39:04 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:39:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 24 Nov 2026 04:39:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2397a9b42ed038e997803853df968674ed293db6f7480f7901828108059e5f`  
		Last Modified: Tue, 24 Nov 2026 04:39:22 GMT  
		Size: 185.6 MB (185633856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c5e3c4015b4b2c81e28d3ac14cb83fda1dab352c277e93ccfaf00a0ef6a81422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e543b94918bf8fa95a04823c2a8758c5e9b0ac72ef11e8bb700140fc76ad2caa`

```dockerfile
```

-	Layers:
	-	`sha256:2e87b4bd31a31b68de541a8ecb9a3a5dc194477b814c0fa3b5e96590dcf3656b`  
		Last Modified: Tue, 24 Nov 2026 04:39:18 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1fdec29da0e663c564be5391b9a39ec078d6e1e697f83c40b0f0078427b2996a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215517535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b73e112528f5eb826fa2000a5f313fd99164dfe8205246b8f52fb7e9b7072e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:31 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:43:31 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:43:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:43:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 24 Nov 2026 04:43:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114c30cfcf4bb360b1e12d512c322b505c0965297e4107134f62d9e5da75f083`  
		Last Modified: Tue, 24 Nov 2026 04:43:50 GMT  
		Size: 185.3 MB (185319501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:efff1227094dbb1b63340092eea9878952cad45ff479dfd5dd14f4d73b6873ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5d920f2cc06160679534eae83d1682a284b257a345492f1e0392427d5be666`

```dockerfile
```

-	Layers:
	-	`sha256:1f9beb40dbe16561e2473099cab6cd9f410ed9969bea23ec85cc926b99943886`  
		Last Modified: Tue, 24 Nov 2026 04:43:46 GMT  
		Size: 9.6 KB (9625 bytes)  
		MIME: application/vnd.in-toto+json
