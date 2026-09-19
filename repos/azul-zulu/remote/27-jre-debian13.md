## `azul-zulu:27-jre-debian13`

```console
$ docker pull azul-zulu@sha256:479155db66b27c69ec7d39b236225896b87ad8b0ba941d192fd26163056551e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8e829aefeb8bf8b893bf0e0020eed9f1f087bbc54e91d5b31cfb2d58d65940d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120867735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1601701a3089d1a23414175086c4ef0798ba497f3aa045ea6e584b27c78e9195`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:39 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:44:39 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:44:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:44:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2146ad16a5939c62ca427bedc4ffd5de1d7004cc0fd311a7ff3541df46c4656`  
		Last Modified: Sat, 19 Sep 2026 00:44:53 GMT  
		Size: 91.0 MB (91037317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d672167443b24e490d22a12bfff7cf2289cc88615d390857ce4f77bc20b3b3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b1c7c1266adf168cd87f4eef1e54094d24b39a369ff4ecbe98f5c94d3593d21`

```dockerfile
```

-	Layers:
	-	`sha256:01b251bd21232816ebefb7d5ebe242c1c3dfb13c97db8434562c71608cec3beb`  
		Last Modified: Sat, 19 Sep 2026 00:44:50 GMT  
		Size: 9.2 KB (9179 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d7fc3e9b060f134bed68da10a4d69ffc341d96fb7c417ab53ceb66d22248a524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121110406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e919858c98f16e30036258fdd04e5e645a5ee5829fd8702285e606b6fda67c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:29 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:47:29 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:47:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:47:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabe5733f4ecaf6a245110d81724555d261759a87c4d74ef121c047b49ebef2c`  
		Last Modified: Sat, 19 Sep 2026 00:47:43 GMT  
		Size: 90.9 MB (90920715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3567698c8c64dc09ea72823d13a287bb7402c465061420a3bd75503a1daf95ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f83bf50d78c655e001af75d5c1b1fba1bd4f6271d5d8c18429b62483adb2e1e`

```dockerfile
```

-	Layers:
	-	`sha256:38149005583807ed3f02dd385a05e40aea3c0fd8e89ca778f18445177a704633`  
		Last Modified: Sat, 19 Sep 2026 00:47:40 GMT  
		Size: 9.3 KB (9283 bytes)  
		MIME: application/vnd.in-toto+json
