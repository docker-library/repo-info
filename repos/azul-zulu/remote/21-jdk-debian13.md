## `azul-zulu:21-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:c9dd480a20f354f7a54fe763612da20b3b76726c41b237bbcbb3298c8e1d5532
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:790507a1dd1aa30d8623ca69e1dc1350f7973189f5b860969f894a425965cde8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.9 MB (194886438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95262ed123f641d381a508762446f5c09d8f5699f43e2c92f27f96c2b76ff2f9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:43:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:43:55 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:43:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:43:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 00:43:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d269d373fa74ddebdad93d931179e437497ec9c508c9cceaa360ce84d958cb29`  
		Last Modified: Wed, 21 Oct 2026 00:44:11 GMT  
		Size: 165.0 MB (165042859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e2d0273472ee583f81b003666132048be39319a2bcf0eae0a0af2bb11529a9a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e32a7a4b1036aa8795dc61f6f7bf976e03271f988d83eaf6a191d978507a41`

```dockerfile
```

-	Layers:
	-	`sha256:3788680b25deda2e1106a7d2add6614f56abdde5c75b205a07b6b2db61b56c44`  
		Last Modified: Wed, 21 Oct 2026 00:44:08 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2763b4d5180732a423491200cf1252e42f4152cb27c7b943b2d52f7b6677ee08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194523377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e96f87cf15299382d5daf9cf0aa1506c6e9ed6046d25b9d84ee89c0ab2b915`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:47:43 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:47:43 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:47:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:47:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 21 Oct 2026 00:47:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041dded77f32b0479dd5fccdc400af99d5094ca0700998d0d51230ed97904e30`  
		Last Modified: Wed, 21 Oct 2026 00:48:00 GMT  
		Size: 164.3 MB (164322899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b52f68c54ddf6e565d810810ada00ec6f9e4c6cae6b60e6754f79aabc2e29c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feace18a79cabebf95e77c8e5eb8515435ae1808b4c454bfec7b85ea542399e6`

```dockerfile
```

-	Layers:
	-	`sha256:6a8778898fee311b867b220e02c04d109b5ba97016d238852727bdc8dcbac5c8`  
		Last Modified: Wed, 21 Oct 2026 00:47:57 GMT  
		Size: 9.6 KB (9633 bytes)  
		MIME: application/vnd.in-toto+json
