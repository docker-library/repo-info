## `azul-zulu:25-jre`

```console
$ docker pull azul-zulu@sha256:2ff774013e0560f4d539126e8d61dccdac87a2ed09c9f53230a815cd746a583c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:41b5fecafa3780162d329c896aedf410911d80d14b910fdf6d146edf2e26729a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120415889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff0a78acec20b6d749765296f1200039cd5637e18edcd9a054b94ca40e17535`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:11 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:11 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91ae88bbfbe50a6dfbd0823b35e6c4c41c8da7cc92bbe89cec6d9021509bc0d`  
		Last Modified: Tue, 06 Oct 2026 01:40:25 GMT  
		Size: 90.6 MB (90572539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:dd89fe099228a24e2060b6bc340ae0bee283486ddd0e38e2018c48e22c60f9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b667a37bfbb62a074c18a71913494b928c1e71facfae9f24e79754663a2a28d0`

```dockerfile
```

-	Layers:
	-	`sha256:469cbc0b8b1472a0d8a8cf4a48bbf84aaf07a20da54a1567d2fcf55a856975b5`  
		Last Modified: Tue, 06 Oct 2026 01:40:23 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:9b8cdcb90c50523ea48db80b2c9c0259f3ebef590b6683ba64341bbcd43cc20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120357770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1632424911a7e9ed0259001874cddfb0edd04497b4e43f1d22e667aefa9b5717`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:22 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:43:22 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:43:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:43:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9c6666ec6bae7e6179b67326af49ad76b1cf1f1be6b770893a1549e8db21a2`  
		Last Modified: Tue, 06 Oct 2026 01:43:36 GMT  
		Size: 90.2 MB (90157488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0b7f7fbcad639ae6b96553e942d7942b2376fd6a5672fd35c34f72bd84c1144b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a072aca551dc62021b22c7e6d28756557ad793f359a0be6fe7bfd02f8b8d75b4`

```dockerfile
```

-	Layers:
	-	`sha256:b19e5882c16d4be48fb691aa3c25066928ce9add662dc2ab4737fd2c22ea5a8e`  
		Last Modified: Tue, 06 Oct 2026 01:43:33 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
