## `azul-zulu:17-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:94f813d718d3414c309987c8a92285e75342cb428e8f6d95514256e1c976f71c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:143b9d31a46230e8177a043c851ef98112ce1c9bb549810325eeb7342ca7d184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.9 MB (98892269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e96fb051fa3d5e91e40d4a2ccb525b0224648e4693dacaa12317506ffe67316`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:38:58 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:38:58 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:38:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:38:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e04a244e61e4601124347aa4deb6d02a143bb9e7c817ae1015de49651eab46`  
		Last Modified: Tue, 06 Oct 2026 01:39:09 GMT  
		Size: 69.0 MB (69048919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1c5cbc2206107338e2ab0f809d643f8648dc0137199d3fd7fe22dfe71a4a5a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:583db33c242e78a9ec0036db4c0365ae4bf6af8cf94aac75f5f322d053884619`

```dockerfile
```

-	Layers:
	-	`sha256:61ac8e8ee861010bf023fd6443e30cb8b7211552694eebba689483acb7a91c62`  
		Last Modified: Tue, 06 Oct 2026 01:39:07 GMT  
		Size: 9.3 KB (9311 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ad61b41d82c3a3ab1a8bd9ba874572c86b7b23e2d7dfd6450470daef993c67e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99288654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db1b37d50ab90a60ab98a53c4347905cde45e62dff72d340aeada3260e1aeecf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:42:06 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:42:06 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:42:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:42:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d0394e54da5079babe4a0fd0ab5708801cc081978f24c9e5cc5df5c3d0f213`  
		Last Modified: Tue, 06 Oct 2026 01:42:18 GMT  
		Size: 69.1 MB (69088372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5eea1774017c0b75dec79b72292c68e3150faa59f995a6b838cef3b84b3d6759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80316c4cb615c77963436923fcfc0e080baea44e54fd6b71ffc764bd997eafe`

```dockerfile
```

-	Layers:
	-	`sha256:ff8e3f28ef352c817efb6d44fffe3037119977a7904b5557611f346418532bbf`  
		Last Modified: Tue, 06 Oct 2026 01:42:15 GMT  
		Size: 9.4 KB (9415 bytes)  
		MIME: application/vnd.in-toto+json
