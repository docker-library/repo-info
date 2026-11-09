## `azul-zulu:11-headless`

```console
$ docker pull azul-zulu@sha256:21f52a256845e434dcab9ddf5b63b4e1b914f56a606b23e10d8ebac5d7dcaf98
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b74a920ba96475504e9d946acafbcda39f993942de6e36abceefa8ed653be44c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175159608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b28e0ddd89753fbc2ea1c05cc8a572d17e68f36c60920a93713dbead56ea264`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:23:33 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:23:33 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:23:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:23:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:23:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0653d37102648e5c716bcc461b8d44ece2f87bf501487213ec18939563cb6410`  
		Last Modified: Mon, 09 Nov 2026 20:23:47 GMT  
		Size: 145.3 MB (145303476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2ec0c6754564ab97501eae9f438bb19c2fe52474269914ad3f8061c667dad96b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748a0be6bf913a50d98ecb3e7b1ac7619c7a44016d6cc311929c402376e196f5`

```dockerfile
```

-	Layers:
	-	`sha256:21b05ea1d44236ce8ba48454eb8a85b0fb9c91cb4e3b23db21cef5d3a33fdd64`  
		Last Modified: Mon, 09 Nov 2026 20:23:44 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e6bd0ad6100a6338eec1e70e60651e1198267681e74fb65ccecc2ef34c4e2091
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175205002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde7859bdc3a609c0fff1e15216b228c79be583b7d57b47bcc38eaf0677a5340`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:25:24 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:25:24 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:25:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:25:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e73756b71ff32cf2d1f711346374e2fe41f1cba6939b4aae77bdd91e56d9499`  
		Last Modified: Mon, 09 Nov 2026 20:25:38 GMT  
		Size: 145.0 MB (144990965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:40d31236d1e2363444eb437692bcd983ecdc284174b8518babadc1e9c182e81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4104ac1fed6bfcdbf6696ab05d9cf2095fa79b74c698ec9f7501a268540e57ce`

```dockerfile
```

-	Layers:
	-	`sha256:ef194aec668fc8e5395fd1fb4927177536ddc62633f063892d56098049a6feb0`  
		Last Modified: Mon, 09 Nov 2026 20:25:36 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
