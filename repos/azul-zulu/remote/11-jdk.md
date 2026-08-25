## `azul-zulu:11-jdk`

```console
$ docker pull azul-zulu@sha256:4019a881be38a8cb124b4e6d3d26980683e898b05ca3e9218407d09737e847b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8241a3aa33d4dd486eeec5b65712caf9af7caf5d7278d38431c810497c20e335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177393844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089b1e42590375d9104bf5c2f1b3f7d939506f3a7e1a8dc7a01237de0f33032`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:47:24 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:47:24 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:47:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:47:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 25 Aug 2026 00:47:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8018c8869812b973a87d5f58c3717285fe4f14539f22a6dfc3bb22f5da3b540b`  
		Last Modified: Tue, 25 Aug 2026 00:47:38 GMT  
		Size: 147.6 MB (147601186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a593f5ba331da5466e7f019d11848cdf5114abd090dd101b441a433d0d9ee2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d954f748e955eade31b03561dd49f59359c303d4a97fe52c06996e296908280`

```dockerfile
```

-	Layers:
	-	`sha256:8b797b3715b3ebbaca4549cac482d041e00ca9bb739f41fc13b12718237b6524`  
		Last Modified: Tue, 25 Aug 2026 00:47:35 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8976b9ba5ef6f7ab19a3175a2230e67414d4c9e35313f55d7d1fc8757a0e207b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177439801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e28f999df515dafe88c47c0f99cbac02831fca3c39556fc6f20ef7aa4d79f8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:49:09 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:49:09 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:49:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:49:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 25 Aug 2026 00:49:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2baf644952e75b05b64cc77e2d910dba3b6151e6d7df5a7cd7b1ce34457d05`  
		Last Modified: Tue, 25 Aug 2026 00:49:24 GMT  
		Size: 147.3 MB (147280219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a92412d269a78dd202c239e128c9524266a3eed83aeec4b05179347bf216e9e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b3e2f60483a6d35dbad7e2d8fbeadbf1f3e1d878b0fb4de4090bb13282d591`

```dockerfile
```

-	Layers:
	-	`sha256:4ead0e0b62f00d60c49551a2455ce780546e2296d723cd3eaa2e5301d153c48a`  
		Last Modified: Tue, 25 Aug 2026 00:49:21 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
