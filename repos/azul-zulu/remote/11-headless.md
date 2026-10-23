## `azul-zulu:11-headless`

```console
$ docker pull azul-zulu@sha256:92c4b729cab2cb4295e41e68fa1b2f179ac58df48fb562c8fa9fe238c099630f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e610e1856e2ac6cab2d08cd29db2ed119352863cf37bdf448a15a5ad143b5f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175146516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e773d2192637fb43c3b25809a2431450d1eeff297e53080e420614f04083184`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:00:58 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:58 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:00:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb51fc8656cb3b4ecdfea76200d789a77e4968616e768ce9f380b6da78d5bb64`  
		Last Modified: Fri, 23 Oct 2026 20:01:13 GMT  
		Size: 145.3 MB (145302937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d4cb7e044b62de0cb7a113bbe9b2377f25b58b0ea7463f67e7ba0dbe1683df24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40389d0c37fffcb1f9bd3a96388157b49dd664a328d40647ff3ae3d7046d5c82`

```dockerfile
```

-	Layers:
	-	`sha256:589e85b473ce76e6adef5ff1a6ccd15bd16eeb2647601fb49c9db34ec2b70221`  
		Last Modified: Fri, 23 Oct 2026 20:01:10 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:bf39e74f6a5352f13769991934045673e51040f1bb7f68688083bdf040a85bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175193507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb04dbdb8f2a73261f09f0ac38887df6c56757a8c2e57de3cfa48744daf715c0`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:03 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:03:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d15c71e8b0645af1ef83681d29d04bd8423b1679b2f70b3d7d446600436026`  
		Last Modified: Fri, 23 Oct 2026 20:03:18 GMT  
		Size: 145.0 MB (144993029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d4a40434455ea2335a5e0e671ae3a44d5bf015d5ee20498a6a1cd5f1011fdb23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af716d532ed5757adb22b4ac6c9ddfc3522c7c63b132cb6d05e06ae93c0c136`

```dockerfile
```

-	Layers:
	-	`sha256:f56c1f25f608b79ad6e42fa42c4750bd4612a1bcbd39da53a4236c4fe4714253`  
		Last Modified: Fri, 23 Oct 2026 20:03:15 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
