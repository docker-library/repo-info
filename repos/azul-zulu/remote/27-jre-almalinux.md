## `azul-zulu:27-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:99ea67cf05dfcf24a84575c6732ff12b599dc77290f41ca2d864ed303a85c237
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1b562a372ec93608258c82acbb582019148feb29017e1bfea5c994a41713f185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159942535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e7af9e0f573b004d00e581d1701f9b453bb98f3d1a45a1c101c9526001abd0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:10:12 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:12 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:12 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a3001a6047e71c22501c8428f22e938c74bcf43d9261f1e49d8e7f4510564e`  
		Last Modified: Tue, 03 Nov 2026 00:10:26 GMT  
		Size: 90.8 MB (90843260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4e699f87942a773232e38a68b3dac84040f281dde81dee5194705a82b37bab06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123e5a44bc52e86d280107ae06416166af9cc262c835db31a329d6e233e47730`

```dockerfile
```

-	Layers:
	-	`sha256:f0c26256e09f21c7f793a17174b44920f4e1fce6cd491d78b0d6be82add9c7be`  
		Last Modified: Tue, 03 Nov 2026 00:10:24 GMT  
		Size: 9.2 KB (9154 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:b4a61d4354e20ab7fbdfaf3a388816491c72054fa651e0565f1d997ac32beb1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158403795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a343f6d74b8970d83a381a5e517cf3f303fe07c072851cb90492dbaddb4d5a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:10:38 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:10:38 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:10:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jre-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:10:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 03 Nov 2026 00:10:38 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a824f2afb8ad85bd896dfe25c2974f522c98d8bf0d1c17515c05cd2180afb186`  
		Last Modified: Tue, 03 Nov 2026 00:10:52 GMT  
		Size: 90.7 MB (90737284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8189d3b8f8280a55be03a08fb4a978a609e485557d911776cf26893d8a318789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69ff619d215310cda9bd281293a36436237059315bf7f8c6580d6c6a29108d5`

```dockerfile
```

-	Layers:
	-	`sha256:02506b4220f196f30778f11c418cb390321222966327a77f0e1bf0f583f7ab70`  
		Last Modified: Tue, 03 Nov 2026 00:10:50 GMT  
		Size: 9.2 KB (9246 bytes)  
		MIME: application/vnd.in-toto+json
