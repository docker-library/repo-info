## `azul-zulu:27-jre-headless-debian13`

```console
$ docker pull azul-zulu@sha256:09ef0fac7ea0bb9a1a206734695ca1cc5d7445749c3c014ecc37173e79faa46b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-headless-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:eb5c91d6ca8c8c92db00b0da61113679ca37c3991256ac732fa84f837336ec0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121798628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98749dfb5e24dfd0914f37910b804e4fc138dd5433a84877f6824ad1883436e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 16:31:28 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:31:28 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:31:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 16 Sep 2026 16:31:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dfc7e83f097d9e3681a125cda81b49ca44419e8445408737bb67b8f8c43234`  
		Last Modified: Wed, 16 Sep 2026 16:31:42 GMT  
		Size: 92.0 MB (92005970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:23ab8e3b3e0752ca79bafc4916e23e1300a63134f011992a121b370bc388c5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8292e6dacd5cb59b87c3198ac18251b50abcc10950509cdaf163748c810bcbff`

```dockerfile
```

-	Layers:
	-	`sha256:f3b210e65f199fe714d3850e221dfe55a234c26bacab103b1c4133d0c9d3f14a`  
		Last Modified: Wed, 16 Sep 2026 16:31:40 GMT  
		Size: 9.3 KB (9290 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-headless-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:09ab2db664ffe0dff546ed3de6df2abb49d74c448a93cbc6b7d98abb3769dd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122435734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81490622684701ae488d3f4c411954795b5ecf6d70e2d47b729c2800919ffaef`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 16:30:26 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 16 Sep 2026 16:30:26 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 16:30:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu27-*\nPin: version 27-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu27-jre-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Wed, 16 Sep 2026 16:30:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a570508273cdeb6b45407dca196d8ecea02798f74530540980631c7c55fa7c2c`  
		Last Modified: Wed, 16 Sep 2026 16:30:41 GMT  
		Size: 92.3 MB (92276152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-headless-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3f2c20f5102a3757ea80a8b2c58038439cc6aa32b64680b7506f8d6b294bb1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f06d821ce16f45bfa078d7685fc2036850567981d2757084bf9f9c5e0234e6`

```dockerfile
```

-	Layers:
	-	`sha256:5048c7f050f8c72c3cfb224c6cfb9f5a4c778c18afa2d47d5f36c7844d3ebd74`  
		Last Modified: Wed, 16 Sep 2026 16:30:38 GMT  
		Size: 9.4 KB (9394 bytes)  
		MIME: application/vnd.in-toto+json
