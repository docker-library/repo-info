## `azul-zulu:27-jdk-debian`

```console
$ docker pull azul-zulu@sha256:d25987270e6424f96e2ade5aaf9b8227b93129398b5fc0df61b83c3cd2ddbeea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:cd19dd11edc0fbe7af64c85483c85fe027f0e3106d8847deec6f066b88a1547c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215456004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29efecd50891fa43e38d7cdc5763ecd863f0dfbad4c0cd28421dee6f27f82044`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:10:59 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:59 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:10:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88834db0c159ac9e10198af19ee4571bc8c6e7e1226a57cae34b320b54072e27`  
		Last Modified: Tue, 03 Nov 2026 00:11:17 GMT  
		Size: 185.6 MB (185600768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7676caa0700a6d8dd108819de857213bf2203d60230b9b94f3c3721650206cb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faedac4609216b30ad7c214dae782218578a411ed7859745d8ab0b022fdbe322`

```dockerfile
```

-	Layers:
	-	`sha256:7582db047ce22f4c9ea7934845fc4700d3737083b8639b3aa9b61f003ba55d18`  
		Last Modified: Tue, 03 Nov 2026 00:11:13 GMT  
		Size: 9.5 KB (9519 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:33a227a512f80076362f18f2f71363fffe988e17438ca8723c13ce2256a14662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215501289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e943177426d100b3307d61f9923ccc3e3aff01e2e5afc7b2638767f741ca56be`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 00:11:23 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:11:23 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:11:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27.0.1.0.3-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 03 Nov 2026 00:11:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:11:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f73c8779f9616dc46c21b30fa8378a16090203edbe6a54189cf08ed114274f`  
		Last Modified: Tue, 03 Nov 2026 00:11:43 GMT  
		Size: 185.3 MB (185287793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7131afd9a9e7ab07b43afe8f6e43989626a9e4af0443b881bc9defb09d328718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0748d7a2a26e4985a320ad8858777d236665d5264aaebe1a66541674e97b0e8c`

```dockerfile
```

-	Layers:
	-	`sha256:a8402b7a97bdc274c2c24c333b62efa9b94fecc7205db122e4c327ba4eaf9d48`  
		Last Modified: Tue, 03 Nov 2026 00:11:39 GMT  
		Size: 9.6 KB (9636 bytes)  
		MIME: application/vnd.in-toto+json
