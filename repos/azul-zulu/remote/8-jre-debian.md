## `azul-zulu:8-jre-debian`

```console
$ docker pull azul-zulu@sha256:0f1fe0458b58986b3ea3330962ee7e99a8fc8758ac29675efedf724be7496652
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4aaf6b7fe273581d9dde43ab24834b1147652e6d0b62f5f7c9ee3e9ac2820bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79127996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17349949ba37c7cf523622a8e6a0a94af09abe8c21e84cdb47417a357276c3d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:37:07 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:37:07 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:37:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:37:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bac37d57febae100131c57ff45a101bd610bdecbcb4f08db5caee4cd9fee1f`  
		Last Modified: Tue, 06 Oct 2026 01:37:16 GMT  
		Size: 49.3 MB (49284646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:60f7b7962bd2fda351f8b046a1c9e8dd273aef81c3d82c20824ee9d173842a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298de8d7836b9b211f7bb77c3404cc4471519d8ef0b17ba4433ade0c198f136e`

```dockerfile
```

-	Layers:
	-	`sha256:7df96b95b548d4a4811b56b5917164803ab3676391b8015b589b8ecea695ddfd`  
		Last Modified: Tue, 06 Oct 2026 01:37:15 GMT  
		Size: 9.2 KB (9174 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3efeb122e97a7d357daf8ff6e12cf0539a14ad437cef444d5787b35ebd96b270
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79710652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc25386c6fb640b4e038ff0059d7a85c468eca31238e669ff98ab4039bfea96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:02 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:02 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu8-*\nPin: version 8.0.504-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu8-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682abf8040d95c784120023ac81d6729416c773c5aa93d9fb0a67ac17a03ba4e`  
		Last Modified: Tue, 06 Oct 2026 01:40:10 GMT  
		Size: 49.5 MB (49510370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:999c1545959f1f15366970e8968462ab1eabc81e152adbef3d16eea6027415c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3962b460adcf95ba16499e96ae617bd55c79b0c4902fa5afe5a848d918201767`

```dockerfile
```

-	Layers:
	-	`sha256:08dd462dde7de05a5e835a2ad5fa622a7dee22300beade13b93b9636d08569bf`  
		Last Modified: Tue, 06 Oct 2026 01:40:09 GMT  
		Size: 9.3 KB (9278 bytes)  
		MIME: application/vnd.in-toto+json
