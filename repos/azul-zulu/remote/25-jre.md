## `azul-zulu:25-jre`

```console
$ docker pull azul-zulu@sha256:fa128fb9caf2c353964f9e03095c86096d4e2757b57c64ae23e86abdfd1fbb39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f8e38f4ec9553dc41beb1e2a9d0eee916b76923445b3654af3c8e1ea09b244fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120348238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ec4e237bc9857de7fa00c31a5e70614342cb53e2a0c29296b1307a8a9bcd47`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:44:03 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:44:03 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:44:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:44:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251b4369a7d7ca9050ea8bffdfe8f2941fc4ac162e21fff1e6f809cb659ae14e`  
		Last Modified: Wed, 05 Aug 2026 00:44:16 GMT  
		Size: 90.6 MB (90567473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7c819d6cb6d0ea076b2e9e2d14e6f6645606204187f7d0e59d0751aab8d837cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7e8478f5ad09cf47b2d573c8ff0276ae14fba1d4412830863ab5074083d677`

```dockerfile
```

-	Layers:
	-	`sha256:96bafe85d65230fe6fdbbc94a28c18b73a28244f4cab0e50013ca1f8dfbae692`  
		Last Modified: Wed, 05 Aug 2026 00:44:14 GMT  
		Size: 9.2 KB (9187 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e78ac110baf7d1f3bbcfcd338a408432bf0b13bbfabcdb960d23313131292a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120298895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3cacd65be486a0ca1c3922fad498cf7c9e17efc44922e8761a2cf08f8ff8fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:39 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:46:39 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:46:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:46:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42221e058bc9ac67462bbbe38a04c586b129f3523a8c23e991b67609f96a141`  
		Last Modified: Wed, 05 Aug 2026 00:46:53 GMT  
		Size: 90.2 MB (90155286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cc30b99e2e865ea219b0cb88b6e93080dcd2a3995ab882f898ccdefea2b627df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6e677d28a3c14672a3861dc01da82e8ed3473e6e04cd09df94fef8a775b190`

```dockerfile
```

-	Layers:
	-	`sha256:c33c5b8e869d802f72a65c3f0a74758ee703220373c0dd8187341eae64852829`  
		Last Modified: Wed, 05 Aug 2026 00:46:51 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
