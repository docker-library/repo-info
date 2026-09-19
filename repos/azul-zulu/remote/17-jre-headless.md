## `azul-zulu:17-jre-headless`

```console
$ docker pull azul-zulu@sha256:ca9aba9b0d994d4f50de7d1fb918d597e7d0fcafd98f7001dcf59777fbe59606
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c39d9668a195cb575ce48c0b74fdc2f6af5105af1880378914f48397fbf632dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98879234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d868252429d27179938eae080ec3d40f1121f3c427be694f9e57d8d9f6fe8d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:35 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:42:35 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:42:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:42:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99856e2cba8dcaf0c745c4c7a1603f46cdb96488233d51ab123f9d32326b496e`  
		Last Modified: Sat, 19 Sep 2026 00:42:46 GMT  
		Size: 69.0 MB (69048816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0f0974d0e9497d8b9d637de481075b877cecb2184d6fa16a2755ba4185b89bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b7f4a52d53ef8e0b839ac0affde178f9cc38e4debcbe50732e5041ccc13a01`

```dockerfile
```

-	Layers:
	-	`sha256:b933d5a304268e420decbf9bf4a9d8c3f9552337ed0332c757b6082de32a45c2`  
		Last Modified: Sat, 19 Sep 2026 00:42:44 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:15b94a2c6df576e8efc42de49dad04e8f820940acd8847038bfda2f55438f95f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99278852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da6f4e237875ef094a53a88771a3a803f813fcde9a0a74d7b59f6d0b64ba45d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:44 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:44:44 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:44:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:44:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31d2de7a01dd55868198d9cf9c315e2afdf860a1241c7bf412059e775d27720`  
		Last Modified: Sat, 19 Sep 2026 00:44:56 GMT  
		Size: 69.1 MB (69089161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bf237221debe6a168f11635c04af97e549808579ee71d346195e81d0518d4527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f24182a91c86980e1f0dc5cc2db02b9586bfc5173e01035804b36022cddf046`

```dockerfile
```

-	Layers:
	-	`sha256:4d99f8063fefc16b7d9591d48aedafaae401233e0d8a7e009abe49fa8043b5d4`  
		Last Modified: Sat, 19 Sep 2026 00:44:54 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
