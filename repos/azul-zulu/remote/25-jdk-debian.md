## `azul-zulu:25-jdk-debian`

```console
$ docker pull azul-zulu@sha256:07fb9d10630232672607993ef57e02a373e384fe99e84aee90a41ca99f1b78ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0d9af268f39d53c586bb9ed7ff930c1439e22376242645dce147fd0a35d8556d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214086683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d399393a695e5e7ff5f14a9cd899a9173acf2544c5e1e11cc7a59616bc442e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:38:06 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:38:06 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:38:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:38:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 24 Nov 2026 04:38:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109179683482f3343a26b66b5357c68c15af72b04a294036b597e0337be650bb`  
		Last Modified: Tue, 24 Nov 2026 04:38:24 GMT  
		Size: 184.2 MB (184244501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:423b8bb61aecec3168a4cccc28b849e3d639cb453f8f28a8ede16ab399b3c7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8480003a69ff29433a1509212f1a75acce02b378838b45d8ca14381d9324d7f7`

```dockerfile
```

-	Layers:
	-	`sha256:065885d404f50f8c25310dae8883ec7ffe3191f2a85f144a4471d5393e3b8ada`  
		Last Modified: Tue, 24 Nov 2026 04:38:20 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5cf4af938c86a1a2d18dc3c2bfeb23e1a04710e87c5f5234ad181c9df98838c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.6 MB (213554935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e2b6b81a736d0f5b02e57c708b4e736320c82198406fd627e801841d3a2aaad`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:42:36 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 24 Nov 2026 04:42:36 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 04:42:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.5.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 24 Nov 2026 04:42:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 24 Nov 2026 04:42:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7aa2b2d53e2d7094f31c80a89ca7101027c1d4f01523b9aa558deebf14cb7ac`  
		Last Modified: Tue, 24 Nov 2026 04:42:55 GMT  
		Size: 183.4 MB (183356901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:23aef94778347ce129b984aff9fbfd2146a811eafed4e8af939a5afe9f70bda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e4e72c00e74631a9dd7641aff976465d198871c2b0ef22261108327b6c9f124`

```dockerfile
```

-	Layers:
	-	`sha256:cd55aa4230237e6c836db3d24682f5a6d94e031c021b5e0d8f5bffda8a61a50f`  
		Last Modified: Tue, 24 Nov 2026 04:42:52 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json
