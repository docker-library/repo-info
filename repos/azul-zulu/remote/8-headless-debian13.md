## `azul-zulu:8-headless-debian13`

```console
$ docker pull azul-zulu@sha256:6ad4eb96ba78fd7a2eddd186cdaa8897b9b944acde58107cb4b73ebe8b557ffb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5780bc411f9ca0f7a9e793210a3b8d7106c4abd8b384bb3281fa992e40d8992c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88460116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5f13f85cad9cc20327247120c34a89a81eadf5d9b91b3b1655a41619415bb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 20:00:19 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:00:19 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:00:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 20:00:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c55e43d05e88f1f5a8ec18f11eab9939719434d6665aa46018988b00c68680`  
		Last Modified: Fri, 23 Oct 2026 20:00:28 GMT  
		Size: 58.6 MB (58616537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:885c837939a2ae050cfc0764e43ce30bf48b6e2cd31a7247b4d6e15fafcba14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e4a4fbf06568bfb9c79c78e7959474713fee2ca0c9774bcf5da7e922525520`

```dockerfile
```

-	Layers:
	-	`sha256:d06ce1ef05189beca01433ca17fe19b53e00cb7f87dd0a3e31cf7460c1c55505`  
		Last Modified: Fri, 23 Oct 2026 20:00:27 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8df0bc4546330810a08cfefe005d5470d19e443ad74355b8acc1654c6b7ed10e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89149916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b573320ce9e604769f28eb1d9fb37719bd142567af29a03697d89726be0522f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Fri, 23 Oct 2026 19:59:17 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:59:17 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:59:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.512-3\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Fri, 23 Oct 2026 19:59:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15363f41f14e78ebc14f7446f61105fb283c65559648b7b28f49533fc285ba71`  
		Last Modified: Fri, 23 Oct 2026 19:59:27 GMT  
		Size: 58.9 MB (58949438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:89b21ab49e092f66e3eb3393532d39ed13339fcf344c572532f747993f759685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ea49fffd76a9c98d81dd133d53eaca4622a969a3c59f0b5558fbb0519dff85`

```dockerfile
```

-	Layers:
	-	`sha256:af5e0b6f8828cbbab36f7181effbaccdf02890a6eed002fac3723ace33b7ff84`  
		Last Modified: Fri, 23 Oct 2026 19:59:25 GMT  
		Size: 9.4 KB (9364 bytes)  
		MIME: application/vnd.in-toto+json
