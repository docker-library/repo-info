## `azul-zulu:26-jre-debian`

```console
$ docker pull azul-zulu@sha256:6baef8a457ffc2935e0b1ac822195b7d5f6e9c14a3ac22917e8e73a0a4a70c71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5f0da1de52dd73f462549e02baa51a7a0ae2d0859e7be3b6e7233eb4978260f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122020158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c64e06ac22a4cd594d9ba94ed614a88ebe98ccdf7812d2944586869136a9d4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:34 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:34 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d662b42cbfdc4bccdc0ea6466040268851abf5ffdec05405e02225a09b2b13`  
		Last Modified: Tue, 06 Oct 2026 01:40:48 GMT  
		Size: 92.2 MB (92176808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f5a3e26a91adae6953cc09ef3af2431cad0bd951454c71f4e18ca8bd53f7bb93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5b7b0eb7199fa511e92e3b0b862b23f4b0b8e19e1c6af569e225968c371764`

```dockerfile
```

-	Layers:
	-	`sha256:35e1599742c696170c79c72060464b81ba1cd0b0f6038308cbb579f2a6726c65`  
		Last Modified: Tue, 06 Oct 2026 01:40:46 GMT  
		Size: 9.2 KB (9196 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8ff2f1ea5e7a1fe07710861f85caef08aef38c6674525f84f4e606c94288a5f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122291314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa26e0510d3df233c593dd97d6a2fd0314a80cc0291d095194bc81e045db1e4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:56 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:43:56 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:43:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jre &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:43:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678d6c771e59e0eca8db312e30791912e893294a8fc6d73d4ca55da9375c1ed9`  
		Last Modified: Tue, 06 Oct 2026 01:44:10 GMT  
		Size: 92.1 MB (92091032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ecdaa6688245e13176927ca385a6da236c4590e2b48a96d479cdcd3427a284fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b6addb986e7229a9199a7e75d9719fee5db6b0937473f9cb7f9fb390cd9158a`

```dockerfile
```

-	Layers:
	-	`sha256:2274ebff5f640ad12c52bc930cd1e9ed814379c1c8afc18224788aa1d1b8fe96`  
		Last Modified: Tue, 06 Oct 2026 01:44:07 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json
