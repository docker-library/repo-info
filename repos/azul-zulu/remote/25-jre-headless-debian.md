## `azul-zulu:25-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:41e3e4daa16e8cdeceea743339d01e551b120a8a29010963c971f7c9df5c31a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:486a58b16942aae52fcb542b28d9d1d4e242c656b830980b6d51212db0bd1c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.3 MB (118294737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefa96991b267b9eea79dadbff3528387623788591a53020f63803ec541c427f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:13 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:13 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:13 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7ed3e5be531a9c8743ecae6f3b0cc60b69237aea8c0eeb468813484c74b417`  
		Last Modified: Wed, 19 Aug 2026 17:37:27 GMT  
		Size: 88.5 MB (88513972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:26ecb30d78365eee62f152d1ea77f97afe55c78cc8dec7c227d4d7d5225e6e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72913c43a817dcbbd204413ee820c0e851106737117ed64040542ee505f35311`

```dockerfile
```

-	Layers:
	-	`sha256:12d2e5d02101fbf20cce9600cebd4d89a74af655cf972726137f370cce27e3e7`  
		Last Modified: Wed, 19 Aug 2026 17:37:25 GMT  
		Size: 9.3 KB (9308 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:adda620d53446e030922d3608c5b2c6ebbf4c9b4cf1acf43d31a1bcfcfc45b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118247482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f581dee340f48d163687eca1d62e47fb4340a87d0dac4df50c0c617aef13434b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:26 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:26 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e46ca8e5448e9e582616202f0829eda7f390ad2e345790601d289e0b96788d`  
		Last Modified: Wed, 19 Aug 2026 17:37:41 GMT  
		Size: 88.1 MB (88103873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:555dd8caa9e272f342d78dc96eee0314e7288c15b3842a3f8164658b63d1e994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431b379b294d6caebdd2a728ea8afeb88171468a55f108c566d03b74027d1ff3`

```dockerfile
```

-	Layers:
	-	`sha256:2de0772eb5f9a8bb351977f4972806b9225dd3f92427138ec885fec4f5011976`  
		Last Modified: Wed, 19 Aug 2026 17:37:38 GMT  
		Size: 9.4 KB (9412 bytes)  
		MIME: application/vnd.in-toto+json
