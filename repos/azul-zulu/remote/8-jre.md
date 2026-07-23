## `azul-zulu:8-jre`

```console
$ docker pull azul-zulu@sha256:d1ccc2829c36dea5df5472f417e8037049654f03e05427b578bd7e233ae9d995
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bc099b952e1b71b6cd13a543c7c76ea66a076f8263a39d44d50aef540896ce03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79064765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c20623c0e271c4723d0dc23fe65a2fab1a888ba9afd59542bdf7fb4051c5835`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:28:30 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:30 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:28:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21e3decd7d45bae4486eaebf3a870378140d65c3efca9a5df7371fb316509ce`  
		Last Modified: Thu, 23 Jul 2026 22:28:38 GMT  
		Size: 49.3 MB (49283860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b08d23682fcb0823bfd93ba1f8196842a64cf95da5d7c9608d826b03963e5df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ce600d3ba4e2bed8052f08c779dc149f36ee25e674776b7b0bd28a5fdb7b97`

```dockerfile
```

-	Layers:
	-	`sha256:4e39895d1f55a3ce8ea16984ead22bb95d767787996275aa6aa9d1671f7cb7af`  
		Last Modified: Thu, 23 Jul 2026 22:28:37 GMT  
		Size: 9.2 KB (9173 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7565b4d7e3078efb05d56e8f2a347ac35d6d364bce1025a362b3c7af530070c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79645162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44327aee6d50bc7cc063fb5442a38a81b8d5044b36da2b5e1e1ea4e3cebe52d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:21 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:21 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.502-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28eabe0fa1e6ea754b1f31cb1a9cca2cf44cb6f09f7a8936bff91e29eeb5da17`  
		Last Modified: Thu, 23 Jul 2026 22:29:30 GMT  
		Size: 49.5 MB (49501457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2aa5a0f3fc21822ae46b85690949c1c26538c18cb1f9468e10d8db332037579e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c1d4fc3cf0d4faec275e1191eab2de93424e7a569dcfc7226ac46320110cb2`

```dockerfile
```

-	Layers:
	-	`sha256:6d6cb36698ba8119be7704218282b6fb308d4a8b31107a5712473ed475a105c7`  
		Last Modified: Thu, 23 Jul 2026 22:29:29 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
