<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nim`

-	[`nim:2`](#nim2)
-	[`nim:2.2`](#nim22)
-	[`nim:2.2.14`](#nim2214)
-	[`nim:2.4`](#nim24)
-	[`nim:2.4.0`](#nim240)
-	[`nim:latest`](#nimlatest)

## `nim:2`

```console
$ docker pull nim@sha256:a7de6910e340ad15b1e2d42723b22547ae919e08e288492fd85123837cd87510
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2` - linux; amd64

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

### `nim:2` - unknown; unknown

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

### `nim:2` - linux; 386

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

### `nim:2` - unknown; unknown

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

## `nim:2.2`

```console
$ docker pull nim@sha256:c6a140eb730fa1d33c10ab9332b89a5f7fb651f8a912cbc4e321de22de24f2ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2.2` - linux; amd64

```console
$ docker pull nim@sha256:6651c75e9623905400f1aad4bd1661f91a8660c952f69a6282a604e0233ffafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179653884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da97961efc47c6bf6637e0398e498a6c8b97cae1e108ae1788e843e73104c2d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:28:34 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:28:34 GMT
ENV NIM_VERSION=2.2.14
# Mon, 02 Nov 2026 17:28:34 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:28:34 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:28:34 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:29:04 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:29:04 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:29:04 GMT
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
	-	`sha256:448485b9524fad6271f8ecbaf6dfdc281d61a0aecf5570d8de6adc0bf80309ba`  
		Last Modified: Mon, 02 Nov 2026 17:29:12 GMT  
		Size: 31.9 MB (31852956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3af1be080c2464865ecc470e99148079b6e487b82b9fbe3665005914428e429`  
		Last Modified: Mon, 02 Nov 2026 17:29:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:8629f74404e3ed80dfd621e430e00ad6dcf36c85f6912d8a1c355aac741ba192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6ff597332c0b81cd31d8d1810ff586b6b137944f55843a3ed4eac9eb0a6553`

```dockerfile
```

-	Layers:
	-	`sha256:56f71f043d7ac4ef647885cd896b67b8bca570cba2d176d7a73f698df455e6c0`  
		Last Modified: Mon, 02 Nov 2026 17:29:11 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm variant v7

```console
$ docker pull nim@sha256:04faed53816df3527359d962ffff8957f6c72987c80861bd2396a27913d80e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145384419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937b66cbe104606e00d4b4b9a8ffc407503dfb406480ac2d47eca944b4b13fb9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:14:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:14:33 GMT
ENV NIM_VERSION=2.2.14
# Mon, 02 Nov 2026 17:14:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:14:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:14:33 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:14:35 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:14:35 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:14:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772401a6bc792f62a89d94f41b9ac35ae8a20454e669c36a6aa6e37a477de077`  
		Last Modified: Mon, 02 Nov 2026 17:14:49 GMT  
		Size: 89.0 MB (89010560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244ad4111f38bde6aea901293bb15d7ecce4cc87cd4abeb1ceb824441609ece9`  
		Last Modified: Mon, 02 Nov 2026 17:14:48 GMT  
		Size: 32.4 MB (32412727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6c7a660e21adb2703d8cd88f5753795cf827e5112cf2c2c3e70a90e7ddadb`  
		Last Modified: Mon, 02 Nov 2026 17:14:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:7cab0e0f173032fb7a33bdaf5ddc75025846ecf15ca86506f1f8518cd1fa40db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7022f9f4ca18186a27dfdee1ea24fe3b3a7be88b236a77aa8935777dca8e00a1`

```dockerfile
```

-	Layers:
	-	`sha256:ae03cc7a7fce49ca7d04e1144ba32cd0af5ab9c8d2299b805de7aed361732269`  
		Last Modified: Mon, 02 Nov 2026 17:14:46 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:b21c92aa4a6857c7cbc2ec386648a5f172357fb27fab22b9454697b8d90fa4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172987858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa79cb08407a3fc5909c23e323b659d1b9435b1c5b68b7559ec44198dfd0464a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:47:24 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:47:24 GMT
ENV NIM_VERSION=2.2.14
# Mon, 02 Nov 2026 17:47:24 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:47:24 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:47:24 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:47:26 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:47:27 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:47:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d90d982df962f189eb9edc27e631b3dea9faa1fa09fc91c683004c44820056`  
		Last Modified: Mon, 02 Nov 2026 17:47:44 GMT  
		Size: 113.6 MB (113639244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f6e718d5a756a9494e21581f50623075f69402e431b5fd3cbda2a7bd8f387a`  
		Last Modified: Mon, 02 Nov 2026 17:47:42 GMT  
		Size: 31.2 MB (31210498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c9a1e9a136b2360eeec451f168acdc68fc73ce7e8a9b7d535f415df05083dd`  
		Last Modified: Mon, 02 Nov 2026 17:47:41 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:7ad2eee44b05ba5c7fc4467f66b17a928b26fde23054762ffd983f05f519655a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa971bfb8d21a7fde34ce777750580985eb03cfe4e32c75eeb8e6562ff8f60bf`

```dockerfile
```

-	Layers:
	-	`sha256:5aa93cadd29b3252e49cecb0e5b546f4c8c486e4ed7ea3463a8cb7a72edc5d1a`  
		Last Modified: Mon, 02 Nov 2026 17:47:41 GMT  
		Size: 14.0 KB (13968 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2` - linux; 386

```console
$ docker pull nim@sha256:3c61651b824dbd2dca6dc727ab80fbb99b36bbb7b6bfc8a538cb76e3d3620a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181389646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804bf09f92535f94f532674de3144295c0d03ae23090882e9599c92c158156fe`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:11:29 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:11:29 GMT
ENV NIM_VERSION=2.2.14
# Mon, 02 Nov 2026 17:11:29 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:11:29 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:11:29 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:12:02 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:12:02 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:12:02 GMT
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
	-	`sha256:32bee461a7ce01978786c320faee702773d4318798a4f89ce3a355ca58c7eb32`  
		Last Modified: Mon, 02 Nov 2026 17:12:11 GMT  
		Size: 33.6 MB (33594800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395c88a4c0f8fd17821005b87e60e4117348fc8ef27d581f2e33ae44415f465e`  
		Last Modified: Mon, 02 Nov 2026 17:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2` - unknown; unknown

```console
$ docker pull nim@sha256:737563095106f37d16ddcdeb43492a7fe48c594b24046321e196b06e480d7ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250a1ac551f141d2c320e604b5b38fd6ed39ecbfed1b786d1607e18de398e8ed`

```dockerfile
```

-	Layers:
	-	`sha256:b0f8e22a720105ef2124d51b97b74d57a24389d5efeccb97b9daf365cf7b33ff`  
		Last Modified: Mon, 02 Nov 2026 17:12:10 GMT  
		Size: 13.8 KB (13848 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.2.14`

```console
$ docker pull nim@sha256:c6a140eb730fa1d33c10ab9332b89a5f7fb651f8a912cbc4e321de22de24f2ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2.2.14` - linux; amd64

```console
$ docker pull nim@sha256:6651c75e9623905400f1aad4bd1661f91a8660c952f69a6282a604e0233ffafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.7 MB (179653884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da97961efc47c6bf6637e0398e498a6c8b97cae1e108ae1788e843e73104c2d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:28:34 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:28:34 GMT
ENV NIM_VERSION=2.2.14
# Mon, 02 Nov 2026 17:28:34 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:28:34 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:28:34 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:29:04 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:29:04 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:29:04 GMT
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
	-	`sha256:448485b9524fad6271f8ecbaf6dfdc281d61a0aecf5570d8de6adc0bf80309ba`  
		Last Modified: Mon, 02 Nov 2026 17:29:12 GMT  
		Size: 31.9 MB (31852956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3af1be080c2464865ecc470e99148079b6e487b82b9fbe3665005914428e429`  
		Last Modified: Mon, 02 Nov 2026 17:29:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.14` - unknown; unknown

```console
$ docker pull nim@sha256:8629f74404e3ed80dfd621e430e00ad6dcf36c85f6912d8a1c355aac741ba192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6ff597332c0b81cd31d8d1810ff586b6b137944f55843a3ed4eac9eb0a6553`

```dockerfile
```

-	Layers:
	-	`sha256:56f71f043d7ac4ef647885cd896b67b8bca570cba2d176d7a73f698df455e6c0`  
		Last Modified: Mon, 02 Nov 2026 17:29:11 GMT  
		Size: 13.9 KB (13874 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.14` - linux; arm variant v7

```console
$ docker pull nim@sha256:04faed53816df3527359d962ffff8957f6c72987c80861bd2396a27913d80e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145384419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937b66cbe104606e00d4b4b9a8ffc407503dfb406480ac2d47eca944b4b13fb9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:14:32 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:14:33 GMT
ENV NIM_VERSION=2.2.14
# Mon, 02 Nov 2026 17:14:33 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:14:33 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:14:33 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:14:35 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:14:35 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:14:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772401a6bc792f62a89d94f41b9ac35ae8a20454e669c36a6aa6e37a477de077`  
		Last Modified: Mon, 02 Nov 2026 17:14:49 GMT  
		Size: 89.0 MB (89010560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244ad4111f38bde6aea901293bb15d7ecce4cc87cd4abeb1ceb824441609ece9`  
		Last Modified: Mon, 02 Nov 2026 17:14:48 GMT  
		Size: 32.4 MB (32412727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6c7a660e21adb2703d8cd88f5753795cf827e5112cf2c2c3e70a90e7ddadb`  
		Last Modified: Mon, 02 Nov 2026 17:14:46 GMT  
		Size: 134.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.14` - unknown; unknown

```console
$ docker pull nim@sha256:7cab0e0f173032fb7a33bdaf5ddc75025846ecf15ca86506f1f8518cd1fa40db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 KB (13947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7022f9f4ca18186a27dfdee1ea24fe3b3a7be88b236a77aa8935777dca8e00a1`

```dockerfile
```

-	Layers:
	-	`sha256:ae03cc7a7fce49ca7d04e1144ba32cd0af5ab9c8d2299b805de7aed361732269`  
		Last Modified: Mon, 02 Nov 2026 17:14:46 GMT  
		Size: 13.9 KB (13947 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.14` - linux; arm64 variant v8

```console
$ docker pull nim@sha256:b21c92aa4a6857c7cbc2ec386648a5f172357fb27fab22b9454697b8d90fa4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (172987858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa79cb08407a3fc5909c23e323b659d1b9435b1c5b68b7559ec44198dfd0464a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:47:24 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:47:24 GMT
ENV NIM_VERSION=2.2.14
# Mon, 02 Nov 2026 17:47:24 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:47:24 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:47:24 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:47:26 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:47:27 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:47:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d90d982df962f189eb9edc27e631b3dea9faa1fa09fc91c683004c44820056`  
		Last Modified: Mon, 02 Nov 2026 17:47:44 GMT  
		Size: 113.6 MB (113639244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f6e718d5a756a9494e21581f50623075f69402e431b5fd3cbda2a7bd8f387a`  
		Last Modified: Mon, 02 Nov 2026 17:47:42 GMT  
		Size: 31.2 MB (31210498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c9a1e9a136b2360eeec451f168acdc68fc73ce7e8a9b7d535f415df05083dd`  
		Last Modified: Mon, 02 Nov 2026 17:47:41 GMT  
		Size: 133.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.14` - unknown; unknown

```console
$ docker pull nim@sha256:7ad2eee44b05ba5c7fc4467f66b17a928b26fde23054762ffd983f05f519655a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 KB (13968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa971bfb8d21a7fde34ce777750580985eb03cfe4e32c75eeb8e6562ff8f60bf`

```dockerfile
```

-	Layers:
	-	`sha256:5aa93cadd29b3252e49cecb0e5b546f4c8c486e4ed7ea3463a8cb7a72edc5d1a`  
		Last Modified: Mon, 02 Nov 2026 17:47:41 GMT  
		Size: 14.0 KB (13968 bytes)  
		MIME: application/vnd.in-toto+json

### `nim:2.2.14` - linux; 386

```console
$ docker pull nim@sha256:3c61651b824dbd2dca6dc727ab80fbb99b36bbb7b6bfc8a538cb76e3d3620a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.4 MB (181389646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804bf09f92535f94f532674de3144295c0d03ae23090882e9599c92c158156fe`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793059200'
# Mon, 02 Nov 2026 17:11:29 GMT
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     gcc     g++     libc6-dev     git     ca-certificates     openssl     curl     xz-utils     libpcre3-dev libpcre3   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 02 Nov 2026 17:11:29 GMT
ENV NIM_VERSION=2.2.14
# Mon, 02 Nov 2026 17:11:29 GMT
ENV PATH=/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:11:29 GMT
ENV PATH=/root/.nimble/bin:/opt/nim/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 17:11:29 GMT
WORKDIR /tmp
# Mon, 02 Nov 2026 17:12:02 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch}" in     amd64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x64.tar.xz'; sha256='c1cbd106f9ff0c856e38abebd0ac9503c23aa3393174fcfc3307ee3b2bfe909a' ;;     arm64) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_arm64.tar.xz'; sha256='74c03927d88f935a9acf18576d599eceb3d6f6bd1f7a4d267675c4b6007b901f' ;;     i386) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_x32.tar.xz'; sha256='0d91cd7e71db216ef880c309450f2878e5ac10478b014ab63e00f063e93dcc57' ;;     armhf) url='https://github.com/nim-lang/nightlies/releases/download/2026-10-28-version-2-2-c5c2337564e347bb8252a510c79a74817a670231/nim-2.2.14-linux_armv7l.tar.xz'; sha256='3852e6b15e0182a3643987b59efe1bb4cf7206ab7a247b9670654304492bd7c2' ;;     *) echo >&2 "error: unsupported architecture: ${dpkgArch}"; exit 1 ;;   esac;   curl --fail --location "$url" --output nim.tar.xz;   echo "$sha256 *nim.tar.xz" | sha256sum --check --strict -;   mkdir -p /opt/nim;   tar -xJf nim.tar.xz --strip-components=1 --directory /opt/nim "nim-2.2.14";   rm nim.tar.xz;   nim --version # buildkit
# Mon, 02 Nov 2026 17:12:02 GMT
WORKDIR /usr/src/app
# Mon, 02 Nov 2026 17:12:02 GMT
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
	-	`sha256:32bee461a7ce01978786c320faee702773d4318798a4f89ce3a355ca58c7eb32`  
		Last Modified: Mon, 02 Nov 2026 17:12:11 GMT  
		Size: 33.6 MB (33594800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395c88a4c0f8fd17821005b87e60e4117348fc8ef27d581f2e33ae44415f465e`  
		Last Modified: Mon, 02 Nov 2026 17:12:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nim:2.2.14` - unknown; unknown

```console
$ docker pull nim@sha256:737563095106f37d16ddcdeb43492a7fe48c594b24046321e196b06e480d7ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 KB (13848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250a1ac551f141d2c320e604b5b38fd6ed39ecbfed1b786d1607e18de398e8ed`

```dockerfile
```

-	Layers:
	-	`sha256:b0f8e22a720105ef2124d51b97b74d57a24389d5efeccb97b9daf365cf7b33ff`  
		Last Modified: Mon, 02 Nov 2026 17:12:10 GMT  
		Size: 13.8 KB (13848 bytes)  
		MIME: application/vnd.in-toto+json

## `nim:2.4`

```console
$ docker pull nim@sha256:a7de6910e340ad15b1e2d42723b22547ae919e08e288492fd85123837cd87510
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2.4` - linux; amd64

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

### `nim:2.4` - unknown; unknown

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

### `nim:2.4` - linux; 386

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

### `nim:2.4` - unknown; unknown

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

## `nim:2.4.0`

```console
$ docker pull nim@sha256:a7de6910e340ad15b1e2d42723b22547ae919e08e288492fd85123837cd87510
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `nim:2.4.0` - linux; amd64

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

### `nim:2.4.0` - unknown; unknown

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

### `nim:2.4.0` - linux; 386

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

### `nim:2.4.0` - unknown; unknown

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
