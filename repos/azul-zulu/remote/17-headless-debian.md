## `azul-zulu:17-headless-debian`

```console
$ docker pull azul-zulu@sha256:54c7172ba62e2ee36ba151e7e9bef61893f98cbd732d15ee5abe4add8ac77acc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:259ff4e3bb18fdab6d94719d005283dedeeda46d7ed3d1de6048ff0bc3a47a66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.3 MB (179288523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70be7e82d5d865a4bba487baa8f3fe7ebf0d4a1c7114e9535a15c63c4dd70662`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:38:21 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:38:21 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:38:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:38:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 06 Oct 2026 01:38:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8d2be5531fe1bf336bb5581c562735cfc95fea96c330eeeb4db70121438b29e`  
		Last Modified: Tue, 06 Oct 2026 01:38:36 GMT  
		Size: 149.4 MB (149445173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:488982aef43fb5c224460e9f757dc1cefa1a02b339fc3e303d8f4bf3684a26eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6831f2e7eec6e177c57a1cf7a91dbc2ca7036d68aee9855cfb46e378a25926`

```dockerfile
```

-	Layers:
	-	`sha256:3b1bd164af56ab4ccddc9a15bd68b1afc1b55767490e6197e162c5c71733dda5`  
		Last Modified: Tue, 06 Oct 2026 01:38:32 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:daedf94c17f0fde25a6ad750a49cde9b85d008e8c6b9fd094f7845d98a327314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179652134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548d54fe0695280885311b97a00da8838d9b6ccadca4d3e8301294a3a0004470`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:26 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:41:26 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:41:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:41:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 06 Oct 2026 01:41:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd0e428e6390d7c1ff068a519673fa910b6250eaae2789bfa31c9053b962e5c`  
		Last Modified: Tue, 06 Oct 2026 01:41:41 GMT  
		Size: 149.5 MB (149451852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2a36299d3b244cd23c28f9bcaf2bd030effbdd5d37bcde1bb06240335808dd44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0ab8171e280c9f211b5becb9cef51ecd8f6b78acd751bc0862ef17f852c93b`

```dockerfile
```

-	Layers:
	-	`sha256:0ebb6980a0e240f6ecf99750332c3c4f6c3c9a72d60f72b89209a152ba2ad8e4`  
		Last Modified: Tue, 06 Oct 2026 01:41:38 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
