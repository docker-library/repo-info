## `nim:latest`

```console
$ docker pull nim@sha256:a7de6910e340ad15b1e2d42723b22547ae919e08e288492fd85123837cd87510
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:latest` - linux; amd64

```console
$ docker pull nim@sha256:f0d3363ceea5be44e778ef9eb3d7cd9a5a422c3393a124043ce6bb0c4d10734d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192721375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f58b8614362ddf179a3435d05a269c85457c50f7fa0f0a991963f8bebcfc6406`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:28:34 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:28:34 GMT
ENV NIM_VERSION=2.4.0
# Mon, 02 Nov 2026 17:28:34 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:28:34 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:28:34 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:28:37 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:28:37 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:28:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02b82a5f803ded41993bb3f39218b844bff1f8e287b0ccc07c0e27d1d05f797`  
		Last Modified: Mon, 02 Nov 2026 17:28:54 GMT  
		Size: 119.6 MB (119553327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184a79c5bd42bc95c86ee14404f28fd69ecf250f6225db9336a0eb24927430ae`  
		Last Modified: Mon, 02 Nov 2026 17:28:53 GMT  
		Size: 44.9 MB (44920446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13368fd79ef971ca541c0c0069d684bb57a9d2041546eb8f7e4a35513cfa2a8`  
		Last Modified: Mon, 02 Nov 2026 17:28:51 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:ccc65cf8ff91fa55c06f2e813d730ffe1f350b9a80b994e6e9defca3c352ba04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68805ba9fbaab05563f3d00e01e884c836809e39feab87ad4c827c54c90dbaf4`

```dockerfile
```

-	Layers:
	-	`sha256:eb55ce0ca65d2754fa78bf9eca61b86cfff8563e99e027c11214842622313b85`  
		Last Modified: Mon, 02 Nov 2026 17:28:51 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:latest` - linux; 386

```console
$ docker pull nim@sha256:80a28251affa1f9a9822833e954f49d961fc79320b63df8d05171b63be001e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196797334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0c3febcdb62acb0a67df5bf087ebf8e6dee5f49c1935a7e7402f8b996a6866`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:11:29 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:11:29 GMT
ENV NIM_VERSION=2.4.0
# Mon, 02 Nov 2026 17:11:29 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:11:29 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:11:29 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:11:33 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x64.tar.xz'; sha256='23c1c83d9031c498a2b3ad0bce153b8905710d04eb5922cf8ebd8f9d12125743' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-4-14991af742d0833503741fd9a0918133d1bcf8a4/nim-2.4.0-linux_x32.tar.xz'; sha256='525ff8b47fa9b1d7960434b5bfb8e828ceb6d4a0eda222a0de490b78c8b2ae2c' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.4.0";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:11:33 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:11:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8268d978265dc07d9054d3d23c581ec1e6c2d82b134331d09069a923d04dc48a`  
		Last Modified: Wed, 28 Oct 2026 00:10:24 GMT  
		Size: 29.2 MB (29238779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed02491d6cafc09336810f0e3e29a0aec9acb0cb73e2fbf7e3c8ca5ea2330a1c`  
		Last Modified: Mon, 02 Nov 2026 17:11:53 GMT  
		Size: 118.6 MB (118555903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9156dcc05ec6c4106a629913b119152344b71b7c361b62a92396932ea0ddbb`  
		Last Modified: Mon, 02 Nov 2026 17:11:51 GMT  
		Size: 49.0 MB (49002487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5268da7a3f6138625c760cf3df67ecc14b10d8579ac5ab12542262c3f8ed91b2`  
		Last Modified: Mon, 02 Nov 2026 17:11:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:latest` - unknown; unknown

```console
$ docker pull nim@sha256:531dc2ac5504a678a3ab75fc3937c2bc3d732918ba59d8027b77ba0d63733085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 KB (13171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899d5f766da823fe0449b3915dd8fadee7b770322221257c91e067c25daffeb`

```dockerfile
```

-	Layers:
	-	`sha256:866e4cc20088603a9bf288b6ba9b5e6324d7cc7ead2ad12345ecac831eebab67`  
		Last Modified: Mon, 02 Nov 2026 17:11:49 GMT  
		Size: 13.2 KB (13171 bytes)  
		MIME: application/vnd.in-toto+json
