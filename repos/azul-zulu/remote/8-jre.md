## `azul-zulu:8-jre`

```console
$ docker pull azul-zulu@sha256:755c94fb90d3fe2e76efb6d94244b0cfaf18e88eaebe574a585f3ffa9eeae1c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:330ca00ccf69365ba51707ee49ca60e0efd02905b29053b0170ee094b1354946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79115316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6df938726863e1ca50bf6fa8854cc279741fd8ea2a3482a0256f48d8b16f71f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:41:10 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:41:10 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:41:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef1774e07f89ca6dbfa9c68ab1ea98c5459caa0d0f984247eb376439ade2e99`  
		Last Modified: Sat, 19 Sep 2026 00:41:19 GMT  
		Size: 49.3 MB (49284898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8225a511cdd7c73ee9b1a9c455c4d9fbdb1c8b4577b2a6209488b3075d9eca02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73f7d4f657d769f8f93ce344cfff6e69b06bdf08d309f32cb555b9498c89cba`

```dockerfile
```

-	Layers:
	-	`sha256:a213bd8f0a030f9963fef4d696264c7e78ea79448bf985af9578337171545d44`  
		Last Modified: Sat, 19 Sep 2026 00:41:17 GMT  
		Size: 9.2 KB (9173 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:faa2e516cb1d6230aeef9a1d8b069c18c98fb417da063184729631ffb948bc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79700328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ebabd168382253ce7b076351e18de3c30901d3f43b770f96882435292d8ab6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:43:16 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:43:16 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:43:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:43:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23754c6d43395390d185b42a6e5f67e6a5d2d9658baf05ef986b3ad1f01ae7e7`  
		Last Modified: Sat, 19 Sep 2026 00:43:25 GMT  
		Size: 49.5 MB (49510637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2825250e80b3f0383f03bf67fbfe4dcf43c3727cef2c51a10110971c6885b5ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a7482c8653d2da80ca0e8ee3a8438c39c30813f9f376297afe4318cacf9c8`

```dockerfile
```

-	Layers:
	-	`sha256:1022eb3ffa5df1dcb783bf29d15b49bb18c882c6e5a5d93ef1a74d1ac8e23734`  
		Last Modified: Sat, 19 Sep 2026 00:43:23 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
