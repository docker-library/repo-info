## `azul-zulu:8-jdk`

```console
$ docker pull azul-zulu@sha256:95a9c2b94730e817c72a7f2b3f776931a1827807eb705fbcefa7ed154bc3576b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:eeda4b0dfcbeedd9a43737d1c7897b78cd0896b4c75b64661e098bfbace784f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91278567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c48a9d195bfff19da1bacd9ecfac73f660f2d32a234d46a19f7b91ec252a42b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:40:27 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:40:27 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:40:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:40:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ead30744ffb9497f5bb2a40dfd61a02cd626870d20880dce9462ba3449b79e`  
		Last Modified: Wed, 05 Aug 2026 00:40:36 GMT  
		Size: 61.5 MB (61497802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0f7148c47b6e94bfd0963c2badeb7821ddcee2000f7c906691cd755ca0c4833e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb90dd0208e0ae09ff85e646e0b54a10475414a7948f1d052056ba0642f7e18d`

```dockerfile
```

-	Layers:
	-	`sha256:e324ec102b1d964efb30a8060ffde0b5bb76ecae7d9aae414c8f0da75e0b7a2d`  
		Last Modified: Wed, 05 Aug 2026 00:40:35 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f1a3102dfeebfc79b0de3b8206de9106e7f86cc43cabfa6c1c74e00460967181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91958298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4f3e512a4736d29f1c5cd9878855b729b8eff38e1f2929ce3308f23ac0072f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:42:52 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:42:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:42:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:42:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac1659d267bb94f656d5facb1ebb2142f0eab0b219a9ecf25f6ca0fa1825eb0`  
		Last Modified: Wed, 05 Aug 2026 00:43:02 GMT  
		Size: 61.8 MB (61814689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:43b8d8327e81c16e3a589b22f30416134b2cfc50b820a85d50f8b9c00c88125a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4b0aebb4d6f97df6fb06971e0d108c6f764959e76a0008c65d14bf5ff567b0`

```dockerfile
```

-	Layers:
	-	`sha256:010b7f7eb5c1c812fa3306a507f3c11ccc745ce965a4ef5285c7258d9b66b0ca`  
		Last Modified: Wed, 05 Aug 2026 00:43:00 GMT  
		Size: 9.6 KB (9584 bytes)  
		MIME: application/vnd.in-toto+json
