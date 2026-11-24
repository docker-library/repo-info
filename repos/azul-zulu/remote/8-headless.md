## `azul-zulu:8-headless`

```console
$ docker pull azul-zulu@sha256:a5eb5d3bb4e998caf24b2ac306d30901b12c5fc315c2f796c6062717226eb402
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:38b1b3526d978db55aeaa3fbe24475989d0a174d7160921180b241917220a0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88497378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d0fcddfcda67ca5dad80b37ae6ce2652094e478a1bbe804042c48ef17aa2e8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:35:00 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:35:00 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:35:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:35:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ecd78ba52da6f3204f6f2d39ec2e282f7952e79a28697c2176b9d29c5d2da3`  
		Last Modified: Tue, 24 Nov 2026 04:35:09 GMT  
		Size: 58.7 MB (58655196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e9369f44df93e5e5db12ee6805b7dbe3987d21d89413ea1660a3eeab305029dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a0c97aa7c394a212d8defbb58a1cecdab8148917618a7169758c2172b9565a`

```dockerfile
```

-	Layers:
	-	`sha256:1b41b386494c9d178a9dfdeb97976193e35ae3d2b7a5de12f8087ceec0fb1c82`  
		Last Modified: Tue, 24 Nov 2026 04:35:07 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5287c0e24335347c2cccfcb6a1063eda48d07ac579b85594de1fea2721920a79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89167889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c851e8b3dbd88c1e81a6c23646c9b709a86b1eedca7e51a90df48d9753ec3c8c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:55 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:38:55 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:38:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.514-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:38:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b952390e8a52b2b7993cdc321ffb548a64345cb5ee07d0fa90b28748eb5d2301`  
		Last Modified: Tue, 24 Nov 2026 04:39:05 GMT  
		Size: 59.0 MB (58969855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:71f94b061e8e0d51468190da5de5b8e2de5adad2c1b356d735f83db0cf76d53b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad32ad8c309331849cd582453ecd673a6ca017eed2686569c70ef2b1482bb49`

```dockerfile
```

-	Layers:
	-	`sha256:f386b6ef86faa7a62449790c82e07aefddbafe4c9670d5ac628c5aeefb9cb957`  
		Last Modified: Tue, 24 Nov 2026 04:39:03 GMT  
		Size: 9.4 KB (9365 bytes)  
		MIME: application/vnd.in-toto+json
