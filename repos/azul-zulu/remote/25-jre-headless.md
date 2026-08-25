## `azul-zulu:25-jre-headless`

```console
$ docker pull azul-zulu@sha256:99eaeb31472e3e84668afc16b4fccdba9d833e7d8c1eded176072cf1bd3e0965
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:3d029683db69111e80d17bee5445b0d8d9dc589b018ccd8d8afc3fccf109bfac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118307099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29e7bf4de4ad1e80c45d7fa0e8467f8e4dd744d6d1ca82cfca0335631301a28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:06 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:50:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:50:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6a45fff1cc92139b3e35d1f9005a2189021538eb70cb7238e62324437faf0e`  
		Last Modified: Tue, 25 Aug 2026 00:50:19 GMT  
		Size: 88.5 MB (88514441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f224903c1aa2652671f07b2d83931ce12aa700066f52f236b69e3816830d5945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e040636868b9a960ded5a7d2e99a4b9105b2a4bdda004aa3a54b730ea0d31ea6`

```dockerfile
```

-	Layers:
	-	`sha256:3acb89b7c8b5bea98bf72cf501ff0908d7178398d41d760c3c4a2add6183e429`  
		Last Modified: Tue, 25 Aug 2026 00:50:17 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7f61fb9a00f2e2dec93237cf995ec9f4c33a8bef5d55838f270341752bb64d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118263920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98239dd7da433e1c4bc2dc44ffa566ca0d38047f27e0ca2e0b2116f75a3bd646`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:52:11 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:52:11 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:52:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:52:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22383a27c67b9f45a3d5fd7f06015dd227d7c475398b73ecb86407a08314fc01`  
		Last Modified: Tue, 25 Aug 2026 00:52:24 GMT  
		Size: 88.1 MB (88104338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5b7cb80edab711f611588ce96e6d9c80e6e79adfabfd6c0348c7cddf800bab84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ee71eb69f469d96a277de0985ec950d3d2f3e513fa58e07afb7e5f6e9014a8`

```dockerfile
```

-	Layers:
	-	`sha256:b34726f8c6f5f42b09e6f7faccff6579d85099149070cb1a026d6e93826550dd`  
		Last Modified: Tue, 25 Aug 2026 00:52:22 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
