## `azul-zulu:26-headless-debian`

```console
$ docker pull azul-zulu@sha256:ac4858fc203632f54fff6729f7e5dd8684165612b46b8d3b31e692c0fc3709b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:940108a4ee6f8b5fc5a82a5cd4083a4cf50baf90dfe097d903a855f207c5afad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215164214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee4c798e8719c6c163ca0f10417b0ffc74eb2b3ab3f532983321e7dc8f7a69a`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:37:17 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:37:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:37:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:37:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 07:37:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aad85bacd7942f72d148f4bad5e75bbf46150a714b743b7b938546a7ed1c4b7`  
		Last Modified: Thu, 05 Nov 2026 07:37:34 GMT  
		Size: 185.3 MB (185308082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:48e7443400ff7e66703230e2188a05eca0ec597834615f1d64c17446ae989d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cce2de05574902ccbc974d6fb59911d96689d56263cffa7d6ebe585891953d1`

```dockerfile
```

-	Layers:
	-	`sha256:f202c8da2fad80e171f134698378b3cae79359e1c9efbed1645dcafb0d24e4a2`  
		Last Modified: Thu, 05 Nov 2026 07:37:29 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:754df84f701f2fbfa2b471fbfac3ad5920d4df65342c1ca6a669254bb7286bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215234272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8046119574b11f8ece4b3596b0f26ea90539aebe75e5077b4d7eb175694f0f1`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:20 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 05 Nov 2026 07:41:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:41:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 05 Nov 2026 07:41:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 05 Nov 2026 07:41:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908a4167ba93cc51bb3637a6b83d7bb4e99c90bf0e3d253f012fbdf38367629a`  
		Last Modified: Thu, 05 Nov 2026 07:41:40 GMT  
		Size: 185.0 MB (185020235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d878ef6d0817d1147a74a751e242eee7a968f7fb26835382b7662a930d74e0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc840c1e05276832e89c3b90ae130665a01a85707dab138e1aacc4109c58b5a`

```dockerfile
```

-	Layers:
	-	`sha256:8c7831a121db0cbe51348f28c1d6f8dc59d04bb064efb26372b102546da40b81`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json
