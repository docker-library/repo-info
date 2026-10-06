## `azul-zulu:17-jdk-debian`

```console
$ docker pull azul-zulu@sha256:f09dd7835fbc0dc679c5812a1084641a37e39145c51f10599d6ac5239ee3d0a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:fbd52d355ffccb0ec53434eb4ed14890dfdd99cd79ebbc3063d96669349afcdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.6 MB (181566686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ff28b3036098ddb922cf503d8b31a89f457cd02582192815fd651ff134550f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:38:20 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:38:20 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:38:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:38:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 06 Oct 2026 01:38:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d46d841e79ed64d7577c8ebab9ccc4e0bdea7881f5158c840681629b7c22ad7`  
		Last Modified: Tue, 06 Oct 2026 01:38:35 GMT  
		Size: 151.7 MB (151723336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9e40403f5b8865c42ed14d9bc4d1034cc338613ca041d927a4cf65d9aa77354d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82660c0fbecd9b278ef0521f2cff69d57d7f50d14ef246bbde04a51218b8646b`

```dockerfile
```

-	Layers:
	-	`sha256:2cc8521c30ed1955f9d2d2da2352e78a054f408a3ba3168f24dd09b93500f91b`  
		Last Modified: Tue, 06 Oct 2026 01:38:32 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:53472da738e793e4d95cb9cb2932c0cee86cedcc30ca0c451eeda62b8d97ed7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181917327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedbea3b0b3c6a1123d2aa2a68418e94cae42c6a8b0f5b00ded80a5f0dc95d37`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:29 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:41:29 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:41:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:41:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 06 Oct 2026 01:41:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188329de5eb46c52cd8f306d1ef878ef7367a69e52b766c5bb8483f4a38297ab`  
		Last Modified: Tue, 06 Oct 2026 01:41:44 GMT  
		Size: 151.7 MB (151717045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e719f55cfa4761efad2743bd48311db5dbaf71cc724049daf9ef1bc0fc6bab9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa5b2aa8b653609bdbbfe4711ca3b6ebe7a93ed9f56fc63e61315daf7756e06`

```dockerfile
```

-	Layers:
	-	`sha256:6cb9784787a5d0d2be0236e9133a5be4eab36c9cb7a6834134721cf5677b99e0`  
		Last Modified: Tue, 06 Oct 2026 01:41:41 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
