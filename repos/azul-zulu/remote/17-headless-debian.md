## `azul-zulu:17-headless-debian`

```console
$ docker pull azul-zulu@sha256:951fcaca90d5f021b40ccd035dfa92ef3876384c0cfd75fcc99b96c5c0f0476d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1b10d7c16bbfcbf701b1d42b54438bc316a110207730bf65c72ea7b9b508e56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.2 MB (179237153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8780cf9c5393a4e883a115a313f35d7cc4656eeea00fefc936748f7fba1394d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:48:57 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:48:57 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:48:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:48:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 25 Aug 2026 00:48:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e787abd968b2e3fa9dcda58d779997a2ef7057e26b6c5cd1733e1f1296cc4624`  
		Last Modified: Tue, 25 Aug 2026 00:49:12 GMT  
		Size: 149.4 MB (149444495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:42a0febd4af548e85948650e1772a6d3dd39dcea07554293aff962d8ddeab63d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4737fe96273633496e2e723d28a6b3176d8e165d2dfcaa5824356af03ca02744`

```dockerfile
```

-	Layers:
	-	`sha256:092b1a98db7f88a216e22ce1bcaadf0f4a42e32b10f62096a42515a5ac6ac23d`  
		Last Modified: Tue, 25 Aug 2026 00:49:08 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:97d95954e8fa6729b75464229233eae3e0154f826f262a9c36e9f5bcd885fa8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179611364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8860b61b53915b8d722e20e93cf8277a0b1346370be5c6d60f9cdc13c8d54777`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:19 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 25 Aug 2026 00:50:19 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 00:50:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 25 Aug 2026 00:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 25 Aug 2026 00:50:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4568da4cd300dd04622e39c946ea8a5e7796f247b971849e29cb96de1ea85ca4`  
		Last Modified: Tue, 25 Aug 2026 00:50:34 GMT  
		Size: 149.5 MB (149451782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2ce8465892646a9cf886ba2373295fe1ca441f429e12a6a0ab8f2b26a50ec504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24ca339e13cc08011448573892dc3ef8338c2e7f8532edde456b7e31f00bc82`

```dockerfile
```

-	Layers:
	-	`sha256:55e7a7512ee5164e7d9f9a0f0be4cfd435f02a535b58a918926a3f3cdf6e16ac`  
		Last Modified: Tue, 25 Aug 2026 00:50:30 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
