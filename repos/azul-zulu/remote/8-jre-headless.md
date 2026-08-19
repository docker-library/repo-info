## `azul-zulu:8-jre-headless`

```console
$ docker pull azul-zulu@sha256:f688006304d9aa329a271ee317279eb13c01a46bb7b6f7edaf35e158a28dac03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c957d2582b90cfaa2ad456bd0b7ce375166783caa4adc3503373f70dca825990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76959228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49344f128eefb77645bf2689ee0b78ba1fb4711aa7eaf3df0b132be7eda714b8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:34:36 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:36 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:34:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8797eff82e5949cd6155de7c17dc0835f3308537cf2ca7f37a219417dfdc0305`  
		Last Modified: Wed, 19 Aug 2026 17:34:45 GMT  
		Size: 47.2 MB (47178463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c0d0fea9960f14d8948d333a086ee24ef2423801741b751d78f55baa48e946b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab044c95108f8d67892d7b1f4e528be2b1a0c316cd86077f6749a8de298d123`

```dockerfile
```

-	Layers:
	-	`sha256:1d9e4a9831dce36277c18b81ccd5262fcda66b9b4688aeba274f47e071a9eb07`  
		Last Modified: Wed, 19 Aug 2026 17:34:43 GMT  
		Size: 9.3 KB (9284 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e79d69b0558b7d49197a73d7781473f7a5faf88f8520329e47ed6de2f0255990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77549588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ff97975d3e22d426420b55bfccec6668c477bdb3db29171eea19e05de2299f9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:34:34 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:34 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:34:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a25344339edc26e29379f00b06ed0e0f7c2c065fe42201b2a8867cfb8895e1`  
		Last Modified: Wed, 19 Aug 2026 17:34:43 GMT  
		Size: 47.4 MB (47405979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a3ead92ccffb726790d6b0266e4e223c29ca7415a828bf890cfd79e72dfa994c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ceebca3dfc96645c62f7261f1b1fea82a3eec288367b94024731a802444ecf0`

```dockerfile
```

-	Layers:
	-	`sha256:c20ba015f638765b7a21b3ff6d00f51ae4bbf2656fc9e335f5adb2c566ef41dd`  
		Last Modified: Wed, 19 Aug 2026 17:34:41 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
