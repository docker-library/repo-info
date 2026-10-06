## `azul-zulu:8-headless-debian13`

```console
$ docker pull azul-zulu@sha256:98a2377d954ea60e91aac39118a3ba9db58a7dc2ea6ec1b0786c158d7df19c86
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bd805893008e9889544880836292f32e37c898324220b6536b6157bebc0d6df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88441688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b8222940b4d3d42b7d54499c5cb14022635822127dd18e6462cb87e3cfdbe3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:37:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:37:05 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:37:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:37:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f220b8404fa8ff7a70cf5e41066daf509a919823f5cf837a8b339f6e75949eec`  
		Last Modified: Tue, 06 Oct 2026 01:37:15 GMT  
		Size: 58.6 MB (58598338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f3f11c4c9cec44d030a9c2af6770e2f4043bdad0890e29cd61b8ae3f393b0e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b314fc37117e3fe4677c1eddd4aa4b0ebfb40b6c2b82b1b37a5b010a0193e46e`

```dockerfile
```

-	Layers:
	-	`sha256:1be45f96b0498cfd3f3d846da4ba88fc5e558dcc822d226e15e7407cd43bb98a`  
		Last Modified: Tue, 06 Oct 2026 01:37:13 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:680b70f09568f8466bd0d6882b364924bcc5091e8119996f9bc6287f5c5374a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89126178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61ccecfcca19962c4dbed24d3ec22cb1131adb577323b8a96dbee6b8d61002cb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:39:56 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:39:56 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:39:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:39:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9531adcb2524894d469cb60ae1dfece343aeb70311153b5cb7d993fa2b0713a6`  
		Last Modified: Tue, 06 Oct 2026 01:40:05 GMT  
		Size: 58.9 MB (58925896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9befd3bc373c417fb9e60f3e14ff4c0e335ac5810e612df4157d3f10f064008d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a470c1766991c406ab7cb28e6613df17bae9aa0d54bc94da9a00f1b6e37af621`

```dockerfile
```

-	Layers:
	-	`sha256:b1cba843c5e717dc21c59f7e1e3202aae245cde719f55e24fa9438b1bd24399c`  
		Last Modified: Tue, 06 Oct 2026 01:40:04 GMT  
		Size: 9.4 KB (9364 bytes)  
		MIME: application/vnd.in-toto+json
