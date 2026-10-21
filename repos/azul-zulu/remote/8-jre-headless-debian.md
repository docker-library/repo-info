## `azul-zulu:8-jre-headless-debian`

```console
$ docker pull azul-zulu@sha256:1316e2215f8dfc993f0395a5b7aa996271c619d09362e36e922bbd3f54fb94fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ba0ba0f8b1589361aff99603257e73d46cc7c1c20b03cf80d2cb3b3e8d3fb721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77023803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780b4faefd7ab3271e7eff75c27283deaab254009d2bb126848f2e3f7555cfdd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:41:55 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:41:55 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:41:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:41:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c777065ef77317fa282231f56b7d51185a163b6dd8be6f675079fb6a9005b43`  
		Last Modified: Wed, 21 Oct 2026 00:42:04 GMT  
		Size: 47.2 MB (47180224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6ccb46888a86fe42095ffcfdf2290bdd5dba352d2f8b685e6f60c53b02cd1847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1064f671d73a5803d51ff2d5f0c932e20edf7a44631b960f410586b55c7830f5`

```dockerfile
```

-	Layers:
	-	`sha256:b089af032ad1bf6e7d03ad92bdeed4ebe750000ddda8e2d2a7b049086cdc0f64`  
		Last Modified: Wed, 21 Oct 2026 00:42:02 GMT  
		Size: 9.3 KB (9284 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b009cc1fce90d847412ce3087663ad2228a12080be14457c1b53078ae4e9453b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77604038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc325f49fa4efa45819751245327b7aeef24784e31d5c29b09d7f308f2ddf19`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:35 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:35 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01adbba0e397cc876ea6b5ce817f977fcd3cf020321e6f00294f898c9072f09a`  
		Last Modified: Wed, 21 Oct 2026 00:45:44 GMT  
		Size: 47.4 MB (47403560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5954afaa960cf4a18933c8700687a6bd6e05482daf49601fc3197b8ad1933c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fc3cd3a4e78d8302d1b2257f3152e571d99f7c9daebe9943430556d13ada49`

```dockerfile
```

-	Layers:
	-	`sha256:312870f2a3145bc0e29931f92f72ccaef24a1b8b16282e5949b62cea5b2b6d44`  
		Last Modified: Wed, 21 Oct 2026 00:45:43 GMT  
		Size: 9.4 KB (9389 bytes)  
		MIME: application/vnd.in-toto+json
