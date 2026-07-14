## `azul-zulu:25-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:b06e37a616f5da1e159d2b413305a0a7c2ff76061e9a48a463d12d7069ed153e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1d19643ef65a79498a5855270be4a0a9cfd31aaa90536f90a225458e1dffc455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118769996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff00c765a99c28d8c3cee76eb7ba5b1828de971b97a1f1799f788fe98deb3a3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:42:48 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:42:48 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:42:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.3-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:42:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29e3ec87326afee70ef15b12575d2d7c579cce688da81beb9e457d2b7bbb701d`  
		Last Modified: Tue, 14 Jul 2026 01:43:02 GMT  
		Size: 89.0 MB (88989091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1553c87d1ad37550c7f7c6954b852646dcc1c03bed1fb6e31c4ab357d62734ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9bed89ddc89b899eee9ebe954c2c09ff92ee3f5da98c74e33e6fc21e8ae5ab`

```dockerfile
```

-	Layers:
	-	`sha256:29bdb895a5915aff76834f7274096951ab144c0690a402272eab22c9f6b27aca`  
		Last Modified: Tue, 14 Jul 2026 01:43:00 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b3a257c278cff9c7bf3a0a7314bb1b80f784794c07fce9ea215ab32fdcf82e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.7 MB (118740908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bbe9459e87d06f8e359beee85921f955f4482301efa217a1e31564faa8e584`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:45:57 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 14 Jul 2026 01:45:57 GMT
ENV LANG=C.UTF-8
# Tue, 14 Jul 2026 01:45:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.3-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 14 Jul 2026 01:45:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecb3315b83445a35dde262869fc8920fead78b404301a17e4a0b2acabef0038`  
		Last Modified: Tue, 14 Jul 2026 01:46:11 GMT  
		Size: 88.6 MB (88597203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:232fc7f85e34c6c1070ff0b83c909a02d516932fff8b5b21637265c5f1fcc193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17f09061fc826144a843a614451b88e631f7dcd72fde63f730a5a7f9e634049`

```dockerfile
```

-	Layers:
	-	`sha256:144ddc2bb25fa802caca98e8ad70dc10cb4cbc0381b8f32e99fd1113be85f463`  
		Last Modified: Tue, 14 Jul 2026 01:46:09 GMT  
		Size: 9.4 KB (9401 bytes)  
		MIME: application/vnd.in-toto+json
