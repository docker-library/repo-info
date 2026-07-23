## `azul-zulu:17-headless-debian`

```console
$ docker pull azul-zulu@sha256:190d201bef55a6055e7f42d17afc698ec87d0d7d1cb81c63a0724939e81acc29
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1c66e2f66791aa1050e838d928ce16dc9565f81ce1d639aaba706eeaaaf34bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.2 MB (179214396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc41afd7573a953f1773963b31926716f1eda7b0c60efff63976781c1573c3f7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:36 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4263a1d7f3d507f5d828e01ae8ea347e24a7ad4d6c2420b1fd89381d5e8270`  
		Last Modified: Thu, 23 Jul 2026 22:29:50 GMT  
		Size: 149.4 MB (149433491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:47f9e20702bcd79337ef3138245dd0a4fef83c107898f56fdf37780f0f1ca41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0df41ddd399e6133c2a19f526063b19aa58dc098f15bfbe69650e1d4b18bbaa`

```dockerfile
```

-	Layers:
	-	`sha256:138d39746428d205157eeee4550c432ea6bb3f8d770bded7ca81f685c5e1b19d`  
		Last Modified: Thu, 23 Jul 2026 22:29:46 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d0b2975c8f72e175c23b8eca8da294eaf5429337ffec7b8e4a3c83adb5ea29c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.6 MB (179581507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3fd4354b30ad9f341f2131dc93ff51bd5fefda412924c1934ca378d16e94d4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:30:37 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:37 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu17-*\nPin: version 17.0.20-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu17-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:30:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:30:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4534c205ecb9b563530d5f10de5086989659394cc7b27793cccf66371d0639ac`  
		Last Modified: Thu, 23 Jul 2026 22:30:52 GMT  
		Size: 149.4 MB (149437802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:93232d1e062f889c325f53e2d49f2eb316a1909a1d17109c386d97c9cdfd2f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:284a14c9cec6f06aad331b120ab4c46dcb08b7bdd1e6ff2f6ade4dd5d73cc3ff`

```dockerfile
```

-	Layers:
	-	`sha256:8526eead034802821d3f760ff1ef015b1a587aa3e86fb7efc6f08ace09fb5ddb`  
		Last Modified: Thu, 23 Jul 2026 22:30:49 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
