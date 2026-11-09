## `azul-zulu:11-jre-headless`

```console
$ docker pull azul-zulu@sha256:4141f8becb714280532ffb2e5d7d307b9dad4a710dc313fc3d47e401a74c7483
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:cd091b282d3d936337d0afca8a39f8e13910fa5c3cdf539698b534685ff698ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94521303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f276fbef2f75bcc80c9f17a1622218f347c30d1af2e50f7717c356be2ff4f49`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:24:11 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:24:11 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:24:11 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:24:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfedbc85df8745bfc2716ffb2ea57f5ab001d783dd7c200db824f3758538689a`  
		Last Modified: Mon, 09 Nov 2026 20:24:22 GMT  
		Size: 64.7 MB (64665171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:37a9b4c66e7e887d650c9c231d426e31940c5a6ea0d2a8fe0baf2d3ea5a393c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5206f7f667214fc8550ddfb0d85b5e6f987b0c39e96039de8112ad359e3d20`

```dockerfile
```

-	Layers:
	-	`sha256:526397552cd4c95eafedefd1339919716c5f7f634e8b3b87e53b2bca25c90cbc`  
		Last Modified: Mon, 09 Nov 2026 20:24:20 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:22c35a90235df939d8b92006c527ee03e6d7e515b1a2da1670655324b8aaa2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94708289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522dc825001b5b94871fa04a045e4c8f06db46a721b7bb40ef952c6033d627a1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Mon, 09 Nov 2026 20:25:26 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:25:26 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.33-5\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Mon, 09 Nov 2026 20:25:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7289f0dad09bc417982acdc676f68e197be7ea177c874b78c05528b02616761`  
		Last Modified: Mon, 09 Nov 2026 20:25:37 GMT  
		Size: 64.5 MB (64494252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4aae89e465bf668e17f05c224fb51f666376f1a63aff08af1d8cf1d163a7e835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ace13d79090c06caae0d5f6e6c13fd7d72c78e9fd57ce45d2934f73e73afd7b0`

```dockerfile
```

-	Layers:
	-	`sha256:8c2fef959dbb645f34e77f89338065104e7947d53305819d70a19c9461a1035b`  
		Last Modified: Mon, 09 Nov 2026 20:25:36 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
