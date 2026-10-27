## `swift:slim`

```console
$ docker pull swift@sha256:e5e6190e269f897172cdca23c4f102a4872caf412f578b13e12941986ec2e42e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `swift:slim` - linux; amd64

```console
$ docker pull swift@sha256:28b5bebfadd246d2415e8060d3b518eae23e2512f655c8aab629e2836900f6e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102901380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b2ebe7240d4cf404680b820d28786215b19f6b865133ea1936718958c265bbd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:41:18 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 26 Oct 2026 23:41:18 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 26 Oct 2026 23:41:18 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2-16     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:41:18 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 26 Oct 2026 23:41:18 GMT
ARG SWIFT_PLATFORM=ubuntu26.04
# Mon, 26 Oct 2026 23:41:18 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Mon, 26 Oct 2026 23:41:18 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Mon, 26 Oct 2026 23:41:18 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 26 Oct 2026 23:41:18 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu26.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 26 Oct 2026 23:41:48 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu26.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg libarchive-tools && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && bsdtar -xzf swift.tar.gz -C / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg libarchive-tools # buildkit
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e08b0a7261b9341d863925abefa95fb17fa3474417a8ba0dfa512f4f7becd0`  
		Last Modified: Mon, 26 Oct 2026 23:42:05 GMT  
		Size: 7.6 MB (7631407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7c42f9909b49be5362e8e06a5066a8602dc1ba2ef6c4df32317acf3358dda3`  
		Last Modified: Mon, 26 Oct 2026 23:42:06 GMT  
		Size: 53.1 MB (53129661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:slim` - unknown; unknown

```console
$ docker pull swift@sha256:96049756c73db3b7819626372f24b2994aa27421b561986ea12bdc1e69d29d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4681871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9265a87b6226e93d91d20cc71a4b4703a102bf3acdc6a251de5ef58cd4d9a09e`

```dockerfile
```

-	Layers:
	-	`sha256:4d7b318b18f47d65cdb9bd758233b5b3bc1dc4bbf11db02c00222dd9ad8d1f34`  
		Last Modified: Mon, 26 Oct 2026 23:42:05 GMT  
		Size: 4.7 MB (4666281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:404d1d7f1a661438a1785cf693c97ae433c4d624ecde5f446c0e807fde2323f5`  
		Last Modified: Mon, 26 Oct 2026 23:42:04 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.in-toto+json

### `swift:slim` - linux; arm64 variant v8

```console
$ docker pull swift@sha256:d3544ef4026de6529384dc9d8265287a7a02fdb3bd47f17afacd77f4bdb733ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (101017608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65f1795054bbcc9f46eb9ee901f5efeaef6823404751b2c15d3ce6b666bea11`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:45:36 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@forums.swift.org>
# Mon, 26 Oct 2026 23:45:36 GMT
LABEL description=Docker Container for the Swift programming language
# Mon, 26 Oct 2026 23:45:36 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libcurl4     libxml2-16     tzdata     && rm -r /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:45:36 GMT
ARG SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F
# Mon, 26 Oct 2026 23:45:36 GMT
ARG SWIFT_PLATFORM=ubuntu26.04
# Mon, 26 Oct 2026 23:45:36 GMT
ARG SWIFT_BRANCH=swift-6.4.1-release
# Mon, 26 Oct 2026 23:45:36 GMT
ARG SWIFT_VERSION=swift-6.4.1-RELEASE
# Mon, 26 Oct 2026 23:45:36 GMT
ARG SWIFT_WEBROOT=https://download.swift.org
# Mon, 26 Oct 2026 23:45:36 GMT
ENV SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu26.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
# Mon, 26 Oct 2026 23:46:04 GMT
# ARGS: SWIFT_SIGNING_KEY=52BB7E3DE28A71BE22EC05FFEF80A866B47A981F SWIFT_PLATFORM=ubuntu26.04 SWIFT_BRANCH=swift-6.4.1-release SWIFT_VERSION=swift-6.4.1-RELEASE SWIFT_WEBROOT=https://download.swift.org
RUN set -e;     ARCH_NAME="$(dpkg --print-architecture)";     url=;     case "${ARCH_NAME##*-}" in         'amd64')             OS_ARCH_SUFFIX='';             ;;         'arm64')             OS_ARCH_SUFFIX='-aarch64';             ;;         *) echo >&2 "error: unsupported architecture: '$ARCH_NAME'"; exit 1 ;;     esac;     SWIFT_WEBDIR="$SWIFT_WEBROOT/$SWIFT_BRANCH/$(echo $SWIFT_PLATFORM | tr -d .)$OS_ARCH_SUFFIX"     && SWIFT_BIN_URL="$SWIFT_WEBDIR/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX.tar.gz"     && SWIFT_SIG_URL="$SWIFT_BIN_URL.sig"     && export DEBIAN_FRONTEND=noninteractive     && apt-get -q update && apt-get -q install -y curl gnupg libarchive-tools && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && curl -fsSL "$SWIFT_BIN_URL" -o swift.tar.gz "$SWIFT_SIG_URL" -o swift.tar.gz.sig     && gpg --batch --quiet --keyserver keyserver.ubuntu.com --recv-keys "$SWIFT_SIGNING_KEY"     && gpg --batch --verify swift.tar.gz.sig swift.tar.gz     && bsdtar -xzf swift.tar.gz -C / --strip-components=1         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/lib/swift/linux         $SWIFT_VERSION-$SWIFT_PLATFORM$OS_ARCH_SUFFIX/usr/libexec/swift/linux     && chmod -R o+r /usr/lib/swift /usr/libexec/swift     && rm -rf "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && apt-get purge --auto-remove -y curl gnupg libarchive-tools # buildkit
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141c497ebcbbda96851416721e3ac275827d7696c7070198282344cb85c8491c`  
		Last Modified: Mon, 26 Oct 2026 23:46:19 GMT  
		Size: 7.5 MB (7522667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d5c2b9c7b72c31152a064422782f0f4f6cbd0ea84dce014329ebf19302e977`  
		Last Modified: Mon, 26 Oct 2026 23:46:20 GMT  
		Size: 52.4 MB (52372245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `swift:slim` - unknown; unknown

```console
$ docker pull swift@sha256:dd7ca0859352b5693a483751edf3fff4a8850503a17bbdeb3aa9d4da9b82105c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4682320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef8dc5341cadd6c928505378d92c90259bb325e6a5307a5314ada8e992d97c1`

```dockerfile
```

-	Layers:
	-	`sha256:b9e06ac6f00a998249589f2601b484e0c1f8a8f1dd7d2ff792da50ed0a4dba11`  
		Last Modified: Mon, 26 Oct 2026 23:46:19 GMT  
		Size: 4.7 MB (4666587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf94dd74c88e4404495f6bc1bde7450bb081a883fb4984cdbf2b0fc57d0c0983`  
		Last Modified: Mon, 26 Oct 2026 23:46:18 GMT  
		Size: 15.7 KB (15733 bytes)  
		MIME: application/vnd.in-toto+json
