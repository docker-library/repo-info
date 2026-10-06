## `azul-zulu:21-headless`

```console
$ docker pull azul-zulu@sha256:7cd5cd7586194ee88f23598156379d4a6d14e52c01a1793395df29994b58145b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b946dd048ab3d342d4b9688eafe8736e332b2584f27155fcbffc17019cf8d30e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192605024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44557c8b666829cc028d4cc8ffb64737c17ad3be05e1f0c86e2e0710b0565bc0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:33 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:39:33 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:39:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:39:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 06 Oct 2026 01:39:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8001497e9fa76d00f14f3efb0460d4b2ea39686369e939ebf3d3e8423856f6e`  
		Last Modified: Tue, 06 Oct 2026 01:39:49 GMT  
		Size: 162.8 MB (162761674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6ef0ec149b9c4bb6b6134fa757fdeb92511f71acb07e452979a24f6bd422f533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b7fb4d79d6db400eab836c166d2f8980b1ae585751da461c1180173763e4d2`

```dockerfile
```

-	Layers:
	-	`sha256:fe0e3f6c3a7ef759d813d230f5461c9868e395836e6229e0cbe5a7a8fa0a95f3`  
		Last Modified: Tue, 06 Oct 2026 01:39:45 GMT  
		Size: 9.3 KB (9307 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:430328915b1dff4a1546641e52cc538188aed705e8dcdc18b241156ce66172fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192253824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eea9317018bde1dc4df00392fb3d031b96c706b55fc78830906379b62ae3de5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:42:28 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:42:28 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:42:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu21-*\nPin: version 21.0.12.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu21-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:42:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 06 Oct 2026 01:42:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f9f31b4a457abaf9d662053b94b328b0fd8add69b3eb485a6755d65d9c9cf9`  
		Last Modified: Tue, 06 Oct 2026 01:42:45 GMT  
		Size: 162.1 MB (162053542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:07b5ba6a081211ba09fe5f13b848c8707ebf208444ce4f3b5d4f77ea8e5c36f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4088bbbcad0fea77e21b17729df605c9f06dc5676f8420381842f05bcc1d51e`

```dockerfile
```

-	Layers:
	-	`sha256:0899864a86abbfcef35a0bc0c78ff6b541076afb373fbad5c577c6f33e82ff75`  
		Last Modified: Tue, 06 Oct 2026 01:42:42 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
