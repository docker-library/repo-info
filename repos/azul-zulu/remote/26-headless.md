## `azul-zulu:26-headless`

```console
$ docker pull azul-zulu@sha256:1c382cbf8eb3548df6569f354c424ee2023c0ae81708db5dcc7290ca10e02dfe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless` - linux; amd64

```console
$ docker pull azul-zulu@sha256:b81abe720edb15838d2e5aabdbf00b7d9da2716c9d0dd88d2c8679a932ff3f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215154237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad87625cffd6cbe9f138376ed3d72cc96f666f5839d1317f34461f020dd594d7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:40:27 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:40:27 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:40:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:40:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 06 Oct 2026 01:40:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115f5e9e47841dca4f424ede70eb36be31585060375a0228f6a81ddf0038b7f5`  
		Last Modified: Tue, 06 Oct 2026 01:40:45 GMT  
		Size: 185.3 MB (185310887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a6081e84e56c8e96ca4fe04f0dec40b889c9ef84fde727686ed8b1ff2fd3c2e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca90a9c8618f3014907ac88bf2b8c0537a776f5ebc793a572b6fc137329275f4`

```dockerfile
```

-	Layers:
	-	`sha256:ba0e1664f4ada36567a23199d463cc4c6357becb8a8d73cdca7d83f2085bfcd1`  
		Last Modified: Tue, 06 Oct 2026 01:40:41 GMT  
		Size: 9.3 KB (9301 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:41aa505880201e9c96c53388e2891d0644368226e475e6f3a638ae4e1c0e6b8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215224850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7049f13e4fa90d8083ddf1bd4108311b81154d52ecdb843c9c16e5b07b97542e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:43:39 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 06 Oct 2026 01:43:39 GMT
ENV LANG=C.UTF-8
# Tue, 06 Oct 2026 01:43:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk-headless &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Tue, 06 Oct 2026 01:43:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 06 Oct 2026 01:43:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba607f8afae628f54d626ab6870a8f0a89b9936f0708a2dcbbe2603d94397ca1`  
		Last Modified: Tue, 06 Oct 2026 01:43:58 GMT  
		Size: 185.0 MB (185024568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b12b0cc8d8aca3ca8a4cfa4cc65f293af5ba4cc5a73fe9423164ec0de31d8019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372e0a3d181c5d739baa326fa4af48e7b18043ed35bbc103befa6d55b7ddee15`

```dockerfile
```

-	Layers:
	-	`sha256:258930a9fd354672c828859a2387c441b24bc7a69394ecc92d5c9ac71fa0ba9b`  
		Last Modified: Tue, 06 Oct 2026 01:43:54 GMT  
		Size: 9.4 KB (9405 bytes)  
		MIME: application/vnd.in-toto+json
