## `azul-zulu:21-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:92cba877377a60c190543c3d386b0d62eda8c23e5ba113dab53424354a85ff30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:587e00e2af51896d7de50390126eb7c392124ff60ba743f1d80585776eef8293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145443077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c19e7ffcb55df5b85d69a08f95d480816832d0f66ae10bc7ae0ccc84a8849b6d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:08:52 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:52 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:08:52 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511757b73fe4bc707fdcbd8f20684404d8f4f3e63b42dc21f4cebb18124e9ad9`  
		Last Modified: Tue, 03 Nov 2026 00:09:05 GMT  
		Size: 76.3 MB (76343802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:72627bfb8ff07017b8ca80fbaae647d3094923e67e974137492f07a5cf5e942a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eeae17e93ecfe71fc3908421b0ba8b84c0aca7cb2df2f0bc3b01af60b09b18`

```dockerfile
```

-	Layers:
	-	`sha256:f352da6366d2a818323123ab713ead154ddecb96a68331472e3f5f69e2cad808`  
		Last Modified: Tue, 03 Nov 2026 00:09:03 GMT  
		Size: 9.2 KB (9157 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7f4e208f740a5523549772c1db62fea1968705a73406f38bf29c67b2c7ecabb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143658466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3490a989685e645400f65db3f02e6568ccfcb1f044566140fabc5c85b4ee497a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:09:06 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:06 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:09:06 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c066a6da7b0936f2b6facb222d85c9c7b952f6f65e16ce0db72aa09cf23f1ac8`  
		Last Modified: Tue, 03 Nov 2026 00:09:19 GMT  
		Size: 76.0 MB (75991955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:96a0c5ef483dde5c448a1e65c5cb8a01d5ca3a5abb26595f0d16de7c1317da7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4ab5b3a13e9e1aea7df48cbc2cc5da4aaadd269c163e709877915aa52a8752`

```dockerfile
```

-	Layers:
	-	`sha256:5628cc28bd91d5e3ab8458ef2746dac71b7bd66a5377c695600e40c77a91e738`  
		Last Modified: Tue, 03 Nov 2026 00:09:17 GMT  
		Size: 9.2 KB (9248 bytes)  
		MIME: application/vnd.in-toto+json
