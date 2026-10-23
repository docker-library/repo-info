## `azul-zulu:11-jdk-debian`

```console
$ docker pull azul-zulu@sha256:8f8a6ec83143736bb66bc2615589eb0fd59cb27a18d0e7572612561fa39ebf39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1abf568da56f128e668a69523a873739889a07a136adbff6c33e56f55fb69188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177549451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32adcc91ea8926221f50c93d04504de062bc2b5323312dbb127ef1ecb97337d5`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:00:57 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:00:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:00:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6516f29c29aee14c564a4d85afe6639bda64c074ca418447affae292b8020bd`  
		Last Modified: Fri, 23 Oct 2026 20:01:11 GMT  
		Size: 147.7 MB (147705872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7267cee99302490a500dacfda060075a9c7976a9350ccaacdfd353a94df24952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8455b449ed8581ccc327056b760f77d3ba49cc21c47671ecc2bcfff58a709163`

```dockerfile
```

-	Layers:
	-	`sha256:94ad1caae5cb301adbc897f13df875729d6e440b1340a17a8a4d3445ef1330c9`  
		Last Modified: Fri, 23 Oct 2026 20:01:07 GMT  
		Size: 9.5 KB (9507 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:fb068fd63a3ef11419f360c0c3d844622584d9d09069be8f06386f1bfb6bb27c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.6 MB (177582541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00f8b36023797ce82e0ab38b027c13b68be1d247fc3d16aa5e4d8383941aa7e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:03:03 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:03:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 23 Oct 2026 20:03:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2242c3825a4d9968b06739c0ef600616aac99d70ab8d6d8c14d0f38264680a`  
		Last Modified: Fri, 23 Oct 2026 20:03:18 GMT  
		Size: 147.4 MB (147382063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e242215d109a99f576c12498228529aeaeba0a615f83f746ae44b3804773c2a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a829a79fb85282937a1863dff4b35c1680e33beced08a79cae2821def87aa9`

```dockerfile
```

-	Layers:
	-	`sha256:a65cad0f9b1c186f1c191f5b47b508a548fad3bd5cca8da5a413061ab29f6c46`  
		Last Modified: Fri, 23 Oct 2026 20:03:15 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
