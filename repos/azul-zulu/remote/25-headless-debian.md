## `azul-zulu:25-headless-debian`

```console
$ docker pull azul-zulu@sha256:a5f5539422df0a7a1df16e635a9a113929e4db178afc2e7fb5194d73c217e879
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8366b44e966e5dbb7b4c4e88593f08f0c53a63dcc45279e453a5a239bb956e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211639852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470783d4f1d0ac4318863e311076ef35dfd83e625902fe60f06df3e601053cdd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:43:59 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:43:59 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:43:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:43:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 05 Aug 2026 00:43:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ecb095ae05e69e730d057b2548a791276063685d9ddb415e808349eeb69de6e`  
		Last Modified: Wed, 05 Aug 2026 00:44:16 GMT  
		Size: 181.9 MB (181859087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:10341841b38a6d474130f2a8aaebdc7cb631427474486d32185f5e2cec4f318b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df24ef9b5754995be99e0044df43037c9b47811ebcca902bcfd3dfc4f93d28b`

```dockerfile
```

-	Layers:
	-	`sha256:63a2db3398eb65dd5b6309ba6edda4cecd8f37a9ae2029374c32262390adb388`  
		Last Modified: Wed, 05 Aug 2026 00:44:12 GMT  
		Size: 9.3 KB (9293 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f4c4530995ba43b74c10b198de28eed891a55db3c58070590da6fb6ee0abe48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211125875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bc30518d83dcc53bd253bc128ebd12499d82c3e87a3aa7979e7014934c8eec`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:34 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 05 Aug 2026 00:46:34 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 00:46:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 05 Aug 2026 00:46:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 05 Aug 2026 00:46:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec37ee944332818a138dfc44ded02f62b924b4eead167f4c8bc2a771f54b3488`  
		Last Modified: Wed, 05 Aug 2026 00:46:54 GMT  
		Size: 181.0 MB (180982266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9a0c6f3c2589f6662773d7351dbd18ebd119f144d32bdcc4fcbe8d1799b358b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982687eee4005b71dc440a5881e5e4f8303224cb02ea94564755c70833f3b68c`

```dockerfile
```

-	Layers:
	-	`sha256:41b99e8f78bd40077a2a5cb14c9582245190fe5b5fc2020f608cd79366eef1b1`  
		Last Modified: Wed, 05 Aug 2026 00:46:50 GMT  
		Size: 9.4 KB (9398 bytes)  
		MIME: application/vnd.in-toto+json
