## `azul-zulu:26-headless`

```console
$ docker pull azul-zulu@sha256:c75a940308f4fad3eaa95f364f34af3796d0822bac397b73b448f53ec842495d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:666868c3e9d5ad2b1a7fb18fb669c876b714ab11fa9b1fd0bb75ef1fd854af31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215089892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b03140ae9b8a8fd8a5759c3922c8be8d6d570f18ef60b2df21be9f4dde3784`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:37:56 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:37:56 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:37:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:37:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:37:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a36a902ad0f4da51e300d753de8defecac774fc2da06947821314370d4a50864`  
		Last Modified: Wed, 19 Aug 2026 17:38:15 GMT  
		Size: 185.3 MB (185309127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:623bc15fa1185f27fa65a0d903cfe0532907cd6304f7f81032227c94abd33eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dc12d5d36aba16d17bfcc30d252740e264c63a358c4dcd36e85fec57bddbe9`

```dockerfile
```

-	Layers:
	-	`sha256:ffa95a85751765b2739f0c698316b6001df4829c9f98d313c12b3f240bd62cce`  
		Last Modified: Wed, 19 Aug 2026 17:38:11 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:060c320f3edc3ef0cee438ee2ec9d6dfd533329221fdd50157d3bf325e7c9eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215167394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9b55cde2c853d20740a8ed3024f7dcf7ab58f3f620debd0740e1dd7f282932`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 19 Aug 2026 17:38:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:38:15 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:38:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 19 Aug 2026 17:38:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 19 Aug 2026 17:38:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14daf50e3263a46f89f162db64d94b4108678093f1f454426db9b1c2d94a7828`  
		Last Modified: Wed, 19 Aug 2026 17:38:35 GMT  
		Size: 185.0 MB (185023785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d63ceac7c17a45a02b80ca712131b02aa384c3c7675072a92dfc0945dbadb6c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0740f8787f0e8f213121d47ec9551d0e0236c4418c278cbafe2191c67268c362`

```dockerfile
```

-	Layers:
	-	`sha256:d306280495489126d7378f565c9c83a7d2bfd1ddab0c2dd5915417b34f5fbe96`  
		Last Modified: Wed, 19 Aug 2026 17:38:31 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json
