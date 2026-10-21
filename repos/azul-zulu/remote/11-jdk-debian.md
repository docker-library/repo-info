## `azul-zulu:11-jdk-debian`

```console
$ docker pull azul-zulu@sha256:b11193ec1fbe9ac7ab87b42b717ece76c9095608323d13c8fb54befca4bded23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:67a52ce882bd10477c952d121e1d78fa370538044c982b00cbc6c5cfec7a0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177450584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ea5c2b61a60f280bd78971b49eb1816796e4b6283cadf6c6a3be73e90c75f9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:42:24 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:42:24 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:42:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:42:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 00:42:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ca2dd6f28268d116011d960b205250d0e9c53500893e0c0bd535b6f7ab856f`  
		Last Modified: Wed, 21 Oct 2026 00:42:38 GMT  
		Size: 147.6 MB (147607005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d9d336ba52a94a2d86242be15ddb8b602ca9940e779845edb69b240d70a0a9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e0aafb4e1cddc00dd2a8d309642ca06bb8cfd45963daea2c319d93846dc4cf`

```dockerfile
```

-	Layers:
	-	`sha256:b1e33e940fe3420ea2956ee5da48ffc87d7d4c913fbb6cadad58657c07de402d`  
		Last Modified: Wed, 21 Oct 2026 00:42:35 GMT  
		Size: 9.5 KB (9517 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:977956b19d6125f1b2487a145de6c6eb9b5fa57d140e7f4afc5cd27a9234d07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177488917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0fbb5d10a20383fc21b81cb6e0e4dc65144a324a0c41adda78a0ad9334dcc6e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:45:41 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 21 Oct 2026 00:45:41 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 00:45:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 21 Oct 2026 00:45:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 21 Oct 2026 00:45:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6f823852c5a4d981cb9b56df6ae94ad6209803c8f5ce114ffb97f8a6534ae7`  
		Last Modified: Wed, 21 Oct 2026 00:45:57 GMT  
		Size: 147.3 MB (147288439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e4e2280ce55f44dcca181aa64f4c24c019ee5adb5bdd41c70db92be7604c486a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e3e7e2e7a526de317c3e690b057a56458c5c490cd48f68d57228eac7787538b`

```dockerfile
```

-	Layers:
	-	`sha256:e6d7cf0a889eed3b82b3fe4017d608853fe09e6a31d1f8e01a992cae01d6283d`  
		Last Modified: Wed, 21 Oct 2026 00:45:53 GMT  
		Size: 9.6 KB (9631 bytes)  
		MIME: application/vnd.in-toto+json
