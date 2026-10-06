## `azul-zulu:27-jre-debian`

```console
$ docker pull azul-zulu@sha256:10857a4e70e89b3005663757f6ab938fde7fd92c5fe527eadfdf3c81acef8464
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e78db1fa956da9bebfaa978b5a08182d31da473b85f19aa17d5d2d5e7faa7056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120880624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6765254492ce261650264e7d6deb75deae8004cdef68de0d18a3ac0a56b006`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:41:09 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:41:09 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:41:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:41:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c44ae9819ec7aeae56f4796110340f0d5463a0617fdc87b75066866b1f45e1`  
		Last Modified: Tue, 06 Oct 2026 01:41:24 GMT  
		Size: 91.0 MB (91037274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ef304ab008e7ea2a8f5860a41631eac0624dbeee017a6e0e1d79d3df1ccf2358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6781f91d602955b2a9f6949c4507ee3bc9608596617a8961f45f5f330c7c898a`

```dockerfile
```

-	Layers:
	-	`sha256:0f015efba3b58835c4c8c91ec25dd72fc0a4cce0a110cba53d1596bd92508ef5`  
		Last Modified: Tue, 06 Oct 2026 01:41:21 GMT  
		Size: 9.2 KB (9179 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e5061bbcd2be83fc28bc53e315d3c2d978b52dbb3be39587b88b1c208a8ad380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121120600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ec1fd28578014294f691a9bd5607ef93b3245a32ac53b53320e8507dd369ed`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:44:26 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:44:26 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:44:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:44:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aff94efc55055a485417777e7cba17ff7f08fa939e6da84085f18f519090b44`  
		Last Modified: Tue, 06 Oct 2026 01:44:40 GMT  
		Size: 90.9 MB (90920318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:608f026414081cfdcc050d3dc6b1241e5b668ecf103b690c2b1f154d27935c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd50a30c535bb95f40a0e11d076d2c12ebed8f1c330ca8d073e4e38fd679a32f`

```dockerfile
```

-	Layers:
	-	`sha256:0cb24bbd91054061a52779422cb030d8f1c9c54e028356a23a54d2d3877292c9`  
		Last Modified: Tue, 06 Oct 2026 01:44:38 GMT  
		Size: 9.3 KB (9283 bytes)  
		MIME: application/vnd.in-toto+json
