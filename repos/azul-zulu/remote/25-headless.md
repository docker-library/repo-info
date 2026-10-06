## `azul-zulu:25-headless`

```console
$ docker pull azul-zulu@sha256:5c588fa0f0f19ad2957672806c2a2a7b520e05b6a43f3893c68f39df6ba10837
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c4dcfc4a84e4da2d0c645437ede4d2d93448c10f3ec3526b9fa2cee1af66022e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211707014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12c1c08a0857a9ccc8986bad7c3b0256d50f3efddbecc22b0f644550a98469c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:10 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:10 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 06 Oct 2026 01:40:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97ad4ab7f98b2ac69dc7c04f63a20704234b91b72d103cf6611f036f1deb8ae`  
		Last Modified: Tue, 06 Oct 2026 01:40:27 GMT  
		Size: 181.9 MB (181863664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b6a6904ba9b74ebf6446d3e99c6823187804468748faf14a8dff5177eea32494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7323e681051fab3703b8145ead5a600b62132304dcad4e4dbc4660b3a0c5526`

```dockerfile
```

-	Layers:
	-	`sha256:fd889e4aa3ecc4e4b0a79768d287a4b27b0967c17eb5fb082f4dda4ffbea1536`  
		Last Modified: Tue, 06 Oct 2026 01:40:23 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3824e1ce1f16fdc766dffadd08e1a2a719867484d2b1f60d217c647fc2034224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211182393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8ace65fb0c0188099c6dd23da8e578bc874c0ebaf2a3f049b72168cc499f85`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:14 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:43:14 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:43:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu25-*\nPin: version 25.0.4.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu25-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:43:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 06 Oct 2026 01:43:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07264cdc883e98ed9d35f2ae191d425f42c561f1ed9563ca144fe5a4531b419`  
		Last Modified: Tue, 06 Oct 2026 01:43:32 GMT  
		Size: 181.0 MB (180982111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cf4e7aed5b31189a0461dd717cfee3179d2aa1c2598c86647c953fdcda59b443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd60af06e3b03ea96bbe80d6a087f04aa90eaa6d179bf576dcd8a534c5b430b5`

```dockerfile
```

-	Layers:
	-	`sha256:f9ac97829be0007dcb063ab41dd7a8076c3782614c421cf651cc39b9c8dd6139`  
		Last Modified: Tue, 06 Oct 2026 01:43:28 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
